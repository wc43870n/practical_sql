-- We can combine string, date, and integer functions

SELECT
    CONCAT(
        first_name,
        " ",
        last_name,
        " lived ",
        ROUND(DATEDIFF(death, birth) / 365, 1),
        -- ROUND(DATEDIFF(death, birth) / 365, 1),
        " years"
    ) AS sentence

FROM
    sampdb.president

LIMIT 5;

-- Notice that MySQL is automatically converting a number to a string for us
-- We can also use CONVERT() and CAST() to control that process

