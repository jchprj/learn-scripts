# Disk usage of current folder
echo 0________________________
du -sh
# Disk Usage
echo 1________________________
du -sh ../*
# summarized sizes of folders and their subfolders
echo 2________________________
du -m ../ | sort -nr | head -n 20
# get a sorted list containing the 20 biggest dirs
echo 3________________________
for each in $(ls) ; do du -hs "$each" ; done
# a good start for some other size related operations



# How to Find Out Top Directories and Files (Disk Space) in Linux
# From <https://www.tecmint.com/find-top-large-directories-and-files-sizes-in-linux/> 
echo 4________________________
du -h --max-depth=1 ../


# From <https://superuser.com/questions/554319/bash-display-each-sub-directory-size-in-a-list-format-using-1-line-command> 
echo 5________________________
du -h -d 1 ../


# https://www.tecmint.com/find-top-large-directories-and-files-sizes-in-linux/
du -hs * | sort -rh | head -5

## Include sub directories
du -Sh | sort -rh | head -5


# https://unix.stackexchange.com/questions/23692/using-exclude-with-the-du-command
du -ch --exclude=./relative/path/to/uploads


# https://superuser.com/questions/520338/only-get-the-size-from-du-command-not-the-folder-names
du -sm /Users/JS_Admin/Desktop | cut -f1


# https://unix.stackexchange.com/questions/106275/du-gives-two-different-results-for-the-same-file
# -b, --bytes
#     equivalent to '--apparent-size --block-size=1'
# --apparent-size
#     print apparent sizes, rather than disk usage; although the apparent
#     size is  usually  smaller,  it  may  be  larger  due  to  holes  in
#     ('sparse')  files, internal fragmentation, indirect blocks, and the
#     like
du -b foo bar