echo https://stackoverflow.com/questions/36813327/how-to-display-only-files-from-aws-s3-ls-command
echo without additional command like jq
aws s3api list-objects --bucket "bucket" --prefix "foo/" --query "Contents[].{Key: Key}" --output text


echo https://stackoverflow.com/questions/66177298/how-to-list-recent-files-in-aws-s3-bucket-with-aws-cli-or-python
aws s3api list-objects --bucket my-bucket --query 'sort_by(Contents, &LastModified)[-1].Key' --output text


echo combine the above, show only key but in JSON format
aws s3api list-objects --bucket my-bucket --query 'sort_by(Contents, &LastModified)[-1].{Key: Key}' --output json