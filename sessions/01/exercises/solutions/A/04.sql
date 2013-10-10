-- 4.  Write a query that counts the number of presidents born before 1900-01-01.

SELECT
    COUNT(*)

FROM
    sampdb.president

WHERE
    birth < '1900-01-01'

;
