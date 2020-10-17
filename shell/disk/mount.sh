mkdir temp_test.dir3
sudo mount --bind temp_test.dir temp_test.dir3
touch temp_test.dir/a
ls -l -R
# sudo umount temp_test.dir3


mount | column -t




# From <https://stackoverflow.com/questions/45244306/mounting-a-windows-share-in-windows-subsystem-for-linux> 
mkdir temp_test.dir
sudo mount -t drvfs '\\servername\sharename' temp_test.dir



