
error: Bind to port 2750 on 0.0.0.0 failed: Permission denied. 
error: Bind to port 2750 on :: failed: Permission denied. 
Fatal: Cannot bind any address	
Sshd.service: main process exited, code=exited, status=255/n/a
Unit sshd.service entered failed state. 
Unit sshd.service cannot be reloaded because it is inactive.


You probably need to tell selinux that it's ok for sshd to use an alternate port. The default centos7 has selinux enabled. You can allow an alternate port with this command.

From <https://www.linuxquestions.org/questions/linux-newbie-8/not-able-to-change-ssh-port-4175557377/> 
semanage port -a -t ssh_port_t -p tcp 2750






Your home directory ~, your ~/.ssh directory and the ~/.ssh/authorized_keys file on the remote machine must be writable only by you: rwx------ and rwxr-xr-x are fine, but rwxrwx--- is no good¹, even if you are the only user in your group (if you prefer numeric modes: 700or 755, not 775).

From <https://unix.stackexchange.com/questions/36540/why-am-i-still-getting-a-password-prompt-with-ssh-with-public-key-authentication> 




+KeepAlive yes
+ClientAliveInterval 60
+ClientAliveCountMax 3

From <http://gentooexperimental.org/~patrick/weblog/archives/2011-04.html#e2011-04-14T10_16_54.txt> 
/etc/ssh/ssd_config

ClientAliveInterval: number of seconds that the server will wait before sending a null packet to the client (to keep the connection alive).
Setting a value of 0 (the default) will disable these features so your connection could drop if it is idle for too long.

From <https://unix.stackexchange.com/questions/3026/what-options-serveraliveinterval-and-clientaliveinterval-in-sshd-config-exac> 



Remote port forwarding
SSH doesn’t by default allow remote hosts to forwarded ports.

From <https://blog.trackets.com/2014/05/17/ssh-tunnel-local-and-remote-port-forwarding-explained-with-examples.html> 
GatewayPorts yes


PermitRootLogin

From <https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/v2v_guide/preparation_before_the_p2v_migration-enable_root_login_over_ssh> 


cat /etc/ssh/sshd_config
...
X11Forwarding yes
X11UseLocalhost yes

From <https://www.linuxquestions.org/questions/linux-networking-3/ssh-x-cannot-open-display-925852/> 
X11DisplayOffset 0
