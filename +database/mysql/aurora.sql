-- https://dba.stackexchange.com/questions/68272/what-is-default-mysql-binlog-retention-in-aws-rds
-- call mysql.rds_set_configuration('binlog retention hours', 24);
call mysql.rds_show_configuration


-- https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Overview.Endpoints.html
select @@aurora_server_id;


