# https://stackoverflow.com/questions/35650793/python-get-all-months-in-range
# https://dateutil.readthedocs.io/en/latest/index.html
# pip3 install python-dateutil
from dateutil.relativedelta import relativedelta
import datetime

result = []

current = datetime.date.today()
to = current + relativedelta(years=1)

while current <= to:
    result.append([current.year, current.month])
    current += relativedelta(months=1)

print(result)