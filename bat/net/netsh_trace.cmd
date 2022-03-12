@REM https://www.sonicwall.com/support/knowledge-base/how-can-i-perform-a-packet-capture-in-windows-with-built-in-utility/170905204545360/
@REM How Can I Perform A Packet Capture In Windows With Built-In Utility?
@REM These files can be opened with Microsoft Message Analyzer
@REM Once the file has been loaded into Message Analyzer you can export it to pcap to view in wireshark

netsh trace start capture=yes
netsh trace stop


@REM https://community.progress.com/s/article/How-to-run-a-NETSH-Trace
@REM Use Netsh to capture network
@REM Common filters:
	@REM Protocol=<protocol>
	@REM Matches the specified filter against the IP protocol.
	@REM e.g. Protocol=6
	@REM e.g. Protocol=!(TCP,UDP)
	@REM e.g. Protocol=(4-10)
	@REM Find more protocol number at the link below:
    @REM https://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml

    @REM Ipv4.Address=<IPAddress>
	@REM To filter on the remote device IPv4 address, you need to specify the following where x.x.x.x is the remote device IP address:
	@REM Ethernet.Type = IPv4 IPv4.Address = x.x.x.x

    @REM CaptureInterface=<interface name or GUID>
	@REM Enables packet capture for the specified interface name or GUID. Use 'netsh trace show interfaces' to list available interfaces.
	@REM e.g. CaptureInterface={716A7812-4AEE-4545-9D00-C10EFD223551}
	@REM e.g. CaptureInterface=!{716A7812-4AEE-4545-9D00-C10EFD223551}
    @REM e.g. CaptureInterface="Local Area Connection"

@REM Examples:
    @REM 1.Capture all traffic on the WUG server:
    @REM trace start capture=yes tracefile = c:\temp\mynetshtrace.etl
        
    @REM 2.Capture only UDP traffic between the wug server and a specific device (replace x.x.x.x by its IP address):
    @REM trace start capture=yes Ethernet.Type = IPv4 IPv4.Address = x.x.x.x protocol=17 tracefile = c:\temp\mynetshtrace.etl
        
    @REM 3.Capture all traffic on a specific interface on the WUG server:
    @REM trace start capture=yes tracefile = c:\temp\mynetshtrace.etl CaptureInterface="Local Area Connection"
        
    @REM 4.Capture all ICMP traffic until the file reaches 800MB
    @REM trace start capture=yes protocol=1 tracefile = c:\temp\mynetshtrace.etl fileMode= single maxSize=800