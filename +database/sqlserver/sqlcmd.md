# sqlcmd Utility

https://docs.microsoft.com/en-us/sql/tools/sqlcmd-utility?view=sql-server-ver15


## Usage
```
sqlcmd -S testsrv.database.windows.net -d Target_DB_or_DW -U alice@aadtest.onmicrosoft.com -P password -Q "select * from Table"


sqlcmd -S testsrv.database.windows.net -d Target_DB_or_DW -U alice@aadtest.onmicrosoft.com -P password -Q "select * from Table" -o "output.txt"
```

https://www.sqlservercentral.com/articles/8-ways-to-export-sql-results-to-a-text-file
```
sqlcmd -i c:\sql\myquery.sql -o c:\sql\myoutput.txt
```