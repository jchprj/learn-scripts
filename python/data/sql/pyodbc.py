# https://docs.microsoft.com/en-us/sql/connect/python/pyodbc/python-sql-driver-pyodbc?view=sql-server-ver15
# pip install pyodbc

import pyodbc

sql = "SELECT @@version;"

# Some other example server values are
# server = 'localhost\sqlexpress' # for a named instance
# server = 'myserver,port' # to specify an alternate port
server = 'tcp:tcp:myserver.database.windows.net' 
database = 'mydb' 
username = 'myusername' 
password = 'mypassword' 
connection_string = 'DRIVER={{ODBC Driver 17 for SQL Server}};SERVER={0};DATABASE={1};UID={2};PWD={3}'
cnxn = pyodbc.connect(connection_string.format(server, database, username, password))
cursor = cnxn.cursor()
cursor.execute(sql) 
row = cursor.fetchone() 
while row: 
    print(row[0])
    row = cursor.fetchone()