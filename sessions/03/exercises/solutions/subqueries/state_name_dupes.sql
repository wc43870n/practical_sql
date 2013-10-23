SELECT
    state,
    last_name,
    state_name_count


FROM
    (
        SELECT 
            state,
            last_name,
            COUNT(*) as state_name_count
        
        FROM
            sampdb.president
        
        GROUP BY
            state,
            last_name
    ) AS tmp

WHERE
    state_name_count > 1

;
