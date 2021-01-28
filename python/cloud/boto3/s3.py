import boto3

# https://stackoverflow.com/questions/33378422/how-to-choose-an-aws-profile-when-using-boto3-to-connect-to-cloudfront
# dev = boto3.session.Session(profile_name='dev')
boto3.setup_default_session(profile_name='default')


s3 = boto3.resource('s3')
for bucket in s3.buckets.all():
    print(bucket.name)