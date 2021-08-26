# https://unix.stackexchange.com/questions/33271/how-to-avoid-ssh-asking-permission

ssh -o StrictHostKeyChecking=no -l "$user" "$host"

# https://superuser.com/questions/1356043/how-to-use-password-from-environment-variable-in-linux-command

sshpass -p "$SSHPASS" ssh -o StrictHostKeyChecking=no user@example.com

# https://www.linuxjournal.com/content/easy-ssh-automation

ssh -t adam@webserver1.test.com 'cat /etc/hosts'

ssh-keygen
ssh-copy-id adam@webserver1.test.com

#!/bin/bash
if [ -f server.txt ]; then
        for server in $(cat server.txt); do
                ssh -t adam@$server  '
                echo $(uname -r)                '
        done
else
        echo 'No server.txt file'
fi

# http://www.linuxproblem.org/art_9.html
ssh-keygen
cat .ssh/id_rsa.pub | ssh b@B 'cat >> .ssh/authorized_keys'



# https://superuser.com/questions/457316/how-to-remove-connection-to-xx-xxx-xx-xxx-closed-message
ssh -o LogLevel=QUIET -t $SSH "
      some 
      commands
"