-- https://dev.mysql.com/doc/refman/8.0/en/set-variable.html
-- SET variable = expr [, variable = expr] ...

-- variable: {
--     user_var_name
--   | param_name
--   | local_var_name
--   | {GLOBAL | @@GLOBAL.} system_var_name
--   | {PERSIST | @@PERSIST.} system_var_name
--   | {PERSIST_ONLY | @@PERSIST_ONLY.} system_var_name
--   | [SESSION | @@SESSION. | @@] system_var_name
-- }


SET @var_name = expr;
SET @name = 43;
SET @total_tax = (SELECT SUM(tax) FROM taxable_transactions);


-- To assign a value to a global system variable
SET GLOBAL max_connections = 1000;
SET @@GLOBAL.max_connections = 1000;


-- To assign a value to a session system variable
SET SESSION sql_mode = 'TRADITIONAL';
SET LOCAL sql_mode = 'TRADITIONAL';
SET @@SESSION.sql_mode = 'TRADITIONAL';
SET @@LOCAL.sql_mode = 'TRADITIONAL';
SET @@sql_mode = 'TRADITIONAL';
SET sql_mode = 'TRADITIONAL';