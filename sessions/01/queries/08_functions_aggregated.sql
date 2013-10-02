SELECT
    state,
    MAX(ROUND(DATEDIFF(death, birth) / 365, 1)) AS max_age,
    COUNT(*)

FROM
    sampdb.president

GROUP BY
    state

ORDER BY
    max_age DESC

;



