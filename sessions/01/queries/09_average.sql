SELECT
    student_id AS Student,
    AVG(score) AS Average,
    COUNT(score) AS "# of Tests"

FROM
    sampdb.score

GROUP BY
    student_id

ORDER BY
    Average DESC

;
