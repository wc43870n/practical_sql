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
;
