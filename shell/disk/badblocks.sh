# From <https://www.geeksforgeeks.org/badblocks-command-in-linux-with-examples/> 
#  -s : It is used to display current progress of the test by showing the percentage of blocks scanned.
sudo badblocks -s /dev/sdb1


# Check Bad Sectors in Linux Disks Using badblocks Tool
# From <https://www.tecmint.com/check-linux-hard-disk-bad-sectors-bad-blocks/> 
sudo fdisk -l
sudo badblocks -v /dev/sda10 > badsectors.txt
