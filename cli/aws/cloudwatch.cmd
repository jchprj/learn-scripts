echo https://docs.aws.amazon.com/cli/latest/reference/cloudwatch/index.html

aws cloudwatch list-metrics --profile temp_test

aws cloudwatch list-metrics --namespace "AWS/SNS" --profile temp_test

aws cloudwatch list-metrics --namespace "AWS/Lambda" --profile temp_test