## Driver

[java - JDBC Microsoft SQL timeout not fired - Stack Overflow](https://stackoverflow.com/questions/35439885/jdbc-microsoft-sql-timeout-not-fired)

    String url = "jdbc:jtds:sqlserver://<ip_address>/<db_name>;instance=<SQLserver_name>;loginTimeout=5;socketTimeout=2";
    SQLconnection = DriverManager.getConnection(url, <userName>, <password>);


[Connecting with encryption - JDBC Driver for SQL Server | Microsoft Docs](https://docs.microsoft.com/en-us/sql/connect/jdbc/connecting-with-ssl-encryption?view=sql-server-ver16)

    String connectionUrl =
        "jdbc:sqlserver://localhost:1433;" +
        "databaseName=AdventureWorks;integratedSecurity=true;" +
        "encrypt=true;trustServerCertificate=true";

## SSMS

[Fix “Cannot generate SSPI context” while connecting to SQL Server](https://domainwebcenter.com/fix-cannot-generate-sspi-context-while-connecting-to-sql-server/)

	you can connect to MS SQL Server 2012 from the office, but when your try to connect from home over remote (in this case AVENTAIL) connection you would get an error message:
	“Cannot generate SSPI context“.
	
    runas/netonly /user:Doman\User "C:\Program Files (x86)\Microsoft SQL Server\130\Tools\Binn\ManagementStudio\Ssms.exe"



[Automate Registering and Maintaining Servers in SQL Server Management Studio (SSMS)](https://www.mssqltips.com/sqlservertip/3252/automate-registering-and-maintaining-servers-in-sql-server-management-studio-ssms/)



[PowerShell Gallery | SqlServer 21.1.18218](https://www.powershellgallery.com/packages/SqlServer/21.1.18218)

	This module allows SQL Server developers, administrators and business intelligence professionals to automate database development and server administration, as well as both multidimensional and tabular cube processing
	
	
[8 Ways to Export SQL Results To a Text File](https://www.sqlservercentral.com/articles/8-ways-to-export-sql-results-to-a-text-file)

	Show results to a file in SSMS: Tools>Options>Query results>SQL Server
	In the toolbar, there are 'Results to Text', 'Results to Grid' and 'Results to File' icons


[How to Generate Database Scripts With Data In SQL Server](https://www.nuttyabouthosting.co.uk/knowledgebase/article/how-to-generate-database-scripts-with-data-in-sql-server)

