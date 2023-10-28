# https://stackoverflow.com/questions/23781488/how-to-make-ssh-remote-port-forward-that-listens-0-0-0-0
# sudo apt install socat
# this clones localhost:3129 to 0.0.0.0:3130
socat TCP-LISTEN:3130,fork,bind=0.0.0.0 TCP:localhost:3129