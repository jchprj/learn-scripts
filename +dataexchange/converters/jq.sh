echo https://stedolan.github.io/jq/

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

echo https://stackoverflow.com/questions/26701538/how-to-filter-an-array-of-objects-based-on-values-in-an-inner-array-with-jq
echo '[{"genre":"deep house"}, {"genre": "progressive house"}, {"genre": "dubstep"}, {"genre": "dubstep"}]' | jq '.[] | select(.genre | contains("house"))'

echo https://fixingitpro.com/2019/12/02/jq-filter-with-null-null-and-string-sample-cannot-have-their-containment-checked-exit-status-5/
echo '[{"genre":"deep house"}, {"genre": "progressive house"}, {"genre": "dubstep"}, {"abc": "dubstep"}]' | jq '.[] | select( .genre != null) | select(.genre | contains("house"))'


echo https://stackoverflow.com/questions/28164849/using-jq-to-parse-and-display-multiple-fields-in-a-json-serially/31791436
echo '{"a":1, "b":[{"c":2, "d":5}, {"c":3, "d":6}, {"c":4, "d":7}]}' | jq '.b[]|.c,.d'


echo https://stackoverflow.com/questions/45979477/extract-the-first-and-the-last-value-of-a-json-array-object
echo first
echo '[1, 5, 2, 6]' | jq '.[0]'
echo last
echo '[1, 5, 2, 6]' | jq '.[-1]'
echo first and last, in 2 lines
echo '[1, 5, 2, 6]' | jq '.[0, -1]'


echo https://stackoverflow.com/questions/34226370/jq-print-key-and-value-for-each-entry-in-an-object
jq -r 'to_entries[] | "HOST: \(.key), IP: \(.value | .ip)"' <<EOT
{
  "host1": { "ip": "10.1.2.3" }, 
  "host2": { "ip": "10.1.2.2" }, 
  "host3": { "ip": "10.1.18.1" } 
}
EOT


echo https://stackoverflow.com/questions/44656515/how-to-remove-double-quotes-in-jq-output-for-parsing-json-files-in-bash
echo '{"a":"1"}' | jq -r '.a'


echo https://stackoverflow.com/questions/46530167/jq-select-filter-with-multiple-arguments
echo '{"a":1, "b":[{"c":2}, {"c":3}, {"c":4}]}' | jq '.b[] | select(.c==2 or .c==3) | .c'


echo https://stackoverflow.com/questions/70100534/jq-get-first-n-elements-of-an-array-field
echo '[1, 2, 3, 4]' | jq .[:2]


echo https://stackoverflow.com/questions/35540294/sort-descending-by-multiple-keys-in-jq
jq -n '["pro", "leo", "column", "ablast"] | sort | reverse'


echo https://unix.stackexchange.com/questions/613779/how-to-sort-a-stream-of-json-objects-by-field-value-using-jq
echo '{"a":1} {"a":2} {"c":4} {"c":3}' | jq -s 'sort_by(.a)'
echo '[{"a":1}, {"a":2}, {"c":4}, {"c":3}]' | jq 'sort_by(.a)'


echo https://stackoverflow.com/questions/69333650/how-to-ignore-broken-json-line-in-jq
echo a | jq
echo a | jq -r -R 'fromjson? | .'


echo https://stackoverflow.com/questions/36853202/jq-dates-and-unix-timestamps
echo 1698058879 | jq 'strftime("%B %d %Y %I:%M%p %Z")'
echo 1698058879 | jq 'strflocaltime("%Y-%m-%dT%H:%M:%S %Z")'


echo https://jqlang.github.io/jq/manual/
echo The format strings for strptime and strftime are described in typical C library documentation. The format string for ISO 8601 datetime is "%Y-%m-%dT%H:%M:%SZ".


echo https://github.com/jqlang/jq/issues/785
echo '[1, 2, 3, 4]' | jq '@csv'
jq -n -r '[1,2,3] | reduce .[1:][] as $i ("\(.[0])"; . + ", \($i)" )'