@REM https://winaero.com/blog/open-port-windows-firewall-windows-10/
@REM Open Port in Windows Firewall in Windows 10

netsh advfirewall firewall add rule name="TCP Port 6624" dir=in action=allow protocol=TCP localport=6624
netsh advfirewall firewall delete rule name="TCP Port 6624" protocol=TCP localport=6624