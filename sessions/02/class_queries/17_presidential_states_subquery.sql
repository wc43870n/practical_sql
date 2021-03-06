SELECT
    state
    /*
    state,
    state_count
     */
FROM
    (
        SELECT
            state,
            COUNT(*) AS state_count
        FROM
            sampdb.president
        GROUP BY
            state
    ) as t1

WHERE
    state_count >= 
    ( 
        SELECT
            MIN(state_count)
        FROM
            (
                SELECT
                    state,
                    COUNT(*) AS state_count
                FROM
                    sampdb.president
                GROUP BY
                    state
                ORDER BY
                    state_count DESC
                LIMIT 3
            ) AS t3
    ) 

;
