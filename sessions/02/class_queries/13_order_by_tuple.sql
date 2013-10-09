SELECT 
    last_name,
    first_name,
    member_id,
    city,
    state
FROM
    sampdb.member
ORDER BY
    state,
    city
LIMIT 15
;
    
