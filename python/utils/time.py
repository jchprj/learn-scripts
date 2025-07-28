# https://stackoverflow.com/questions/40507293/convert-string-in-gmt-format-to-datetime-format
# https://www.journaldev.com/23365/python-string-to-datetime-strptime
from datetime import datetime
b="Sep 23 09:53:38 2019 GMT"
date = datetime.strptime(b, "%b %d %H:%M:%S %Y %Z")
print(date)


# https://stackoverflow.com/questions/15509345/extracting-double-digit-months-and-days-from-a-python-date
d = date.today()
m1 = '{:02d}'.format(d.month)
print(m1)
m2 = '%02d' % d.month
print(m2)
m3 = d.strftime('%m')
print(m3)
m4 = f'{d.month:02d}'
print(m4)


# https://www.programiz.com/python-programming/datetime/strftime
d = date.strftime("%m/%d/%Y, %H:%M:%S")
print("Output 2:", d)	# 09/23/2019, 09:53:38

d = date.strftime("%d %b, %Y")
print("Output 3:", d)   # 23 Sep, 2019

d = date.strftime("%d %B, %Y")
print("Output 4:", d)   # 23 September, 2019

d = date.strftime("%I%p")
print("Output 5:", d)   # 09AM

# Directive	Meaning	Example
# %a	Abbreviated weekday name.	Sun, Mon, ...
# %A	Full weekday name.	Sunday, Monday, ...
# %w	Weekday as a decimal number.	0, 1, ..., 6
# %d	Day of the month as a zero-padded decimal.	01, 02, ..., 31
# %-d	Day of the month as a decimal number.	1, 2, ..., 30
# %b	Abbreviated month name.	Jan, Feb, ..., Dec
# %B	Full month name.	January, February, ...
# %m	Month as a zero-padded decimal number.	01, 02, ..., 12
# %-m	Month as a decimal number.	1, 2, ..., 12
# %y	Year without century as a zero-padded decimal number.	00, 01, ..., 99
# %-y	Year without century as a decimal number.	0, 1, ..., 99
# %Y	Year with century as a decimal number.	2013, 2019 etc.
# %H	Hour (24-hour clock) as a zero-padded decimal number.	00, 01, ..., 23
# %-H	Hour (24-hour clock) as a decimal number.	0, 1, ..., 23
# %I	Hour (12-hour clock) as a zero-padded decimal number.	01, 02, ..., 12
# %-I	Hour (12-hour clock) as a decimal number.	1, 2, ... 12
# %p	Locale’s AM or PM.	AM, PM
# %M	Minute as a zero-padded decimal number.	00, 01, ..., 59
# %-M	Minute as a decimal number.	0, 1, ..., 59
# %S	Second as a zero-padded decimal number.	00, 01, ..., 59
# %-S	Second as a decimal number.	0, 1, ..., 59
# %f	Microsecond as a decimal number, zero-padded on the left.	000000 - 999999
# %z	UTC offset in the form +HHMM or -HHMM.	 
# %Z	Time zone name.	 
# %j	Day of the year as a zero-padded decimal number.	001, 002, ..., 366
# %-j	Day of the year as a decimal number.	1, 2, ..., 366
# %U	Week number of the year (Sunday as the first day of the week). All days in a new year preceding the first Sunday are considered to be in week 0.	00, 01, ..., 53
# %W	Week number of the year (Monday as the first day of the week). All days in a new year preceding the first Monday are considered to be in week 0.	00, 01, ..., 53
# %c	Locale’s appropriate date and time representation.	Mon Sep 30 07:06:05 2013
# %x	Locale’s appropriate date representation.	09/30/13
# %X	Locale’s appropriate time representation.	07:06:05
# %%	A literal '%' character.	%