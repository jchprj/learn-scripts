# https://gist.github.com/dastergon/b4994c605f76d528d0c4
# https://boto3.amazonaws.com/v1/documentation/api/latest/guide/migrationec2.html

import boto3
ec2 = boto3.resource('ec2') # region_name=
running_instances = ec2.instances.filter(
    Filters = [
        {
            'Name': 'instance-state-name',
            'Values': ['running']
        }
    ]
)

total = 0
for instance in running_instances:
    for tag in instance.tags:
        if 'Name'in tag['Key']:
            name = tag['Value']
    print(
        {
            'Name': name,
            'resource-id': instance.id,
            'Type': instance.instance_type,
            'State': instance.state['Name'],
            'Private IP': instance.private_ip_address,
            'Public IP': instance.public_ip_address,
            'Launch Time': instance.launch_time
        }
    )
    total += 1

print(f"Total {total} instances")


# https://boto3.amazonaws.com/v1/documentation/api/latest/reference/services/ec2/client/describe_tags.html
# https://stackoverflow.com/questions/48072398/get-list-of-ec2-instances-with-specific-tag-and-value-in-boto3
client = boto3.client('ec2')
response = client.describe_tags(
    Filters=[
        {
            'Name': 'resource-id',
            'Values': [
                list(running_instances)[0].id,    # 'i-1234567890abcdef8',
            ],
        },
    ],
)

print(response)
