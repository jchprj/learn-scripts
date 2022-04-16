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


-- https://www.w3schools.com/sql/func_sqlserver_dateadd.asp
-- DATEADD(interval, number, date)

-- interval	Required. The time/date interval to add. Can be one of the following values:
-- year, yyyy, yy = Year
-- quarter, qq, q = Quarter
-- month, mm, m = month
-- dayofyear, dy, y = Day of the year
-- day, dd, d = Day
-- week, ww, wk = Week
-- weekday, dw, w = Weekday
-- hour, hh = hour
-- minute, mi, n = Minute
-- second, ss, s = Second
-- millisecond, ms = Millisecond
SELECT DATEADD(year, 1, '2017/08/25') AS DateAdd;