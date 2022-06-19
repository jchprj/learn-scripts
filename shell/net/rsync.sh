

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