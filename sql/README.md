# SQL

All .sql runs for MySQL by default, if targeting other SQL database, will put in specific folders.

For MySQL, the default connection configured in settings.json connects to localhost:3306 with user root and password 123456. Suggest run MySQL in Docker or by SSH local forward.

## How to run *.sql in VS Code

Extension requiremen

* Database management tool: mtxr.sqltools
* MySQL: mtxr.sqltools-driver-mysql
* MSSQL: mtxr.sqltools-driver-mssql
* SQLite: mtxr.sqltools-driver-sqlite

SQLite driver depends on Node.JS and sqlite3 from NPM which failed to install due to S3 package source issue, even installed from source which needs the even enterprise free for OOS Windows-Build-Tools, still cannot read any table from .db file.


