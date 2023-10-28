# https://stackoverflow.com/questions/2031111/in-python-how-can-i-put-a-thread-to-sleep-until-a-specific-time
# pip3 install pause

import requests, random, pause, datetime

current = datetime.datetime.now()
print("Current time:", current)
current_plus_5s = datetime.datetime(current.year, current.month, current.day, current.hour, current.minute, current.second + 5, current.microsecond)
print("Pause until:", current_plus_5s)
pause.until(current_plus_5s)