# https://www.blackmoreops.com/2014/08/01/z-commands-view-compressed-tar-gz-files-without-uncompressing/2/

# Seems not work well for numbers

zgrep abc file1.tar.gz          # Binary file (standard input) matches
zgrep abcd file1.tar.gz         # 
zgrep abc file1.zip             # abc
zgrep abcd file1.zip            #


# https://stackoverflow.com/questions/52228830/unable-to-extract-exact-key-value-pairs-from-log-files
echo someRandomText... ,"interestingKey":"interestingValue",moreRandomText | zgrep -oiP "interestingKey":"\K[^\",]*" # interestingValue
echo "interestingKey":"interestingValue" | zgrep -oiP "interestingKey":"\K[^\"]*"   # interestingValue
echo "interestingKey":"interestingValue" | zgrep -oiP "interestingKey":".*"         # interestingKey:interestingValue