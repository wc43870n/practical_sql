SELECT
    last_name,
    first_name,
    state
FROM
    sampdb.president
WHERE
    state IN
    (
        'VA',
        'OH',
        'MA'
    )
ORDER BY
    state
;
