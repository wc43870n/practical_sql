SELECT
    first_name,
    last_name,
    state,
    ROUND(DATEDIFF(death, birth) / 365, 1) AS age

FROM
    sampdb.president

ORDER BY
    age DESC

;



