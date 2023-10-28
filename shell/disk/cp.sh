# https://stackoverflow.com/questions/9392735/linux-how-to-copy-but-not-overwrite
# -n, --no-clobber
#   do not overwrite an existing file (overrides a previous -i option)
cp -n badblocks.sh chmod.sh


# https://askubuntu.com/questions/1040885/copy-a-file-and-keep-the-same-timestamp-of-the-original-file
# -p     same as --preserve=mode,ownership,timestamps
# --preserve[=ATTR_LIST]
#           preserve the specified attributes (default: mode,ownership,time‐
#           stamps), if  possible  additional  attributes:  context,  links,
#           xattr, all
cp -p oldfile newfile