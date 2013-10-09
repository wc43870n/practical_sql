-- String manipulations

SELECT
    first_name,
    UPPER(first_name),
    LOWER(first_name)

FROM
    sampdb.president

LIMIT 5;
