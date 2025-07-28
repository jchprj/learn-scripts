# https://docs.python.org/3/library/csv.html

import csv

# https://stackoverflow.com/questions/15063936/csv-error-field-larger-than-field-limit-131072
import sys
csv.field_size_limit(sys.maxsize)

reader = csv.reader(['one,two,three'])
print(list(reader))

with open('temp_test.csv', 'w', newline='') as csvfile:
    f = csv.writer(csvfile)
    f.writerow("a")

with open('temp_test.csv', newline='') as csvfile:
    spamreader = csv.reader(csvfile, delimiter=',', quotechar='|')
    for row in spamreader:
        print(', '.join(row))


# https://stackoverflow.com/questions/12136850/tab-delimited-file-using-csv-reader-not-delimiting-where-i-expect-it-to
