-- https://hevodata.com/learn/using-mysql-binlog/
-- https://www.thegeekstuff.com/2017/08/mysqlbinlog-examples/

-- @block 
show variables like '%bin%';
show variables like "expire_logs_days";

-- @block 
-- SET GLOBAL log_bin = ON;
-- SET GLOBAL binlog_format = 'STATEMENT';
-- SET GLOBAL binlog_format = 'MIXED';		
-- SET GLOBAL binlog_format = 'ROW';
-- SET GLOBAL expire_logs_days = number_of_days;

-- @block 
SHOW BINARY LOGS;