-- https://stackoverflow.com/questions/12126991/cast-from-varchar-to-int-mysql
-- https://dev.mysql.com/doc/refman/8.0/en/cast-functions.html

-- The type for the result can be one of the following values:
-- BINARY[(N)]
-- CHAR[(N)]
-- DATE
-- DATETIME
-- DECIMAL[(M[,D])]
-- SIGNED [INTEGER]
-- TIME
-- UNSIGNED [INTEGER]

SELECT CAST(5 / 2  AS UNSIGNED) 



-- https://stackoverflow.com/questions/12821528/int-to-string-in-mysql
SELECT CAST("a", CHAR)