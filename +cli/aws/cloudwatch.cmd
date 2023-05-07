echo https://docs.aws.amazon.com/cli/latest/reference/cloudwatch/index.html

aws cloudwatch list-metrics --profile temp_test

aws cloudwatch list-metrics --namespace "AWS/SNS" --profile temp_test

aws cloudwatch list-metrics --namespace "AWS/Lambda" --profile temp_test


echo https://awscli.amazonaws.com/v2/documentation/api/latest/reference/cloudwatch/describe-alarms.html

aws cloudwatch describe-alarms