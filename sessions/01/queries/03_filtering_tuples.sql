SELECT
    first_name,
    last_name,
    state

FROM
    sampdb.president

WHERE
    (last_name, state) IN

    (
        ('Adams', 'MA') 
--        ('Lincoln', 'MA'), 
--        ('Roosevelt', 'NY') 
    )
;


