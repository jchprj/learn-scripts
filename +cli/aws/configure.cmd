echo https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html
echo https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html
echo ~/.aws/credentials
echo ~/.aws/config
aws configure list-profiles


aws configure --profile temp_test

aws s3 ls --profile temp_test



aws configure list --profile temp_test

echo https://stackoverflow.com/questions/31331788/using-aws-cli-what-is-best-way-to-determine-the-current-region
echo aws configure get region --profile $PROFILE_NAME
aws configure get region