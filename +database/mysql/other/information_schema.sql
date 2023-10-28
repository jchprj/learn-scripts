-- https://soft-builder.com/how-to-list-stored-procedures-and-functions-in-mysql-database
-- https://dev.mysql.com/doc/refman/8.0/en/information-schema-routines-table.html


SELECT  routine_schema,  
        routine_name,  
        routine_type 
FROM information_schema.routines 
WHERE routine_schema = 'your_database_name' 
ORDER BY routine_name;  



-- https://stackoverflow.com/questions/193780/how-can-i-find-all-the-tables-in-mysql-with-specific-column-names-in-them
SELECT DISTINCT TABLE_NAME 
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE COLUMN_NAME IN ('columnA', 'ColumnB')
        AND TABLE_SCHEMA='YourDatabase';