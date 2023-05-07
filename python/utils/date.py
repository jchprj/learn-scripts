# https://stackoverflow.com/questions/35650793/python-get-all-months-in-range
# https://dateutil.readthedocs.io/en/latest/index.html
# pip3 install python-dateutil
from dateutil.relativedelta import relativedelta
import datetime

# https://www.geeksforgeeks.org/python-now-function/
current_time = datetime.datetime.now()
print (f"Time now at greenwich meridian is : {current_time}")
print (f"Year : {current_time.year}")
print (f"Month : {current_time.month}")
print (f"Day : {current_time.day}")
print (f"Hour : {current_time.hour}")
print (f"Minute : {current_time.minute}")
print (f"Second : {current_time.second}")
print (f"Microsecond : {current_time.microsecond}")

import pytz
current_time = datetime.datetime.now(pytz.timezone('Asia/Calcutta'))
print (f"The current time in india is : {current_time}")


result = []

current = datetime.date.today()
to = current + relativedelta(years=1)

while current <= to:
    result.append([current.year, current.month])
    current += relativedelta(months=1)

print(result)


# https://www.programiz.com/python-programming/datetime/strftime
from datetime import datetime

timestamp = 1528797322
date_time = datetime.fromtimestamp(timestamp)

print("Date time object:", date_time)

d = date_time.strftime("%m/%d/%Y, %H:%M:%S")
print("Output 2:", d)	

d = date_time.strftime("%d %b, %Y")
print("Output 3:", d)

d = date_time.strftime("%d %B, %Y")
print("Output 4:", d)

d = date_time.strftime("%I%p")
print("Output 5:", d)



# Format codes %c, %x and %X are used for locale's appropriate date and time representation.
d = date_time.strftime("%c")
print("Output 1:", d)	

d = date_time.strftime("%x")
print("Output 2:", d)

d = date_time.strftime("%X")
print("Output 3:", d)


# https://stackoverflow.com/questions/1345827/how-do-i-find-the-time-difference-between-two-datetime-objects-in-python
import datetime
first_time = datetime.datetime(2012, 3, 5, 23, 8, 15)
later_time = datetime.datetime.now()
difference = later_time - first_time
print(f"difference: {difference}")
print(f"difference: {difference.total_seconds()}")