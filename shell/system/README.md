# System Information Commands
System information commands include the following.

* `df`: The df command displays filesystem disk space usage for all partitions. The command df-h is probably the most useful. It uses megabytes (M) and gigabytes (G) instead of blocks to report. (-h means "human-readable.")
* `free`: The free command displays the amount of free and used memory in the system. For example, free -m gives the information using megabytes, which is probably most useful for current computers.
* `top`: The top command displays information on your Linux system, running processes, and system resources, including the CPU, RAM, swap usage, and total number of tasks being run. To exit top, press Q.
* `uname -a`: The uname command with the -a option prints all system information, including machine name, kernel name, version, and a few other details. This command is most useful for checking which kernel you're using.
* `lsb_release -a`: The lsb_release command with the -a option prints version information for the Linux release you're running. For example:
username@computer:~$ lsb_release -a
No LSB modules are available.
Distributor ID: Ubuntu
Description:    Ubuntu 11.04
Release:        11.04
Codename:       natty
* `ifconfig`: This reports on your system's network interfaces.
* `iwconfig`: The iwconfig command shows you any wireless network adapters and the wireless-specific information from them, such as speed and network connected.
* `ps`: The ps command allows you to view all the processes running on the machine.
The following commands list the hardware on your computer, either of a specific type or with a specific method. They are most useful for debugging when a piece of hardware does not function correctly.
* `lspci`: The lspci command lists all PCI buses and devices connected to them. This commonly includes network cards and sound cards.
* `lsusb`: The lsusb command lists all USB buses and any connected USB devices, such as printers and thumb drives.
* `lshal`: The lshal command lists all devices the hardware abstraction layer (HAL) knows about, which should be most hardware on your system.
* `lshw`: The lshw command lists hardware on your system, including maker, type, and where it is connected.

From <http://www.informit.com/articles/article.aspx?p=1757623&seqNum=9> 



# CPU

`cat /proc/cpuinfo`

From <https://unix.stackexchange.com/questions/218074/how-to-know-number-of-cores-of-a-system-in-linux>

`lscpu`