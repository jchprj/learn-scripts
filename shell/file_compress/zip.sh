zip temp_test.zip file1


# -r   recurse into directories
zip -r temp_test.zip file1


# https://stackoverflow.com/questions/9710141/create-zip-file-and-ignore-directory-structure
# -j
# --junk-paths
#           Store just the name of a saved file (junk the path), and do  not
#           store  directory names. By default, zip will store the full path
#           (relative to the current directory).



# https://unix.stackexchange.com/questions/161905/adding-unzipped-files-to-a-zipped-folder
# -u   update: only changed or new files
zip -ur temp_test.zip file1