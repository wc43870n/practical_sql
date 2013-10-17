SELECT
    event_id,
    AVG(score)
FROM
    sampdb.score
WHERE
        event_id = 3
GROUP BY
    event_id
LIMIT 5
;
