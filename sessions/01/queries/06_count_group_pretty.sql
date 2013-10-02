SELECT
    sex AS Gender,
    COUNT(student_id) AS "ID Count",
    COUNT(sex) AS gender_count

FROM
    sampdb.student

GROUP BY
    gender
    -- sex

-- this is a comment
;
