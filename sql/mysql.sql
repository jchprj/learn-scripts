-- @conn mysql_test

-- https://vscode-sqltools.mteixeira.dev/features/codelens

-- @block create table

CREATE TABLE IF NOT EXISTS COMPANY(
    ID INT PRIMARY KEY NOT NULL,
    NAME TEXT NOT NULL,
    AGE INT NOT NULL,
    ADDRESS CHAR(50),
    SALARY REAL
);

-- @block insert

INSERT INTO COMPANY VALUES (1, 'Name', 12, 'address', 0.2);

-- @block

select * from COMPANY;