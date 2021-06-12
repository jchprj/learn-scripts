# https://www.blackmoreops.com/2014/08/01/z-commands-view-compressed-tar-gz-files-without-uncompressing/2/

# Seems not work well for numbers

zgrep abc file1.tar.gz          # Binary file (standard input) matches
zgrep abcd file1.tar.gz         # 
zgrep abc file1.zip             # abc
zgrep abcd file1.zip            #