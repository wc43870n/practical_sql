SELECT 
    state,
    COUNT(state) AS count
FROM
    sampdb.president
GROUP BY
    state
ORDER BY
    state
;
-- LIMIT 5;
