echo https://awscli.amazonaws.com/v2/documentation/api/latest/reference/ec2-instance-connect/send-ssh-public-key.html

echo The key remains for 60 seconds.

aws ec2-instance-connect send-ssh-public-key \
    --instance-id i-1234567890abcdef0 \
    --instance-os-user ec2-user \
    --availability-zone us-east-2b \
    --ssh-public-key file://path/my-rsa-key.pub


echo {
echo     "RequestId": "UUID",
echo     "Success": true
echo }