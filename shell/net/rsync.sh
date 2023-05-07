

# https://www.math.cmu.edu/~gautam/sj/blog/20200216-rsync-backups.html
# Tips on run as service with timer

# https://stackoverflow.com/questions/38146703/use-rsync-for-backup-without-overwrite
# creates a dated backup directory with copies only of the files that are about to be overwritten in dst.
rsync --backup-dir=backup_`date +%F_%H-%M-%S` src dst


# https://www.howtogeek.com/427480/how-to-back-up-your-linux-system/
# -r (recursive)
rsync -r src dst
# -a (archive) option to preserve file attributes such as modification dates, file ownership, access permissions, and more
rsync -ra src dst
# -v (verbose)
# -P (progress)
# -z (compression): compresses the file in transfer
# --partial: forces rsync to leave the partially transferred files on the target.

# SSH
rsync -ravz --partial src user@server:dst

# GUI: luckyBackup and Grsync


# https://askubuntu.com/questions/609303/how-can-i-view-a-progress-bar-when-running-rsync

# --info=FLAGS             fine-grained informational verbosity
# -P                       same as --partial --progress

#        There is also a --info=progress2 option that outputs statistics based on
#        the whole transfer, rather than individual files.  Use this flag
#        without  out‐putting  a  filename  (e.g. avoid -v or specify --info=name0)
#        if you want to see how the transfer is doing without scrolling the screen 
#        with  a  lot  of names.   (You  don’t  need  to specify the --progress
#        option in order to use --info=progress2.)

rsync -r --info=progress2 --info=name0 "$src" "$dst"


# -a, --archive
# -v, --verbose
# -z, --compress
# -h, --human-readable

# --progress  This  option  tells  rsync to print information showing
#  the progress of the transfer. This gives a bored user something to
#  watch.  Implies --verbose if it wasn’t already specified.

# --stats  This  tells  rsync to print a verbose set of statistics on
#  the file transfer, allowing you to tell how effective rsync’s
#  delta-transfer algorithm is for your data.

rsync -avzh --progress --stats root@server:/path/to/file output_name



# https://unix.stackexchange.com/questions/397637/rsync-why-doesnt-archive-imply-recursive-when-files-from-file-is-used
# -a, --archive   archive mode is -rlptgoD (no -A,-X,-U,-N,-H)
# The only exception to the above equivalence is when --files-from is specified, in which case -r is not implied.



# https://unix.stackexchange.com/questions/313089/verifying-a-large-directory-after-copy-from-one-hard-drive-to-another
# -n do not copy (make no changes)
# -i itemise the differences
# -a preserve (i.e. compare since we have -n) permissions, ownerships, symbolic links, etc. and recurse down directories
# -H preserve hard links
# -c compare checksums
rsync -niaHc /origfolder/ /copyfolder

# man rsync
# --itemize-changes, -i
#               Requests a simple itemized list of the changes that are being made to each file, including attribute changes.
#               This is exactly the same as specifying --out-format='%i %n%L'.  If you repeat  the  option,  unchanged  files
#               will  also  be  output, but only if the receiving rsync is at least version 2.6.7 (you can use -vv with older
#               versions of rsync, but that also turns on the output of other verbose messages).

#               The "%i" escape has a cryptic output that is 11 letters long.  The general format is like the  string  YXcst‐
#               poguax,  where  Y is replaced by the type of update being done, X is replaced by the file-type, and the other
#               letters represent attributes that may be output if they are being modified.



# https://serverfault.com/questions/455111/rsynced-files-not-getting-proper-acl
# rsynced files not getting proper ACL
