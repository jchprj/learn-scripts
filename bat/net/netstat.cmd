@REM https://serverfault.com/questions/361565/how-can-i-get-the-ip-address-of-a-remote-desktop-client-and-how-can-i-trigger-a
@REM How can I get the IP address of a remote desktop client?
netstat -n | find ":3389" | find "ESTABLISHED"


@REM https://techtalk.gfi.com/scan-open-ports-in-windows-a-quick-guide/#:~:targetText=Netstat.exe%2C%20located%20in%20the,a%20host%20for%20open%20ports.
@REM Scanning Open Ports in Windows: A Quick Guide
netstat -ano |find /i "listening"
