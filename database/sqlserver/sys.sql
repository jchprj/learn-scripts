-- https://stackoverflow.com/questions/175415/how-do-i-get-list-of-all-tables-in-a-database-using-tsql

SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE='BASE TABLE';


SELECT * FROM INFORMATION_SCHEMA.TABLES;

-- For SQL Server 2000:
SELECT * FROM sysobjects;
