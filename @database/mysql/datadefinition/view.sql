-- https://dev.mysql.com/doc/refman/5.7/en/create-view.html
-- https://devimalplanet.com/mysql-5-with-clause-alternative


CREATE VIEW test.v AS SELECT * FROM t;

CREATE VIEW test.v AS (
    SELECT * FROM t;
);