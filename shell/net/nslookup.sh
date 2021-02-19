# https://www.a2hosting.com/kb/getting-started-guide/internet-and-networking/troubleshooting-dns-with-dig-and-nslookup

nslookup ifconfig.co


# To use a specific DNS server for the query, add the server name or IP address to the end of the command. For example, the following command performs a DNS lookup on the example.com domain using an OpenDNS server (which has IP address 208.67.222.222):
# (OpenDNS)
nslookup example.com 208.67.222.222