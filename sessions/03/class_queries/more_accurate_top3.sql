SELECT
    student_id,
    event_id,
    score
FROM
    sampdb.score
WHERE
        event_id = 3
    AND score > (
        SELECT
            AVG(score)
        FROM
            sampdb.score
        WHERE
            event_id = 3
        GROUP BY
            event_id
    )
LIMIT 5;
