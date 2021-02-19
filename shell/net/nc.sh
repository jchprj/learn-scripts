# https://medium.com/botfuel/how-to-expose-a-local-development-server-to-the-internet-c31532d741cc
# Listen on the destination port of the workstation
# netcat -l -p port
# nc -l port

# Send message
# echo “abc” | nc -v ip port


# https://stackoverflow.com/questions/29045877/centos-7-and-puppet-unable-to-install-nc
# yum install nc


# https://serverfault.com/questions/649532/what-is-the-best-way-to-measure-latency-via-a-telnet-to-port-test-preferably
# the best way to measure latency via a “telnet to port” test
# time nc -zw30 <host> <port>


# https://serverfault.com/questions/207683/listen-to-udp-data-on-local-port-with-netcat
# listen to UDP data on local port with netcat
# netcat -ul 2115


# https://www.thegeekdiary.com/how-to-test-porttcp-udp-connectivity-from-a-linux-server/
# Testing UDP port connectivity wit nc command
# nc -z -v -u [hostname/IP address] [port number]