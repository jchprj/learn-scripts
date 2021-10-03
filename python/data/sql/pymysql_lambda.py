# https://docs.aws.amazon.com/lambda/latest/dg/services-rds-tutorial.html
# https://docs.aws.amazon.com/lambda/latest/dg/python-handler.html
# https://docs.aws.amazon.com/lambda/latest/operatorguide/global-scope.html
# Global variables retain their value between invocations in the same execution environment.
# Libraries should be defined in the initialization code outside of the handler, so they are loaded once when the execution environment is created. 
# The instance variable is lazily loaded.
# The connection logic should also be managed in the initialization handler, and any connection strings containing secrets should not be stored in plaintext.

# https://stackoverflow.com/questions/45807461/how-to-properly-close-the-database-connection-in-a-lambda-function
# Maybe use: if self.conn == None or self.conn.close == 1

# https://docs.aws.amazon.com/lambda/latest/dg/configuration-database.html

# https://docs.aws.amazon.com/lambda/latest/dg/python-package.html
# pip install --target ./package requests
# cd package
# zip -r ../my-deployment-package.zip .
# cd ..
# zip -g my-deployment-package.zip lambda_function.py

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

# This is NOT lazy loading.
try:
    conn = pymysql.connect(host=rds_host, user=name, passwd=password, db=db_name, connect_timeout=5)
except pymysql.MySQLError as e:
    logger.error("ERROR: Unexpected error: Could not connect to MySQL instance.")
    logger.error(e)
    sys.exit()

logger.info("SUCCESS: Connection to RDS MySQL instance succeeded")
def lambda_handler(event, context):
    """
    This function fetches content from MySQL RDS instance
    """

    item_count = 0

    with conn.cursor() as cur:
        cur.execute("show master status")
        for row in cur:
            item_count += 1
            logger.info(row)
            #print(row)
            return "{0}:{1}".format(row[0], row[1])
    conn.commit()

    return "Got %d items from RDS MySQL table" %(item_count)

# print(handler(1, 1))