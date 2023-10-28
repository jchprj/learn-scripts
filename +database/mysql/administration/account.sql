-- https://dev.mysql.com/doc/refman/5.6/en/create-user.html
-- https://dev.mysql.com/doc/refman/5.6/en/drop-user.html
-- https://processwire.com/talk/topic/27018-server-is-running-in-secure-auth-mode-but-password-in-the-old-format/#comment-223298

CREATE USER 'jeffrey'@'localhost' IDENTIFIED WITH mysql_native_password;
SET old_passwords = 0;
SET PASSWORD FOR 'jeffrey'@'localhost' = PASSWORD('password');

CREATE USER 'jeffrey'@'localhost' IDENTIFIED BY 'password';
CREATE USER 'jeffrey'@'localhost' IDENTIFIED BY PASSWORD '*90E462C37378CED12064BB3388827D2BA3A9B689';
CREATE USER 'jeffrey'@'localhost'; -- NO PASSWORD

DROP USER 'jeffrey'@'localhost';


-- https://alvinalexander.com/blog/post/mysql/show-users-i-ve-created-in-mysql-database/#:~:text=To%20show%20the%20users%20in,the%20columns%20from%20the%20mysql.
select * from mysql.user;


-- https://dev.mysql.com/doc/refman/8.0/en/alter-user.html
ALTER USER 'jeffrey'@'localhost' IDENTIFIED BY 'password';
ALTER USER 'jeffrey'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';


-- https://www.tutorialspoint.com/mysql-create-user-with-a-variable#