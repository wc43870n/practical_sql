SELECT
    student_id,
    event_id,
    COUNT(*)
FROM
    sampdb.score
GROUP BY
    student_id,
    event_id
ORDER BY
    COUNT(*) DESC
LIMIT 10
;
