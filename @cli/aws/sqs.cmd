echo https://docs.aws.amazon.com/cli/latest/reference/sqs/
echo https://advancedweb.hu/how-to-use-the-aws-sqs-cli-to-receive-messages/
echo https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-api-permissions-reference.html
echo https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-basic-examples-of-sqs-policies.html
echo https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sqs_queue

echo QUEUE_URL=$(aws sqs create-queue --queue-name test_queue | jq -r '.QueueUrl')
echo aws sqs delete-queue --queue-url $QUEUE_URL
echo aws sqs send-message --queue-url $QUEUE_URL --message-body "hi"
echo aws sqs send-message --queue-url $QUEUE_URL --message-body '{"key": ["value1", "value2"]}'
echo aws sqs receive-message --queue-url $QUEUE_URL
echo while sleep 1; do aws sqs receive-message --queue-url $QUEUE_URL; done