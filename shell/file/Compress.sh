# Compress to .tar.gz
env GZIP=-9 tar cvzf temp_test.tar.gz file*

# Uncompress .tar.gz
tar -xvzf temp_test.tar.gz

# Change temp_test.tar.gz to temp_test.tar
gzip -d temp_test.tar.gz



# https://unix.stackexchange.com/questions/22834/how-to-uncompress-zlib-data-in-unix
zlib-flate -uncompress < FILE



# UNZIP
# https://unix.stackexchange.com/questions/59276/how-to-extract-only-a-specific-folder-from-a-zipped-archive-to-a-given-directory
# https://askubuntu.com/questions/994731/how-to-skip-unzipping-a-file-that-already-exists
# -n never overwrite existing files.
unzip <target-zip-file> '<folder-to-extract/*>' -d <destination-path> 