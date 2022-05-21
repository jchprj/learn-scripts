echo https://stackoverflow.com/questions/66874226/what-is-the-aws-command-to-verify-my-login-credentials-are-correct-aka-whoami-f
echo https://docs.aws.amazon.com/cli/latest/reference/sts/get-caller-identity.html

aws sts get-caller-identity

echo {
echo     "UserId": "AIDAAA12345ABCDEFABCD",
echo     "Account": "123456789012",
echo     "Arn": "arn:aws:iam::123456789012:user/james"
echo }