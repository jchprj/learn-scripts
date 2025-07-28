echo off
echo https://docs.aws.amazon.com/cli/latest/userguide/cli-services-ec2-instances.html#listing-instances
echo https://docs.aws.amazon.com/cli/latest/reference/ec2/describe-instances.html
echo Filter options: https://docs.aws.amazon.com/cli/latest/reference/ec2/describe-instances.html#options
echo https://awscli.amazonaws.com/v2/documentation/api/latest/reference/ec2/describe-subnets.html
echo https://docs.aws.amazon.com/cli/latest/reference/ec2/describe-vpcs.html


aws ec2 describe-instances

echo Filter instance by instance type. The following command filters the list to only your t2.micro instances and outputs only the InstanceId values for each match.
aws ec2 describe-instances --filters "Name=instance-type,Values=t2.micro" --query "Reservations[].Instances[].InstanceId"

echo Filter instance by Name tag
aws ec2 describe-instances --filters "Name=tag:Name,Values=MyInstance"

echo Filter instance by AMI image-id. 
aws ec2 describe-instances --filters "Name=image-id,Values=ami-x0123456,ami-y0123456,ami-z0123456"

echo Filter instance by private IPs and jq get AZ of those IPs
aws ec2 describe-instances --filters "Name=network-interface.addresses.private-ip-address,Values=10.0.0.0" | jq '.Reservations[].Instances[]|.Placement.AvailabilityZone'

echo https://serverfault.com/questions/966963/aws-cli-the-filter-condition-returns-all-the-running-instance-instead-of-those
aws ec2 describe-instances --filter "Name=tag:Name,Values=worker1" "Name=instance-state-name,Values=running"


echo Multiple filters https://stackoverflow.com/questions/66232494/how-do-i-specify-multiple-filters-to-aws-ec2-describe-vpc-peering-connections
aws ec2 describe-instances --filters "Name=tag:Name,Values=MyInstance" "Name=image-id,Values=ami-x0123456,ami-y0123456,ami-z0123456"

echo jq get private IP
aws ec2 describe-instances --filters "Name=tag:Name,Values=MyInstance"|jq ".Reservations[].Instances[].NetworkInterfaces[].PrivateIpAddress"

echo jq get private IP and state name
aws ec2 describe-instances --filters "Name=tag:Name,Values=MyInstance"|jq ".Reservations[].Instances[]|.NetworkInterfaces[].PrivateIpAddress,.State.Name"

echo jq get imageId and state name
aws ec2 describe-instances --filters "Name=tag:Name,Values=MyInstance"|jq ".Reservations[].Instances[]|.ImageId,.State.Name"

echo jq filter running instances and get imageId and state name
aws ec2 describe-instances --filters "Name=tag:Name,Values=MyInstance"|jq '.Reservations[].Instances[]|select(.State.Name=="running")|.ImageId,.State.Name'

echo jq filter Name tag and get tag value
aws ec2 describe-instances --filters "Name=tag:Name,Values=MyInstance"|jq '.Reservations[].Instances[]|.Tags[]|select(.Key=="Name")|.Value'






echo aws ec2 run-instances --image-id ami-xxxxxxxx --count 1 --instance-type t2.micro --key-name MyKeyPair --security-group-ids sg-903004f8 --subnet-id subnet-6e7f829e
echo aws ec2 terminate-instances --instance-ids i-5203422c



aws ec2 describe-subnets --filters "Name=vpc-id,Values=*" "Name=tag:Name,Values=*" "Name=availability-zone,Values=*"

aws ec2 describe-vpcs --filters "Name=tag:Name,Values=*"

