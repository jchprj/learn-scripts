
import sys, urllib
from sqlalchemy import create_engine, text
import pymysql
from pymysql.constants import CLIENT
#rds settings
rds_connection_string  = "localhost:3306/test"
username = "root"
password = "123456"

try:
    # https://stackoverflow.com/questions/63596111/how-to-execute-multiple-sql-commands-at-once-in-pd-read-sql-query
    # https://stackoverflow.com/questions/1423804/writing-a-connection-string-when-password-contains-special-characters
    # https://stackoverflow.com/questions/35640726/how-to-set-connection-timeout-in-sqlalchemy
    engine = create_engine("mysql+pymysql://%s:%s@%s" % (username, urllib.parse.quote_plus(password), rds_connection_string), 
                           connect_args={
                             "client_flag": CLIENT.MULTI_STATEMENTS, 
                             "connect_timeout": 2 # in seconds
                           })
    conn = engine.raw_connection()
except pymysql.MySQLError as e:
    print("ERROR: Unexpected error: Could not connect to MySQL instance.")
    print(e)
    sys.exit()

print("SUCCESS: Connection to RDS MySQL instance succeeded")

with conn.cursor() as cur:
    cur.execute("show master status")
    # https://stackoverflow.com/questions/75464639/not-an-executable-object-select-from-loanparcel
    cur.execute(text("show master status"))
conn.commit()
print("DONE")
conn.close()