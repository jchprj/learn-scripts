-- https://dev.mysql.com/doc/refman/8.0/en/information-functions.html

-- https://stackoverflow.com/questions/2229218/does-mysql-have-an-equivalent-to-rowcount-like-in-mssql
-- After select
SELECT FOUND_ROWS();

-- After UPDATE/DELETE/INSERT
SELECT ROW_COUNT();

-- https://stackoverflow.com/questions/26903909/how-can-i-use-the-number-of-found-rows-assigned-on-a-variable-and-use-it-in-inse
-- SET @limit = (SELECT FOUND_ROWS());