import boto3

# https://stackoverflow.com/questions/33378422/how-to-choose-an-aws-profile-when-using-boto3-to-connect-to-cloudfront
# dev = boto3.session.Session(profile_name='dev')
boto3.setup_default_session(profile_name='default')


s3 = boto3.resource('s3')
for bucket in s3.buckets.all():
    print(bucket.name)


# https://newbedev.com/retrieving-subfolders-names-in-s3-bucket-from-boto3

prefix = "DIR1/DIR2"
result = s3.list_objects(Bucket=bucket, Prefix=prefix, Delimiter='/')

# https://stackoverflow.com/questions/50100221/download-file-from-aws-s3-using-python
# s3.download_file('BUCKET_NAME','S3_FILE_PATH','LOCAL_FILE_PATH')