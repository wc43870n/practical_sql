SELECT
    event_id,
    student_id,
    score,
    (SELECT AVG(score) FROM sampdb.score WHERE event_id = 1) AS event_average

FROM
    sampdb.score

WHERE
    score > (SELECT AVG(score) FROM sampdb.score WHERE event_id = 1)
    AND event_id = 1
ORDER BY
    score DESC
;
