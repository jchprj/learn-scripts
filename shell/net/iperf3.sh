# https://www.cyberciti.biz/faq/how-to-test-the-network-speedthroughput-between-two-linux-servers/
# How to test the network speed/throughput between two Linux servers

# Server: 
iperf3 -p 8388 -s

# Client: 
iperf3 -c localhost -p 8388



# https://openmaniak.com/iperf.php
# If you want to use UDP tests, use the -u argument



# https://iperf.fr/iperf-servers.php
# Public iPerf3 servers
# E.g. ping.online.net