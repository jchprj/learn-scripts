-- https://dev.mysql.com/doc/refman/8.0/en/declare-handler.html

-- https://dev.mysql.com/doc/mysql-errors/8.0/en/server-error-reference.html

DECLARE CONTINUE HANDLER FOR 1051
  BEGIN
    -- body of handler
  END;