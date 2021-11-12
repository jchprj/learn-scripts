-- https://stackoverflow.com/questions/175415/how-do-i-get-list-of-all-tables-in-a-database-using-tsql

SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE='BASE TABLE';


SELECT * FROM INFORMATION_SCHEMA.TABLES;

-- For SQL Server 2000:
SELECT * FROM sysobjects;


-- https://social.msdn.microsoft.com/Forums/sqlserver/en-US/5c480997-7ea6-44f7-83b3-8881687ae442/how-can-you-get-the-current-database-name-via-tsql?forum=transactsql
SELECT db_name()