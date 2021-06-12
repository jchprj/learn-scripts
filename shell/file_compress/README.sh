tar -I 'gzip -9' -cvf file1.tar.gz file1
tar -cvf file2.tar.gz file2
zip file1.zip file1



# Change temp_test.tar.gz to temp_test.tar
gzip -d temp_test.tar.gz



# https://unix.stackexchange.com/questions/22834/how-to-uncompress-zlib-data-in-unix
zlib-flate -uncompress < FILE