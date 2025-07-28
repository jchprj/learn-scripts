import boto3

# Create a session using your AWS credentials
session = boto3.Session()

# Create EC2 and AutoScaling resource objects
ec2_resource = session.resource('ec2')
autoscaling_client = session.client('autoscaling')

# Specify your Auto Scaling Group name
asg_name = ''

# Get the instance IDs of the instances in the ASG
response = autoscaling_client.describe_auto_scaling_groups(
    AutoScalingGroupNames=[asg_name]
)
instance_ids = [instance['InstanceId'] for instance in response['AutoScalingGroups'][0]['Instances']]

# Get the instances
instances = ec2_resource.instances.filter(InstanceIds=instance_ids)

# Sort the instances by launch time
sorted_instances = sorted(instances, key=lambda instance: instance.launch_time, reverse=True)

# Get the IP addresses of the latest 10 instances
ip_addresses = [instance.private_ip_address for instance in sorted_instances[:10]]

print(ip_addresses)