[Overview — Trino 405 Documentation](https://trino.io/docs/current/overview.html)

    Trino is a distributed SQL query engine designed to query large data sets distributed over one or more heterogeneous data sources.


## Date and time

[Date and time functions and operators — Trino 405 Documentation](https://trino.io/docs/current/functions/datetime.html)



[Presto Trino Sql , select Date which is two days before - Stack Overflow](https://stackoverflow.com/questions/72495552/presto-trino-sql-select-date-which-is-two-days-before)

    select current_date - interval '2' day, date_add('day', -2, current_date)


## Conversion

[Conversion functions — Trino 437 Documentation](https://trino.io/docs/current/functions/conversion.html)

    cast(value AS type) → type
    
    SELECT format('%03d', 8);
    -- '008'