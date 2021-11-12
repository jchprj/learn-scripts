-- https://stackoverflow.com/questions/9624284/current-timestamp-in-milliseconds

-- @block in seconds
select UNIX_TIMESTAMP();

-- @block in milliseconds from MySQL (5.6+)
SELECT ROUND(UNIX_TIMESTAMP(CURTIME(4)) * 1000);

