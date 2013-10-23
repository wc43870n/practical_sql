SELECT
    last_name,
    state,
    AGE

FROM
    sampdb.president_age

WHERE
        AGE > (SELECT AVG(AGE) FROM sampdb.president_age)
    AND state = (
        SELECT
            state
        FROM
            (
                SELECT
                    state,
                    COUNT(*) AS state_count
                FROM
                    sampdb.president
                GROUP BY
                    state
            ) AS t2
        
        WHERE
            state_count = (
                SELECT
                    MAX(state_count)
                FROM
                    (
                        SELECT
                            COUNT(*) as state_count
                        FROM
                            sampdb.president
                        GROUP BY
                            state
                    ) AS tmp
            )
    )
;
