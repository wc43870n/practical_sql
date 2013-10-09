SELECT 
    state,
    COUNT(state) AS count
FROM
    sampdb.member
GROUP BY
    state
ORDER BY
    state
LIMIT 15;
