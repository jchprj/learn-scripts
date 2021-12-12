# https://stackoverflow.com/questions/842059/is-there-a-portable-way-to-get-the-current-username-in-python

import getpass
username = getpass.getuser()
print(username)
password = getpass.getpass()        # Prompt for a password, with echo turned off
print(password)