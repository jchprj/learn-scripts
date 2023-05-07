[MySQL :: MySQL 5.6 Reference Manual :: 14.13.6 Online DDL Limitations](https://dev.mysql.com/doc/refman/5.6/en/innodb-online-ddl-limitations.html)

    Tables created before MySQL 5.6 that include temporal columns (DATE, DATETIME or TIMESTAMP) and have not been rebuilt using ALGORITHM=COPY do not support ALGORITHM=INPLACE. In this case, an ALTER TABLE ... ALGORITHM=INPLACE operation returns the following error:

    ERROR 1846 (0A000): ALGORITHM=INPLACE is not supported.
    Reason: Cannot change column type INPLACE. Try ALGORITHM=COPY.
