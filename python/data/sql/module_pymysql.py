# https://stackoverflow.com/questions/5504340/python-mysqldb-connection-close-vs-cursor-close
# https://stackoverflow.com/questions/22699807/python-mysql-using-pymysql-auto-reconnect/55867611
# Reconnect not implemented

import sys
import logging
import pymysql
#rds settings
rds_host  = "localhost"
name = "root"
password = "123456"
db_name = "test"

logger = logging.getLogger()
logger.setLevel(logging.INFO)

try:
    conn = pymysql.connect(host=rds_host, user=name, passwd=password, db=db_name, connect_timeout=5)
except pymysql.MySQLError as e:
    logger.error("ERROR: Unexpected error: Could not connect to MySQL instance.")
    logger.error(e)
    sys.exit()

logger.info("SUCCESS: Connection to RDS MySQL instance succeeded")

item_count = 0

with conn.cursor() as cur:
    cur.execute("show master status")
    for row in cur:
        item_count += 1
        logger.info(row)
        #print(row)
conn.commit()
logger.info("Got %d items from RDS MySQL table" %(item_count))

# print(handler(1, 1))
conn.close()