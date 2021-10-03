import boto3

client = boto3.client('lambda')

# https://boto3.amazonaws.com/v1/documentation/api/latest/reference/services/lambda.html#Lambda.Client.invoke
response = client.invoke(
    FunctionName='test',
    Payload='{}',
    # Qualifier='1',
)

print(response)

# https://stackoverflow.com/questions/36784925/how-to-get-return-response-from-aws-lambda-function
data = response['Payload'].read()
print(data)