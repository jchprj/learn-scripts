# Database

## SQL

How to run `*.sql` in VS Code

Extension requirement

* Database management tool: mtxr.sqltools
* MySQL: mtxr.sqltools-driver-mysql
* MSSQL: mtxr.sqltools-driver-mssql
* SQLite: mtxr.sqltools-driver-sqlite

SQLite driver depends on Node.JS and sqlite3 from NPM which failed to install due to S3 package source issue, even installed from source which needs the even enterprise free for OOS Windows-Build-Tools, still cannot read any table from .db file.

### MySQL

For MySQL, the default connection configured in settings.json connects to localhost:3306 with user root and password 123456. Suggest run MySQL in Docker or by SSH local forward.


## NOSQL

### MongoDB

How to run `*.mongodb` in VS Code

Extension: mongodb.mongodb-vscode

1. Create connection in MongoDB tab
2. Connect to the MongoDB in tab
3. Open *.mongodb file in editor
4. Selected query lines(should include at least one whole line), a button "Run Selected Lines From Playground" will appear above the selected lines
5. Click the button to run the selected query lines

By default, every time click the button, a confirmation prompt will popup, to disable the confirmation and run directly, need to edit the settings of this extension in VS Code settings(but not applicable for folder scope setting, only for user or workspace).

By default, if does not select `use ???;` line, all operations will be executed inside `test` database. To specify database, select `use ???;` line as first line.