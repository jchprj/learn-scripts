# Compress to .tar.gz
env GZIP=-9 tar cvzf temp_test.tar.gz file*

# Extract .tar.gz
tar -xvzf temp_test.tar.gz

# Extract specific file
# https://unix.stackexchange.com/questions/461130/extracting-specific-files-from-tar-compressed-directory
tar -xvzf temp_test.tar.gz file1

# Extract to another folder
# https://askubuntu.com/questions/45349/how-to-extract-files-to-another-directory-using-tar-command
tar -C . -xvzf temp_test.tar.gz

# Change temp_test.tar.gz to temp_test.tar
gzip -d temp_test.tar.gz



# https://unix.stackexchange.com/questions/22834/how-to-uncompress-zlib-data-in-unix
zlib-flate -uncompress < FILE



# UNZIP
# https://unix.stackexchange.com/questions/59276/how-to-extract-only-a-specific-folder-from-a-zipped-archive-to-a-given-directory
# https://askubuntu.com/questions/994731/how-to-skip-unzipping-a-file-that-already-exists
# -n never overwrite existing files.
unzip <target-zip-file> '<folder-to-extract/*>' -d <destination-path> 




# https://unix.stackexchange.com/questions/146206/why-cant-tar-extract-zip-files/146217
# Why can't tar extract .zip files?
# The UNIX philosophy is to have small tools. One tool is doing exactly one thing, but this especially well.
# The tar tool is just combining several files into a single file without any compression.
# The gzip tool is just compressing a single file.
# If you want to have both, you just combine both tools resulting in a .tar.gz file.
# The zip tool is a completely different thing. It takes a bunch of files and combines them into a single compressed file. With totally different algorithms.