echo https://docs.aws.amazon.com/cli/latest/reference/resourcegroupstaggingapi/get-resources.html> 

echo https://stackoverflow.com/questions/52594359/aws-cli-search-resource-by-tags

aws resourcegroupstaggingapi get-resources --tag-filters "Key=Name,Values=postgres-dev"

echo JSON body: { "TagFilters": [ { "Key": "Name", "Values": [ "postgres-dev" ] } ] }
aws resourcegroupstaggingapi get-resources --cli-input-json file://tag.json

