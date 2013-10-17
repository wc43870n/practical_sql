#   Gets oldest president, by state, without intervening views
#   -   better than only matching age to max age values b/c it avoids the
#       possibility of duplicate max age values

SELECT 
    state,
    last_name AS oldest,
    ROUND(DATEDIFF(death, birth) / 365, 1) AS age

FROM
    sampdb.president

WHERE
   (    state, 
        ROUND(DATEDIFF(death, birth) / 365, 1) 
    ) IN

    (   
        SELECT
            state,
            MAX(ROUND(DATEDIFF(death, birth) / 365, 1)) AS age
        FROM
            sampdb.president
        GROUP BY
            state
    ) 
;

