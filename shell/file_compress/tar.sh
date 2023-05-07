# Compress to .tar.gz
# https://superuser.com/questions/305128/how-to-specify-level-of-compression-when-using-tar-zcvf
tar cvzf - file1 | gzip -9 - > temp_test.tar.gz

# Extract .tar.gz
tar -xvzf temp_test.tar.gz



# Extract specific file
# https://unix.stackexchange.com/questions/461130/extracting-specific-files-from-tar-compressed-directory
tar -xvzf temp_test.tar.gz file1

# Extract to another folder
# https://askubuntu.com/questions/45349/how-to-extract-files-to-another-directory-using-tar-command
tar -C . -xvzf temp_test.tar.gz


# https://askubuntu.com/questions/392885/how-can-i-view-the-contents-of-tar-gz-file-without-extracting-from-the-command-l
tar -tf temp_test.tar.gz


# https://stackoverflow.com/questions/14295771/how-do-i-extract-files-without-folder-structure-using-tar
tar -xf temp_test.tar.gz --strip-components 1


# https://unix.stackexchange.com/questions/146206/why-cant-tar-extract-zip-files/146217
# Why can't tar extract .zip files?
# The UNIX philosophy is to have small tools. One tool is doing exactly one thing, but this especially well.
# The tar tool is just combining several files into a single file without any compression.
# The gzip tool is just compressing a single file.
# If you want to have both, you just combine both tools resulting in a .tar.gz file.
# The zip tool is a completely different thing. It takes a bunch of files and combines them into a single compressed file. With totally different algorithms.

