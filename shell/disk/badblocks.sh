# https://www.geeksforgeeks.org/badblocks-command-in-linux-with-examples/
#  -s : It is used to display current progress of the test by showing the percentage of blocks scanned.
sudo badblocks -s /dev/sdb1


# Check Bad Sectors in Linux Disks Using badblocks Tool
# https://www.tecmint.com/check-linux-hard-disk-bad-sectors-bad-blocks/
sudo fdisk -l
sudo badblocks -v /dev/sda10 > badsectors.txt


# https://help.endian.com/hc/en-us/articles/218146758-Verify-if-the-micro-SD-card-is-corrupt
# Read-only test without -n
# -n (to specify that the check is carried out in read-write, non-destructive mode)
# -v (verbose mode)
badblocks -n -v /dev/mmcblk0