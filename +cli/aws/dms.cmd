echo https://docs.aws.amazon.com/cli/latest/reference/dms/

echo https://docs.aws.amazon.com/cli/latest/reference/dms/start-replication-task.html
aws dms start-replication-task --replication-task-arn arn:aws:dms:us-east-1:123456789012:task:K55IUCGBASJS5VHZJIINA45FII --start-replication-task-type reload-target


echo https://docs.aws.amazon.com/cli/latest/reference/dms/describe-replication-tasks.html
aws dms describe-replication-tasks