# Compress to .tar.gz
tar -I 'gzip -9' -cvf temp_test.tar.gz file1


# Extract .tar.gz
tar -xvzf temp_test.tar.gz



# Extract specific file
# https://unix.stackexchange.com/questions/461130/extracting-specific-files-from-tar-compressed-directory
tar -xvzf temp_test.tar.gz file1

# Extract to another folder
# https://askubuntu.com/questions/45349/how-to-extract-files-to-another-directory-using-tar-command
tar -C . -xvzf temp_test.tar.gz





# https://unix.stackexchange.com/questions/146206/why-cant-tar-extract-zip-files/146217
# Why can't tar extract .zip files?
# The UNIX philosophy is to have small tools. One tool is doing exactly one thing, but this especially well.
# The tar tool is just combining several files into a single file without any compression.
# The gzip tool is just compressing a single file.
# If you want to have both, you just combine both tools resulting in a .tar.gz file.
# The zip tool is a completely different thing. It takes a bunch of files and combines them into a single compressed file. With totally different algorithms.

