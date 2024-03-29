# https://stackoverflow.com/questions/596590/how-can-i-get-the-current-network-interface-throughput-statistics-on-linux-unix
# https://linux.die.net/man/1/sar
# https://www.digitalocean.com/community/questions/how-to-install-and-configure-sar-sysstat-on-ubuntu

# Usage: sar [ options ] [ <interval> [ <count> ] ]
# Main options and reports (report name between square brackets):
# -B	Paging statistics [A_PAGE]
# -b	I/O and transfer rate statistics [A_IO]
# -d	Block devices statistics [A_DISK]
# -F [ MOUNT ]
# 	Filesystems statistics [A_FS]
# -H	Hugepages utilization statistics [A_HUGE]
# -I { <int_list> | SUM | ALL }
# 	Interrupts statistics [A_IRQ]
# -m { <keyword> [,...] | ALL }
# 	Power management statistics [A_PWR_...]
# 	Keywords are:
# 	CPU	CPU instantaneous clock frequency
# 	FAN	Fans speed
# 	FREQ	CPU average clock frequency
# 	IN	Voltage inputs
# 	TEMP	Devices temperature
# 	USB	USB devices plugged into the system
# -n { <keyword> [,...] | ALL }
# 	Network statistics [A_NET_...]
# 	Keywords are:
# 	DEV	Network interfaces
# 	EDEV	Network interfaces (errors)
# 	NFS	NFS client
# 	NFSD	NFS server
# 	SOCK	Sockets	(v4)
# 	IP	IP traffic	(v4)
# 	EIP	IP traffic	(v4) (errors)
# 	ICMP	ICMP traffic	(v4)
# 	EICMP	ICMP traffic	(v4) (errors)
# 	TCP	TCP traffic	(v4)
# 	ETCP	TCP traffic	(v4) (errors)
# 	UDP	UDP traffic	(v4)
# 	SOCK6	Sockets	(v6)
# 	IP6	IP traffic	(v6)
# 	EIP6	IP traffic	(v6) (errors)
# 	ICMP6	ICMP traffic	(v6)
# 	EICMP6	ICMP traffic	(v6) (errors)
# 	UDP6	UDP traffic	(v6)
# 	FC	Fibre channel HBAs
# 	SOFT	Software-based network processing
# -q	Queue length and load average statistics [A_QUEUE]
# -r [ ALL ]
# 	Memory utilization statistics [A_MEMORY]
# -S	Swap space utilization statistics [A_MEMORY]
# -u [ ALL ]
# 	CPU utilization statistics [A_CPU]
# -v	Kernel tables statistics [A_KTABLES]
# -W	Swapping statistics [A_SWAP]
# -w	Task creation and system switching statistics [A_PCSW]
# -y	TTY devices statistics [A_SERIAL]

sar -n DEV 1 3

sar -u 1 3
sar 1 3

sar -r 1 3