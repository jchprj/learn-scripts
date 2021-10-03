# Issues

## No way to get results of 'show master status' in a procedure

- https://stackoverflow.com/questions/50032295/mysql-error-not-allowed-to-return-a-result-set-from-a-function
- https://dev.mysql.com/doc/refman/5.7/en/create-procedure.html
- https://stackoverflow.com/questions/5220959/mysql-select-value-from-show-master-status-query


> Statements that return a result set can be used within a stored procedure but not within a stored function. This prohibition includes SELECT statements that do not have an INTO var_list clause and other statements such as SHOW, EXPLAIN, and CHECK TABLE. For statements that can be determined at function definition time to return a result set, a Not allowed to return a result set from a function error occurs (ER_SP_NO_RETSET). For statements that can be determined only at runtime to return a result set, a PROCEDURE %s can't return a result set in the given context error occurs (ER_SP_BADSELECT).

