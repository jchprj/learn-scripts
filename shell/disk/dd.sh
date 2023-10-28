# https://www.tecmint.com/create-an-iso-from-a-bootable-usb-in-linux/
sudo dd if=/dev/sdbX of=/path/to/file.iso

# https://linuxconfig.org/how-to-make-a-bootable-usb-from-an-iso-in-linux
sudo dd bs=4M if=/path/to/file.iso of=/dev/sdX status=progress oflag=sync
