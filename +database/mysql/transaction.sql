-- https://stackoverflow.com/questions/9974325/mysql-transaction-within-a-stored-procedure
-- https://dev.mysql.com/doc/refman/8.0/en/commit.html#:~:text=START%20TRANSACTION%20is%20standard%20SQL,does%20not%20begin%20a%20transaction.


-- This has no rollback
    START TRANSACTION;

        .. Query 1 ..
        .. Query 2 ..
        .. Query 3 ..

    COMMIT;