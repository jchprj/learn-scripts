echo https://docs.aws.amazon.com/cli/latest/reference/lambda/index.html
echo https://docs.aws.amazon.com/lambda/latest/dg/nodejs-handler.html

echo Returns a list of Lambda functions, with the version-specific configuration of each. Lambda returns up to 50 functions per call.
aws lambda list-functions --profile temp_test

aws lambda get-function --function-name my-function --profile temp_test



echo To invoke a Lambda function synchronously
aws lambda invoke --function-name my-function --payload '{ "name": "Bob" }' response.json --profile temp_test

echo To invoke a Lambda function asynchronously
aws lambda invoke --function-name my-function --invocation-type Event --payload '{ "name": "Bob" }' response.json --profile temp_test
