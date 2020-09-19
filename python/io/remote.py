# pypsrp - Python PowerShell Remoting Protocol Client library

# From <https://github.com/jborean93/pypsrp> 
# From <https://pypi.org/project/pypsrp/> 
# connection_timeout: default is 30
# reconnection_retries: default is 0


# pip install pypsrp

import os
from pypsrp.client import Client

username = os.environ["ANSIBLE_WIN_USER"]
password = os.environ["ANSIBLE_WIN_PASSWORD"]
print(username)
print(password)

# this takes in the same kwargs as the WSMan object
client = Client("localhost", port=5985, ssl=False, cert_validation=False, username=username, password=password)
# execute a cmd command
stdout, stderr, rc = client.execute_cmd("dir")
print(stdout)
stdout, stderr, rc = client.execute_cmd("powershell.exe gci $pwd")
print(stderr)

exit()

sanitised_stderr = client.sanitise_clixml(stderr)
# execute a PowerShell script
output, streams, had_errors = client.execute_ps('''$path = "%s"
if (Test-Path -Path $path) {
    Remove-Item -Path $path -Force -Recurse
}
New-Item -Path $path -ItemType Directory''' % path)
output, streams, had_errors = client.execute_ps("New-Item -Path C:\\temp\\folder -ItemType Directory")
# copy a file from the local host to the remote host
client.copy("~/file.txt", "C:\\temp\\file.txt")
# fetch a file from the remote host to the local host
client.fetch("C:\\temp\\file.txt", "~/file.txt")
