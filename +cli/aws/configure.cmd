echo https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html
echo https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html
echo ~/.aws/credentials
echo ~/.aws/config
aws configure list-profiles


aws configure --profile temp_test

aws s3 ls --profile temp_test



aws configure list --profile temp_test