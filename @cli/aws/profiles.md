[Named profiles - AWS Command Line Interface](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-profiles.html)

```
aws ec2 describe-instances --profile user1
aws s3 ls --profile produser
```

OR use env variable:
AWS_PROFILE=user1