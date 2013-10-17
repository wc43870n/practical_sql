SELECT 
    sub.state,
    sub.last_name,
    sub.age
FROM
    sampdb.president_age sub
INNER JOIN
    sampdb.president_aggregates sub2
ON
    sub.state = sub2.state
    AND sub.age = sub2.MaxAge

