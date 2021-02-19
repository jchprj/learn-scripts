# https://www.a2hosting.com/kb/getting-started-guide/internet-and-networking/troubleshooting-dns-with-dig-and-nslookup
# Dig displays a QUESTION SECTION (the request) and an ANSWER SECTION (what the DNS server sends in response to the request)

dig @8.8.8.8 ifconfig.co


# By default, dig displays the A record for a domain. To look up a different DNS record, add it to the end of the command. For example, to look up the MX (mail exchanger) record for the example.com domain, type the following command:
dig @8.8.8.8 ifconfig.co MX


# https://serverfault.com/questions/360102/dig-timeout-option-dont-work
dig +time=5 @hii.com hello.me


# http://ezlost.tk/2018/02/24/ss-redir/
# (OpenDNS)
dig @208.67.222.222 -p 443 www.twitter.com



# https://unix.stackexchange.com/questions/121874/how-to-install-dig-on-centos
# yum install bind-utils

# apt install dnsutils





# https://www.putorius.net/why-does-ping-and-dns-resolve-names.html
# Dig will use DNS only.  Meaning it will use the name servers configured in /etc/resolv.conf just as the local DNS resolver would use, unless otherwise specified with the “server” argument.
# Ping will use the mechanisms listed in the /etc/nsswitch.conf file to resolve hostnames in order they are given.  This means it typically uses the hosts file (/etc/hosts) before querying DNS.
