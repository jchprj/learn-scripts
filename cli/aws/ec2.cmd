echo off
echo https://docs.aws.amazon.com/cli/latest/userguide/cli-services-ec2-instances.html#listing-instances

aws ec2 describe-instances

echo The following command filters the list to only your t2.micro instances and outputs only the InstanceId values for each match.
aws ec2 describe-instances --filters "Name=instance-type,Values=t2.micro" --query "Reservations[].Instances[].InstanceId"

aws ec2 describe-instances --filters "Name=tag:Name,Values=MyInstance"

echo The following command lists your instances that were launched using any of the following AMIs: ami-x0123456, ami-y0123456, and ami-z0123456.
aws ec2 describe-instances --filters "Name=image-id,Values=ami-x0123456,ami-y0123456,ami-z0123456"


echo aws ec2 run-instances --image-id ami-xxxxxxxx --count 1 --instance-type t2.micro --key-name MyKeyPair --security-group-ids sg-903004f8 --subnet-id subnet-6e7f829e
echo aws ec2 terminate-instances --instance-ids i-5203422c