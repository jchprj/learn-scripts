@REM IPv4 Route Table (linux route -n)
route print -4


route add 192.168.1.111 mask 255.255.255.255 192.168.1.1 metric 1
route delete 192.168.1.111



@REM https://www.howtogeek.com/howto/windows/adding-a-tcpip-route-to-the-windows-routing-table/
@REM To add a static route to the table, you’ll type a command using the following syntax:
@REM route ADD destination_network MASK subnet_mask gateway_ip metric_cost
@REM route delete destination_network

@REM if you wanted to add a route specifying that all traffic bound for the 192.168.35.0 subnet went to a gateway at 192.168.0.2 and you just wanted to use the automatic metric cost, you would use the following command:
@REM route ADD 192.168.35.0 MASK 255.255.255.0 192.168.0.2
@REM add the -p option to the command to make the route persistent

@REM https://superuser.com/questions/614634/add-an-on-link-routing-entry
@REM You need to put 0.0.0.0 in the gateway entry to create an "on-link" route.
@REM route add 10.10.10.100 mask 255.255.255.0 0.0.0.0




@REM https://serverfault.com/questions/193308/vpn-within-a-remote-desktop-session
@REM VPN within a Remote Desktop session
	@REM In windows what you would do is something like this:
    @REM route add 10.1.1.140 netmask 255.255.255.255 <defaultGW> -P
	@REM where defaultGW is the ip address of your router.
    @REM This will ensure that traffic going to 10.1.1.140 will not be routed to the tunnel.