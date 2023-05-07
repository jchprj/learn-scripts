-- https://dev.mysql.com/doc/refman/8.0/en/signal.html
-- Class = '00' (success) Illegal. 
-- Class = '01' (warning)
-- Class = '02' (not found)
-- Class > '02' (exception)
-- Class = '40'

-- https://dev.mysql.com/doc/refman/8.0/en/resignal.html

CREATE PROCEDURE p (pval INT)
BEGIN
  DECLARE specialty CONDITION FOR SQLSTATE '45000';
  IF pval = 0 THEN
    SIGNAL SQLSTATE '01000';
  ELSEIF pval = 1 THEN
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'An error occurred';
  ELSEIF pval = 2 THEN
    SIGNAL specialty
      SET MESSAGE_TEXT = 'An error occurred';
  ELSE
    SIGNAL SQLSTATE '01000'
      SET MESSAGE_TEXT = 'A warning occurred', MYSQL_ERRNO = 1000;
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'An error occurred', MYSQL_ERRNO = 1001;
  END IF;
END;

-- https://stackoverflow.com/questions/21441967/using-variable-for-error-code-in-mysql-with-sqlstate
CREATE PROCEDURE test ()
BEGIN
  DECLARE _messageText VARCHAR(128);
  SELECT "message" INTO _messageText
  SIGNAL SQLSTATE '99999' SET MESSAGE_TEXT = _messageText
END

-- https://stackoverflow.com/questions/38924116/mysql-equivalent-of-raiserror
SET @s = 'Unknown condition type  !';
SIGNAL SQLSTATE '45001' SET MESSAGE_TEXT = @s;