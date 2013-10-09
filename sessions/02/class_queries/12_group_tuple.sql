SELECT 
    city,
    state,
    COUNT(*)
FROM
    sampdb.member
GROUP BY
    state,
    city
ORDER BY
    state,
    city
LIMIT 15
;
    
