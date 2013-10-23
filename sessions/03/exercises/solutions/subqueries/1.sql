SELECT
    last_name,
    state,
    AGE

FROM
    sampdb.president_age

WHERE
    AGE > (SELECT AVG(AGE) FROM sampdb.president_age)
;
