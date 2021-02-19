# For Windows portable, needs ncat.exe, libeay32.dll and ssleay32.dll


# https://nmap.org/book/ncat-man-examples.html
ncat -u localhost 8125 < metrics

# Connect to
ncat localhost 8080
# Listen for connections
ncat -l localhost 8080



# http://redino.net/blog/2018/05/centos-6-install-netcat/
# yum install nmap
ncat -v