-- 3.  Write a query that counts the number of presidents from each state.

SELECT
    state,
    COUNT(*)

FROM
    sampdb.president

GROUP BY
    state

ORDER BY
    COUNT(*) DESC

;
