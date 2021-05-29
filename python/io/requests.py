# https://docs.python-requests.org/en/master/
# Requests: HTTP for Humans™
# Author: https://kenreitz.org/


# https://stackoverflow.com/questions/21965484/timeout-for-python-requests-get-entire-response

import requests, urllib3

# https://stackoverflow.com/questions/27981545/suppress-insecurerequestwarning-unverified-https-request-is-being-made-in-pytho
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

url = "https://httpstat.us/200?sleep=5000"

# If you specify a single value for the timeout, like this:

r = requests.get(url, timeout=5)
# The timeout value will be applied to both the connect and the read timeouts. Specify a tuple if you would like to set the values separately:

r = requests.get(url, timeout=(3.05, 27))
# If the remote server is very slow, you can tell Requests to wait forever for a response, by passing None as a timeout value and then retrieving a cup of coffee.

r = requests.get(url, timeout=None, verify=False)