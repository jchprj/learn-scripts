import boto3

# https://boto3.amazonaws.com/v1/documentation/api/latest/reference/services/autoscaling/client/describe_auto_scaling_groups.html
client = boto3.client('autoscaling')
response = client.describe_auto_scaling_groups(
    AutoScalingGroupNames=[
        'my-auto-scaling-group',
    ],
)

print(response)