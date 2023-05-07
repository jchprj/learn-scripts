# \~/.ssh/config

[OpenSSH Config File Examples For Linux / Unix Users - nixCraft](https://www.cyberciti.biz/faq/create-ssh-config-file-on-linux-unix/)

    Understanding ~/.ssh/config entries


[ssh tunnel - SSH Remote forward with ssh config file not Listening to all Addresses (Listening to local host only) - Server Fault](https://serverfault.com/questions/820453/ssh-remote-forward-with-ssh-config-file-not-listening-to-all-addresses-listenin)

    write public IP address in your RemoveForward option:
    RemoteForward  8080 ###.###.###.###:81
    also you need to specify GatewayPorts yes


[Best way to use multiple SSH private keys on one client - Stack Overflow](https://stackoverflow.com/questions/2419566/best-way-to-use-multiple-ssh-private-keys-on-one-client/2419609)


[bash - How to specify the private SSH-key to use when executing shell command on Git? - Stack Overflow](https://stackoverflow.com/questions/4565700/how-to-specify-the-private-ssh-key-to-use-when-executing-shell-command-on-git)

    None of these solutions worked for me.
    Instead, I elaborate on @Martin v. Löwis 's mention of setting a config file for SSH.
    SSH will look for the user's ~/.ssh/config file.

    git remote add origin git@gitserv:myrepo.git


[ssh returns "Bad owner or permissions on ~/.ssh/config" - Server Fault](https://serverfault.com/questions/253313/ssh-returns-bad-owner-or-permissions-on-ssh-config)

    chmod 600 ~/.ssh/config
    chown $USER ~/.ssh/config


[openssh - Is there a way for one SSH config file to include another one? - Super User](https://superuser.com/questions/247564/is-there-a-way-for-one-ssh-config-file-to-include-another-one)

    Include ...

# Bastion

## ProxyCommand

[ssh_config で Host名を動的に設定する - Qiita](https://qiita.com/white_aspara25/items/f363d15101945ed1e48b)

    ProxyCommand /bin/nc 172.31.1.$(echo %h |cut -d- -f2) %p


[SSH ProxyCommand example: Going through one host to reach another server - nixCraft](https://www.cyberciti.biz/faq/linux-unix-ssh-proxycommand-passing-through-one-host-gateway-server/)

    ssh -J Jumphost FooServer
    If -J is not available:
        ssh -o ProxyCommand="ssh -W %h:%p Jumphost" FooServer
    If client doesn't support -W
        ssh -tt Jumphost ssh -tt FooServer
    -o 'ProxyCommand ssh -l jerry %h nc server2.nixcraft.com 22'
    ProxyCommand ssh jumphost.nixcraft.com -W %h:%p
    ProxyJump vivek@jumhost.nixcraft.com:22
    netcat (older method)
         -o ProxyCommand='ssh firewall nc remote_server1 22'
        ProxyCommand ssh vivek@Jumphost nc %h %p


[linux - SSH from A through B to C, using private key on B - Server Fault](https://serverfault.com/questions/337274/ssh-from-a-through-b-to-c-using-private-key-on-b)

    Host C
        ProxyCommand ssh -o 'ForwardAgent yes' B 'ssh-add && nc %h %p'
    or
        ProxyCommand ssh -T -q -o 'ForwardAgent yes' B 'ssh-add -t 1 ~/.ssh/mykey && nc %h %p'


[bash - Can an ~/.ssh/config file use variables? - Stack Overflow](https://stackoverflow.com/questions/33486339/can-an-ssh-config-file-use-variables)

    Your proxycommand can be a shell script
    Or:
    ProxyCommand bash -c '……'


[proxy - Can ssh_config's ProxyCommand run a local command before connecting to a remote machine? - Unix & Linux Stack Exchange](https://unix.stackexchange.com/questions/44307/can-ssh-configs-proxycommand-run-a-local-command-before-connecting-to-a-remote)

    If your local_command is too complicated, you can use a script:
    Host remote.machine
        ProxyCommand /path_to_my_connect.sh %h %p


## SSH Agent

[Handling Bastion Hosts on AWS via SSH Agent Forwarding | by Crishantha Nanayakkara | Medium](https://crishantha.medium.com/handing-bastion-hosts-on-aws-via-ssh-agent-forwarding-f1d2d4e8622a)


[command line - ssh-add complains: Could not open a connection to your authentication agent - Unix & Linux Stack Exchange](https://unix.stackexchange.com/questions/48863/ssh-add-complains-could-not-open-a-connection-to-your-authentication-agent/48868)

    SSH_AUTH_SOCK
    SSH_AGENT_PID

    sudo ssh-agent
    it's not a WSL issue, only run agent and ssh both as root could be successful for ssh-add under proxycommand
    This way works for agent:
    eval "$(ssh-agent)"
    ssh-add
    sudo SSH_AUTH_SOCK="$SSH_AUTH_SOCK" ……


# Client

## Putty

[Convert your PuTTY key to OpenSSH format](https://help.cloudforge.com/hc/en-us/articles/215242303-Converting-PuTTY-private-keys-to-OpenSSH-format)

    Open your private key in PuTTYGen
        Top menu “Conversions”->”Export OpenSSH key”.
        Save the new OpenSSH key when prompted.


## Remmina

[Remote desktop client with RDP, SSH, SPICE, VNC, and X2Go protocol support. - Remmina](https://remmina.org/jekyll/)


[Doing it the Open Source way: How to: Save SSH Password in Remmina the easy way](http://technologyflirt.blogspot.com/2013/02/how-to-save-ssh-password-in-remmina.html)