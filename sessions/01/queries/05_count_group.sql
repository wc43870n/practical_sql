SELECT
    AVG(student_id),
    sex,
    COUNT(sex)

FROM
    sampdb.student

GROUP BY
    sex
;
