curl 'https://api.github.com/repos/stedolan/jq/commits?per_page=5' | jq '.'

curl 'https://api.github.com/repos/stedolan/jq/commits?per_page=5' | jq '.[0]'

curl 'https://api.github.com/repos/stedolan/jq/commits?per_page=5' | jq '.[0]["sha"]'

echo https://stackoverflow.com/questions/35677309/output-specific-key-value-in-object-for-each-element-in-array-with-jq-for-json
echo '{"a":1, "b":[{"c":2}, {"c":3}, {"c":4}]}' | jq '.'
echo '{"a":1, "b":[{"c":2}, {"c":3}, {"c":4}]}' | jq '.b'
echo '{"a":1, "b":[{"c":2}, {"c":3}, {"c":4}]}' | jq '.b[]'
echo '{"a":1, "b":[{"c":2}, {"c":3}, {"c":4}]}' | jq '.b[].c'

echo https://stackoverflow.com/questions/18592173/select-objects-based-on-value-of-variable-in-object-using-jq
echo '{"a":1, "b":[{"c":2}, {"c":3}, {"c":4}]}' | jq '.b[] | select(.c==3) | .c'

echo https://stackoverflow.com/questions/28164849/using-jq-to-parse-and-display-multiple-fields-in-a-json-serially/31791436
echo '{"a":1, "b":[{"c":2, "d":5}, {"c":3, "d":6}, {"c":4, "d":7}]}' | jq '.b[]|.c,.d'