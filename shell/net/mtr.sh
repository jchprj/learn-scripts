# https://vitux.com/how-to-use-the-linux-mtr-command/
# mtr (My Traceroute)

# -4                         use IPv4 only
# -u, --udp                  use UDP instead of ICMP echo
# -T, --tcp                  use TCP instead of ICMP echo
# -c, --report-cycles COUNT  set the number of pings sent
# -P, --port PORT            target port number for TCP, SCTP, or UDP
# -r, --report               output using report mode


mtr --tcp ifconfig.co
mtr --udp ifconfig.co

# Check port availability
mtr --tcp --port=443 ifconfig.co -c 3