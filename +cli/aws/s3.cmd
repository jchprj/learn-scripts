echo off
echo https://docs.aws.amazon.com/cli/latest/userguide/cli-services-s3-commands.html

echo create bucket
aws s3 mb s3://bucket-name

echo list all buckets
aws s3 ls

aws s3 ls s3://bucket-name
aws s3 ls s3://bucket-name/example/

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