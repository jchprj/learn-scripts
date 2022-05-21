echo off
echo https://docs.aws.amazon.com/cli/latest/userguide/cli-services-s3-commands.html
echo https://awscli.amazonaws.com/v2/documentation/api/latest/reference/s3/ls.html

echo create bucket
aws s3 mb s3://bucket-name

echo Listing all user owned buckets
aws s3 ls

echo This can list contents that are from non user owned buckets if has permission
aws s3 ls s3://bucket-name
aws s3 ls s3://bucket-name/example/

echo Listing from an S3 access point
aws s3 ls s3://arn:aws:s3:us-west-2:123456789012:accesspoint/myaccesspoint/


echo delete bucket
echo aws s3 rb s3://bucket-name
echo aws s3 rb s3://bucket-name --force

echo delete objects
echo aws s3 rm s3://bucket-name/example/filename.txt --recursive
echo aws s3 rm s3://bucket-name/example --recursive

echo aws s3 mv s3://bucket-name/example s3://my-bucket/

echo aws s3 cp s3://bucket-name/example s3://my-bucket/
echo aws s3 cp filename.txt s3://bucket-name
echo aws s3 cp s3://bucket-name/filename.txt ./
echo cat "hello world" | aws s3 cp - s3://bucket-name/filename.txt
echo aws s3 cp s3://bucket-name/filename.txt -
echo aws s3 cp s3://bucket-name/pre - | bzip2 --best | aws s3 cp - s3://bucket-name/key.bz2

echo aws s3 sync