-- https://dba.stackexchange.com/questions/68272/what-is-default-mysql-binlog-retention-in-aws-rds
-- call mysql.rds_set_configuration('binlog retention hours', 24);
call mysql.rds_show_configuration


-- https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Overview.Endpoints.html
select @@aurora_server_id;


-- https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/mysql-stored-proc-replicating.html
-- mysql.rds_import_binlog_ssl_material
-- mysql.rds_next_master_log
-- mysql.rds_remove_binlog_ssl_material
-- mysql.rds_reset_external_master
-- mysql.rds_set_external_master
-- mysql.rds_set_external_master_with_auto_position
-- mysql.rds_set_external_master_with_delay
-- mysql.rds_set_master_auto_position
-- mysql.rds_set_source_delay
-- mysql.rds_skip_transaction_with_gtid
-- mysql.rds_skip_repl_error
-- mysql.rds_start_replication
-- mysql.rds_start_replication_until
-- mysql.rds_start_replication_until_gtid
-- mysql.rds_stop_replication