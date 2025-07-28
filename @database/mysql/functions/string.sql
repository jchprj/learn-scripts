-- https://stackoverflow.com/questions/60090231/declare-variable-for-in-condition-in-where-clause
-- https://www.w3schools.com/sql/func_mysql_find_in_set.asp
-- https://dev.mysql.com/doc/refman/8.0/en/string-functions.html


SELECT FIND_IN_SET("a", "s,q,l");       -- 0
SELECT FIND_IN_SET("q", null);          -- null
SELECT FIND_IN_SET(1, "a,1,l");         -- 2
SELECT FIND_IN_SET(1, "a, 1,l");        -- 0
SELECT FIND_IN_SET("a", "sa,b,a");      -- 3
