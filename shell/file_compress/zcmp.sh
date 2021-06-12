# https://www.blackmoreops.com/2014/08/01/z-commands-view-compressed-tar-gz-files-without-uncompressing/2/

zcmp file1.tar.gz file2.tar.gz             # /dev/fd/5 - differ: byte 5, line 1
zcmp file1.tar.gz file1.tar.gz             #