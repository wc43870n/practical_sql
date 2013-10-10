-- 2.  Does the 'president' table have a record for Barack Obama?

SELECT
    COUNT(*)

FROM
    sampdb.president

WHERE
    last_name = 'Obama'

;


-- If you have to have a yes or no

-- SELECT
--     IF( COUNT(*) > 0, 'Yes', 'No' ) AS obama_president
-- 
-- FROM
--     sampdb.president
-- 
-- WHERE
--     last_name = 'Obama'
-- 
-- ;
