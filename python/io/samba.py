# https://stackoverflow.com/questions/20422047/copying-files-from-smb-server-to-local-drivelinux-windows-in-python
# https://pysmb.readthedocs.io/en/latest/api/smb_SMBConnection.html
# pip3 install pysmb
from smb.SMBConnection import SMBConnection
username = ""
password = ""

conn = SMBConnection(username,
                     password,
                     'abc',
                     'localhost',
                     use_ntlm_v2 = True)
conn.connect('localhost', 139, timeout = 5)
with open('temp_test', 'wb') as fp:
    conn.retrieveFile('Folder', '/path/123.txt', fp)

# https://stackoverflow.com/questions/29991279/what-would-cause-pysmb-to-fail-when-osx-finder-connect-to-server-succeeds
# For port 445, use is_direct_tcp=True
conn = SMBConnection(username,
                     password,
                     'abc',
                     'localhost',
                     use_ntlm_v2 = True, 
                     is_direct_tcp=True)
conn.connect('localhost', 445, timeout = 5)
with open('temp_test', 'wb') as fp:
    conn.retrieveFile('Folder', '/path/123.txt', fp)