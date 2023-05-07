# https://stackoverflow.com/questions/5504340/python-mysqldb-connection-close-vs-cursor-close
# https://stackoverflow.com/questions/22699807/python-mysql-using-pymysql-auto-reconnect/55867611
# Reconnect not implemented

import sys
import pymysql
from pymysql.constants import CLIENT
#rds settings
rds_host  = "localhost"
rds_port = 3306
username = "root"
password = "123456"
db_name = "test"

try:
    # https://stackoverflow.com/questions/58544640/pymysql-unable-to-execute-multiple-queries
    conn = pymysql.connect(host=rds_host, port=rds_port, user=username, passwd=password, db=db_name, connect_timeout=5, client_flag=CLIENT.MULTI_STATEMENTS)
except pymysql.MySQLError as e:
    print("ERROR: Unexpected error: Could not connect to MySQL instance.")
    print(e)
    sys.exit()

print("SUCCESS: Connection to RDS MySQL instance succeeded")
item_count = 0

with conn.cursor() as cur:
    cur.execute("show master status")
    for row in cur:
        item_count += 1
        print(row)
conn.commit()
print("Got %d items from RDS MySQL table" % (item_count))
# print(handler(1, 1))

# https://stackoverflow.com/questions/41361261/get-multiple-lists-data-from-mysql-storedprocedure
# https://peps.python.org/pep-0249/#nextset
# If there are no more sets, the method returns None.
with conn.cursor() as cur:
    nextset = cur.execute("show master status")
    while(nextset != None):
        for row in cur:
            print(row)
        nextset = cur.nextset()

conn.commit()
conn.close()