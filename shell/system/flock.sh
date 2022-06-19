# https://medium.com/swlh/using-rclone-on-linux-to-automate-backups-to-google-drive-d599b49c42e8
# The -n option tells flock that in the case where the lock cannot be acquired, exit immediately with return code 1 (i.e. do not wait for lock to be released).

flock -n /tmp/temp_test.lock ls 