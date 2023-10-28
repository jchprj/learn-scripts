
# Port forwarding


[How to expose a local development server to the Internet | by Michel Blancard | Botfuel | Medium](https://medium.com/botfuel/how-to-expose-a-local-development-server-to-the-internet-c31532d741cc)

    ssh -nN -R 8888:localhost:8889 remoteuser@1.2.3.4

    • -n prevents reading from stdin, because you don’t want to use the tunnel from the command line
    • -N means that you do not want to execute remote commands, just do port forwarding
    -R (as Reverse or Remote port forwarding)


[linux - SSH Port forwarding in a \~/.ssh/config file? - Stack Overflow](https://stackoverflow.com/questions/9146457/ssh-port-forwarding-in-a-ssh-config-file)

    LocalForward 501 computer.myHost.edu:5901
    LocalForward: mount current remote port(5901) to local(501)


[ssh tunneling - Creating a ssh config for a reverse tunnel + local forward - Unix & Linux Stack Exchange](https://unix.stackexchange.com/questions/498169/creating-a-ssh-config-for-a-reverse-tunnel-local-forward)

    RemoteForward *:15000 localhost:22
    RemoteForward: mount current local port(22) to remote(15000)


[How to Set Up Socks Proxy Using SSH Tunnel - SysTutorials](https://www.systutorials.com/proxy-using-ssh-tunnel/)

    ssh -D 8080 username@sshd_server 


[openssh - How to make an SSH tunnel publicly accessible? - Super User](https://superuser.com/questions/588591/how-to-make-an-ssh-tunnel-publicly-accessible)

    Use the "gateway ports" option.
    ssh -g -R REMOTE_PORT:HOST:PORT ...
    In order to use that, you probably need to add "GatewayPorts yes" to your server's /etc/ssh/sshd_config.



[What is an SSH Tunnel & SSH Tunneling?](https://www.ssh.com/academy/ssh/tunneling)