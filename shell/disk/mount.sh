mkdir temp_test.dir3
sudo mount --bind temp_test.dir temp_test.dir3
touch temp_test.dir/a
ls -l -R
# sudo umount temp_test.dir3


mount | column -t




# From <https://stackoverflow.com/questions/45244306/mounting-a-windows-share-in-windows-subsystem-for-linux> 
mkdir temp_test.dir
sudo mount -t drvfs '\\servername\sharename' temp_test.dir


# https://www.raspberrypi.org/forums/viewtopic.php?t=276537
# https://askubuntu.com/questions/427044/mounting-cifs-drive-gives-mount-error22-invalid-argument
# tail -f  /var/log/kern.log 
# dmesg | tail
# https://serverfault.com/questions/222074/fstab-and-cifs-mounting-possible-to-store-authentication-information-outside-of
sudo mount -t cifs //servername/sharename temp_test.dir -o vers="2.0",rw,soft,credentials=.credential,uid=1000,gid=1000,file_mode=0770,dir_mode=0770

# https://www.raspberrypi.org/forums/viewtopic.php?t=259579
sudo mount -t cifs //servername/sharename temp_test.dir -o vers="2.0",rw,_netdev,credentials=.credential,uid=1000,gid=1000,file_mode=0770,dir_mode=0770,x-systemd.automount



# https://serverfault.com/questions/174181/how-do-you-validate-fstab-without-rebooting
sudo mount -a