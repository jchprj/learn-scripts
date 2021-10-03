# https://stackoverflow.com/questions/57790588/lambda-python-to-query-ssm-parameter-store-value
# https://medium.com/@dorian599/serverless-aws-parameter-store-with-python-811e44c6d40

import boto3

client = boto3.client('ssm')

def lambda_handler(event, context):
    parameter = client.get_parameter(Name='/path/to/credential', WithDecryption=True)
    print(parameter)
    return parameter ['Parameter']['Value']