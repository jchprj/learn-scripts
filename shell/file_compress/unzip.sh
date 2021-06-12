# UNZIP
# https://unix.stackexchange.com/questions/59276/how-to-extract-only-a-specific-folder-from-a-zipped-archive-to-a-given-directory
# https://askubuntu.com/questions/994731/how-to-skip-unzipping-a-file-that-already-exists

# -n never overwrite existing files.

# unzip <target-zip-file> '<folder-to-extract/*>' -d <destination-path> 

unzip ./file1.zip -d temp_test
unzip ./file1.zip ** -d temp_test
unzip ./file1.zip file1* -d temp_test
unzip ./file1.zip file1 -d temp_test
