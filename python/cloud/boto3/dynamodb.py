# https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GettingStarted.Python.html
import boto3, os, json
from boto3.dynamodb.conditions import Key
# os.environ['AWS_DEFAULT_REGION'] = ''


dynamodb = boto3.resource('dynamodb')
table = dynamodb.Table('table')
response = table.query(
    KeyConditionExpression=Key('name').eq("abc")
)
print(response['Items'])


scan_kwargs = {
    'FilterExpression': Key('name').eq("abc"),
    'ProjectionExpression': "Attribute"
}

done = False
start_key = None
data = []
cnt = 1
while not done:
    if start_key:
        scan_kwargs['ExclusiveStartKey'] = start_key
    print(cnt, ": ", len(data))
    cnt = cnt + 1
    response = table.scan(**scan_kwargs)
    items = response.get('Items', [])
    if(len(items) > 0) :
        print(items)
    start_key = response.get('LastEvaluatedKey', None)
    done = start_key is None
print(data)
print(len(data))