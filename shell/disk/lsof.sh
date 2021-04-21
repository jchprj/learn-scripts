# list of open files
# https://man7.org/linux/man-pages/man8/lsof.8.html

# 18 Quick ‘lsof’ command examples for Linux Geeks
# https://www.linuxtechi.com/lsof-command-examples-linux-geeks/

# 10 lsof Command Examples in Linux
# https://www.tecmint.com/10-lsof-command-examples-in-linux/

lsof /var/log/

# List of open files for users (lsof -u <user_name>)
lsof -u root | more

# List all the network connections (lsof -i)
lsof -i

# List all open Internet and UNIX domain files (lsof -i -U)
lsof -i -U

# List all TCP & UDP process running on specific port (lsof -i TCP/UDP:port)
lsof -i TCP:80
lsof -i TCP:1-1048

# List all open files for specific device (lsof <device_name>)
lsof  /dev/vda1 | more