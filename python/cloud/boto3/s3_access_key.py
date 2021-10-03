import boto3

# https://stackoverflow.com/questions/45981950/how-to-specify-credentials-when-connecting-to-boto3-s3
ACCESS_KEY = ""
SECRET_KEY = ""

client = boto3.client('s3',
    aws_access_key_id=ACCESS_KEY,
    aws_secret_access_key=SECRET_KEY,
    region_name="us-west-2")
for bucket in client.list_buckets():
    print(bucket.name)