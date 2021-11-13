echo https://github.com/aria2/aria2
echo aria2c https://file-examples-com.github.io/uploads/2017/02/file_example_JSON_1kb.json


echo https://stackoverflow.com/questions/40567632/aria2-dont-re-download-file
aria2c -c https://file-examples-com.github.io/uploads/2017/02/file_example_JSON_1kb.json -o temp_test


aria2c -c https://file-examples-com.github.io/uploads/2017/02/file_example_JSON_1kb.json -d temp_test.dir