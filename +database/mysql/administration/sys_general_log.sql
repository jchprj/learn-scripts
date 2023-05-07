
-- How to enable MySQL Query Log?

-- From <https://stackoverflow.com/questions/6479107/how-to-enable-mysql-query-log> 

-- @block general log on
	SET global general_log = 1;

-- @block general log off
	SET global general_log = 0;

	
-- @block Logging to a TABLE
	SET global general_log = 1;
	SET global log_output = 'table';

-- @block select logs
	select * from mysql.general_log 
	where  event_time  > (now() - INTERVAL 8 SECOND) and thread_id not in(9 , 628)
	and argument <> "SELECT 1" and argument <> "" 
	and argument <> "SET NAMES 'UTF8'"  and argument <> "SHOW STATUS"  
	and command_type = "Query"  and argument <> "SET PROFILING=1"


-- @block logging mysql queries from docker container

-- From <https://stackoverflow.com/questions/52968679/logging-mysql-queries-from-docker-container> 
SET global log_output = 'FILE'; 
SET global general_log_file='/var/log/mysql/all.log'; 
SET global general_log = 1;




-- In 5.7 ; column sql_text is changed to BLOB... Hence, you need to use select CONVERT(sql_text USING utf8 ) from mysql.slow_log ;

-- From <https://dba.stackexchange.com/questions/168853/in-slow-log-table-sql-text-column-is-blob> 