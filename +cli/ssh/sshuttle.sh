# https://sshuttle.readthedocs.io/en/stable/usage.html

sshuttle -r username@sshserver 0/0  # short cut for 0.0.0.0/0(Forward all traffic)


# https://sshuttle.readthedocs.io/en/stable/manpage.html
# --ssh-cmd 'ssh -v'

# https://www.redhat.com/sysadmin/ssh-automation-sshpass
# --ssh-cmd 'sshpass -p "PASSWORD" ssh -v'

# https://github.com/sshuttle/sshuttle/issues/334
# Bug(merged): Name cannot be resolved if it contains - 


# https://github.com/sshuttle/sshuttle
# Run latest code

# virtualenv -p python3 /tmp/sshuttle
# . /tmp/sshuttle/bin/activate
# git clone https://github.com/sshuttle/sshuttle.git
# cd sshuttle
# ./setup.py install


# https://superuser.com/questions/507239/is-there-a-sshuttle-equivalent-for-windows-ssh-tunneling-for-windows
# Fow Windows, socks proxy with ssh -D