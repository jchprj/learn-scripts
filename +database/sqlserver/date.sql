-- @block Get the records of last month in SQL server
-- https://stackoverflow.com/questions/1424999/get-the-records-of-last-month-in-sql-server

SELECT * 
FROM Member
WHERE DATEPART(m, date_created) = DATEPART(m, DATEADD(m, -1, getdate()))
AND DATEPART(yyyy, date_created) = DATEPART(yyyy, DATEADD(m, -1, getdate()))


-- @block Get last 30 day records from today date in SQL Server
-- https://stackoverflow.com/questions/27479856/get-last-30-day-records-from-today-date-in-sql-server/27480024

SELECT * FROM  product 
WHERE pdate >= DATEADD(day,-30,GETDATE()) 
and   pdate <= getdate()