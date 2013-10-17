SELECT
    student_id AS student,
    event_id AS event,
    score
FROM
    sampdb.score
WHERE
        event_id = 3
    AND score > 78.2258
;
