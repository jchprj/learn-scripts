
-- @block https://dev.mysql.com/doc/refman/5.7/en/show-events.html

SHOW EVENTS ;


-- @block 

drop event if exists test_event ;



-- @block 

create event if not exists test_event
on schedule every 1 month
starts '2022-09-28 00:00:00'
do
begin
	drop event if exists test_event ;
end ;


-- @block https://www.surekhatech.com/blog/mysql-event-scheduler
CREATE EVENT IF NOT EXISTS one_time_event
ON SCHEDULE AT CURRENT_TIMESTAMP
DO
   SELECT CURRENT_TIME();

SHOW EVENTS FROM database_name;

CREATE EVENT one_time_event
ON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL 1 MINUTE
ON COMPLETION PRESERVE
DO
   SELECT CURRENT_TIME();


-- @block Need to be enabled

-- https://stackoverflow.com/questions/16767923/mysql-event-not-working
-- Permanent (needs restart): change configuration file
SELECT @@global.event_scheduler;
SET GLOBAL event_scheduler = ON;
SHOW PROCESSLIST; -- User event_scheduler

-- https://stackoverflow.com/questions/39158933/how-to-check-event-scheduler-status-mysql
SHOW VARIABLES
WHERE VARIABLE_NAME = 'event_scheduler'