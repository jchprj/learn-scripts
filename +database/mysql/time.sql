-- https://stackoverflow.com/questions/9624284/current-timestamp-in-milliseconds

-- @block 
select UNIX_TIMESTAMP();



-- @block 
SELECT ROUND(UNIX_TIMESTAMP(CURTIME(4)) * 1000); --- 5.6+

-- @block milliseconds
select CURTIME(3), round(date_format(CURTIME(3), "%f")/1000)

-- @block microseconds
select date_format(CURTIME(6), "%f")

-- @block 
select now(), unix_timestamp(now());


-- https://www.w3schools.com/sql/func_mysql_date_add.asp
-- 
-- DATE_ADD(date, INTERVAL value addunit)
-- addunit	Required. The type of interval to add. Can be one of the following values:
-- MICROSECOND
-- SECOND
-- MINUTE
-- HOUR
-- DAY
-- WEEK
-- MONTH
-- QUARTER
-- YEAR
-- SECOND_MICROSECOND
-- MINUTE_MICROSECOND
-- MINUTE_SECOND
-- HOUR_MICROSECOND
-- HOUR_SECOND
-- HOUR_MINUTE
-- DAY_MICROSECOND
-- DAY_SECOND
-- DAY_MINUTE
-- DAY_HOUR
-- YEAR_MONTH
SELECT DATE_ADD("2017-06-15", INTERVAL 10 DAY);