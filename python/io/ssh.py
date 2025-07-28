# https://stackoverflow.com/questions/1939107/python-libraries-for-ssh-handling

import subprocess
subprocess.check_call(['ssh', 'server', 'command'])
subprocess.check_call(['scp', 'server:file', 'file'])

import paramiko
from contextlib import contextmanager
host = '192.168.10.142'
username = 'slacker'
password = 'password'
def create_ssh(host=host, username=username, password=password):
    ssh = paramiko.SSHClient()
    ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy()) 
    try:
       print("creating connection")
       ssh.connect(host, username=username, password=password)
       print("connected")
       yield ssh
    finally:
       print("closing connection")
       ssh.close()
       print("closed")


# https://stackoverflow.com/questions/21903411/enable-python-to-connect-to-mysql-via-ssh-tunnelling
# SSHTunnelForwarder