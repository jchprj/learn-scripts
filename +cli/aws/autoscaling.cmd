
echo https://docs.aws.amazon.com/cli/latest/reference/autoscaling/describe-auto-scaling-groups.html
aws autoscaling describe-auto-scaling-groups --auto-scaling-group-name temp_test

echo https://docs.aws.amazon.com/cli/latest/reference/autoscaling/update-auto-scaling-group.html
echo aws autoscaling update-auto-scaling-group --auto-scaling-group-name temp_test --min-size 1 --max-size 2 --desired-capacity 1