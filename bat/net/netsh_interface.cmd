@REM https://stackoverflow.com/questions/11525703/port-forwarding-in-windows
@REM port forwarding in windows

netsh interface portproxy add v4tov4 listenport=3306 listenaddress=127.0.0.1 connectport=3306 connectaddress=192.168.1.111
netsh interface portproxy delete v4tov4 listenport=3306 listenaddress=192.168.1.111

@REM https://www.onmsft.com/how-to/how-to-configure-port-forwarding-on-a-windows-10-pc
@REM How to configure port forwarding on a Windows 10 PC
netsh interface portproxy add v4tov4 listenaddress=127.0.0.1 listenport=9000 connectaddress=192.168.1.111 connectport=80
netsh interface portproxy delete v4tov4 listenaddress=127.0.0.1 listenport=9000
netsh interface portproxy show all




@REM https://github.com/microsoft/WSL/issues/5131
@REM netsh interface portproxy reset all