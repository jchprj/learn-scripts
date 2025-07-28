echo https://docs.aws.amazon.com/cli/latest/reference/dynamodb/index.html

aws dynamodb list-tables --profile temp_test



echo https://docs.aws.amazon.com/cli/latest/reference/dynamodb/describe-table.html

aws dynamodb describe-table --table-name testdb --profile temp_test



echo https://stackoverflow.com/questions/27316643/how-to-get-item-count-from-dynamodb

aws dynamodb scan --table-name testdb --select COUNT  --profile temp_test
