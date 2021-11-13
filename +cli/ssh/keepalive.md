
# Keep alive

this example will send an ssh keepalive every 60 seconds:
ssh -o "ServerAliveInterval 60" <SERVER_ADDRESS>

From <https://superuser.com/questions/699676/how-to-prevent-ssh-from-disconnecting-if-its-been-idle-for-a-while> 

1. The client will wait idle for 60 seconds (ServerAliveInterval time) and, send a "no-op null packet" to the server and expect a response. If no response comes, then it will keep trying the above process till 10 (ServerAliveCountMax) times (600 seconds). If the server still doesn't respond, then the client disconnects the ssh connection.

From <https://unix.stackexchange.com/questions/3026/what-options-serveraliveinterval-and-clientaliveinterval-in-sshd-config-exac> 

How to prevent Linux SSH client from disconnecting using ServerAliveInterval

From <https://forum.ivorde.com/how-to-prevent-linux-ssh-client-from-disconnecting-using-serveraliveinterval-t19451.html> 



5 Ways to Keep Remote SSH Sessions and Processes Running After Disconnection

From <https://www.tecmint.com/keep-remote-ssh-sessions-running-after-disconnection/> 

screen
tmux
nohup   fg
diswon
setsid






ssh: check if a tunnel is alive

From <https://stackoverflow.com/questions/1998297/ssh-check-if-a-tunnel-is-alive> 

# Auto SSH

So the game-changer here is AutoSSH.

From <https://www.everythingcli.org/ssh-tunnelling-for-fun-and-profit-autossh/> 


autossh -M 0 -o "ServerAliveInterval 30" -o "ServerAliveCountMax 3" -L 5000:localhost:3306 cytopia@everythingcli.org
autossh -M 0 -f -T -N cli-mysql-tunnel

The important part to remember is that -f (run in background) is not passed to the ssh command, but handled by autossh itself. 
Apart from that you can then use it just like you would use ssh to create any forward or reverse tunnels.
in a background run a passphrase cannot be entered interactively

AutoSSH during boot with systemd



put the command in /etc/rc.local or similar files that are run at your system startup

From <https://linuxaria.com/howto/permanent-ssh-tunnels-with-autossh> 

To start your connection, add this to /etc/rc.local (or use an actual systemd init script)

1. su -  yourusername -c "autossh -M20000 -f myhost &>/var/log/autossh.log" &

From <https://www.quora.com/In-ubuntu-how-can-I-have-an-ssh-session-auto-reconnect> 


