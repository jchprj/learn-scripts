# https://superuser.com/questions/604998/monitor-tcp-traffic-on-specific-port
sudo tcpdump -i any port 22

# tcpdump port 443 and '(tcp-syn|tcp-ack)!=0'
# WSL1:
# tcpdump: socket for SIOCETHTOOL(ETHTOOL_GET_TS_INFO): Socket type not supported


# https://dzone.com/articles/tcpdump-learning-how-read-udp
# UDP:
# tcpdump -i lo udp port 8125 -vv -X