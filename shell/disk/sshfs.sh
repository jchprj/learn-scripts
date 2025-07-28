# Create local mount point
mkdir -p ~/remote-mount

# Mount remote directory
sshfs user@remote-server:/path/to/remote/directory ~/remote-mount

# sshfs user@remote-server:/path/to/remote/directory ~/remote-mount \
#  -o allow_other,reconnect,ServerAliveInterval=15,ServerAliveCountMax=3,IdentityFile=~/.ssh/id_rsa

umount ~/remote-mount