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

