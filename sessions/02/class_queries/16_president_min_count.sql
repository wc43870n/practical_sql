SELECT
    MIN(state_count)
FROM
(
    SELECT
    state,
    COUNT(*) AS state_count
FROM
    sampdb.president
GROUP BY
    state
ORDER BY
    state_count DESC
LIMIT 3
) AS tmp
;

    
