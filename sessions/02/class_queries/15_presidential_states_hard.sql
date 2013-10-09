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
        'MA',
        'NY'
    )
ORDER BY
    state,
    last_name,
    first_name
;

