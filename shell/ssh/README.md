# \~/.ssh/config


Understanding ~/.ssh/config entries

From <https://www.cyberciti.biz/faq/create-ssh-config-file-on-linux-unix/> 


write public IP address in your RemoveForward option:
RemoteForward  8080 ###.###.###.###:81
also you need to specify GatewayPorts yes

From <https://serverfault.com/questions/820453/ssh-remote-forward-with-ssh-config-file-not-listening-to-all-addresses-listenin> 


Best way to use multiple SSH private keys on one client

From <https://stackoverflow.com/questions/2419566/best-way-to-use-multiple-ssh-private-keys-on-one-client/2419609> 

None of these solutions worked for me.
Instead, I elaborate on @Martin v. Löwis 's mention of setting a config file for SSH.
SSH will look for the user's ~/.ssh/config file.

From <https://stackoverflow.com/questions/4565700/how-to-specify-the-private-ssh-key-to-use-when-executing-shell-command-on-git> 
git remote add origin git@gitserv:myrepo.git


chmod 600 ~/.ssh/config
chown $USER ~/.ssh/config

From <https://serverfault.com/questions/253313/ssh-returns-bad-owner-or-permissions-on-ssh-config> 



# Bastion

## ProxyCommand

ProxyCommand /bin/nc 172.31.1.$(echo %h |cut -d- -f2) %p

From <https://qiita.com/white_aspara25/items/f363d15101945ed1e48b> 

SSH ProxyCommand example: Going through one host to reach another server

From <https://www.cyberciti.biz/faq/linux-unix-ssh-proxycommand-passing-through-one-host-gateway-server/> 
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



	

SSH from A through B to C, using private key on B

From <https://serverfault.com/questions/337274/ssh-from-a-through-b-to-c-using-private-key-on-b> 
	Host C
		ProxyCommand ssh -o 'ForwardAgent yes' B 'ssh-add && nc %h %p'
	or
		ProxyCommand ssh -T -q -o 'ForwardAgent yes' B 'ssh-add -t 1 ~/.ssh/mykey && nc %h %p'



	
	
Your proxycommand can be a shell script

From <https://stackoverflow.com/questions/33486339/can-an-ssh-config-file-use-variables> 
	Or:
	ProxyCommand bash -c '……'

		
## SSH Agent

ssh-add complains: Could not open a connection to your authentication agent

From <https://unix.stackexchange.com/questions/48863/ssh-add-complains-could-not-open-a-connection-to-your-authentication-agent/48868> 
	eval "$(ssh-agent)"


Handling Bastion Hosts on AWS via SSH Agent Forwarding

From <https://medium.com/@crishantha/handing-bastion-hosts-on-aws-via-ssh-agent-forwarding-f1d2d4e8622a> 


SSH_AUTH_SOCK
SSH_AGENT_PID

From <https://unix.stackexchange.com/questions/48863/ssh-add-complains-could-not-open-a-connection-to-your-authentication-agent/48868> 
	sudo ssh-agent
	it's not a WSL issue, only run agent and ssh both as root could be successful for ssh-add under proxycommand
	This way works for agent:
	eval "$(ssh-agent)"
	ssh-add
	sudo SSH_AUTH_SOCK="$SSH_AUTH_SOCK" ……
	
	


# Client

## Putty

convert your PuTTY key to OpenSSH format:

Open your private key in PuTTYGen
    Top menu “Conversions”->”Export OpenSSH key”.
    Save the new OpenSSH key when prompted.

From [https://help.cloudforge.com/hc/en-us/articles/215242303-Converting-PuTTY-private-keys-to-OpenSSH-format](https://help.cloudforge.com/hc/en-us/articles/215242303-Converting-PuTTY-private-keys-to-OpenSSH-format)

## Remmina

http://www.remmina.org/wp/

how-to-save-ssh-password-in-remmina
http://technologyflirt.blogspot.com/2013/02/how-to-save-ssh-password-in-remmina.html