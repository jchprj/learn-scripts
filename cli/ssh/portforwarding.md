
# Port forwarding

ssh -nN -R 8888:localhost:8889 remoteuser@1.2.3.4

From <https://medium.com/botfuel/how-to-expose-a-local-development-server-to-the-internet-c31532d741cc> 
• -n prevents reading from stdin, because you don’t want to use the tunnel from the command line
• -N means that you do not want to execute remote commands, just do port forwarding
-R (as Reverse or Remote port forwarding)


LocalForward 501 computer.myHost.edu:5901

From <https://stackoverflow.com/questions/9146457/ssh-port-forwarding-in-a-ssh-config-file> 
LocalForward: mount current remote port(5901) to local(501)

RemoteForward *:15000 localhost:22

From <https://unix.stackexchange.com/questions/498169/creating-a-ssh-config-for-a-reverse-tunnel-local-forward> 
RemoteForward: mount current local port(22) to remote(15000)


Proxy Using SSH Tunnel

From <https://www.systutorials.com/944/proxy-using-ssh-tunnel/> 
	ssh -D 8080 username@sshd_server


Use the "gateway ports" option.
ssh -g -R REMOTE_PORT:HOST:PORT ...
In order to use that, you probably need to add "GatewayPorts yes" to your server's /etc/ssh/sshd_config.

From <https://superuser.com/questions/588591/how-to-make-ssh-tunnel-open-to-public> 


