curl 'https://api.github.com/repos/stedolan/jq/commits?per_page=5' | jq '.'

curl 'https://api.github.com/repos/stedolan/jq/commits?per_page=5' | jq '.[0]'

curl 'https://api.github.com/repos/stedolan/jq/commits?per_page=5' | jq '.[0]["sha"]'