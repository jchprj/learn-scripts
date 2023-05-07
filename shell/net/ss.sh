# (replace netstat)

# https://www.linux.com/tutorials/introduction-ss-command/
# An Introduction to the ss Command
# One of the many tools that admins frequently turned to was netstat. However, the netstat command has been deprecated in favor of the faster, more human-readable ss command
# The ss command-line utility can display stats for the likes of PACKET, TCP, UDP, DCCP, RAW, and Unix domain sockets. The replacement for netstat is easier to use 


# List currently established, closed, orphaned and waiting TCP sockets
# -s summary
ss -s


# -t TCP
# -l Listening
# -n Numeric
# -p Process
ss -tlnp


# https://www.cyberciti.biz/tips/linux-investigate-sockets-network-connections.html
# Show all ports connected from remote
# ss dst ADDRESS_PATTERN

# Show all ports connected to
# ss src ADDRESS_PATTERN


# https://www.blackmoreops.com/2014/09/25/find-number-of-unique-ips-active-connections-to-web-server/
ss -ntp | awk '{print $5}' | cut -d: -f1 | sort | uniq -c | sort