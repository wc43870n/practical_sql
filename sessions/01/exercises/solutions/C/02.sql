-- C.  These questions use the table 'student', with fields 'name', 'student', and
--     'student_id'.  
-- 
-- 1.  Count the number of records by sex.
-- 2.  Count the number of records by student_id.  What is the maximum number?
-- 

SELECT
    student_id,
    COUNT(*)

FROM
    sampdb.student

GROUP BY
    student_id

ORDER BY
    COUNT(*) DESC
;
