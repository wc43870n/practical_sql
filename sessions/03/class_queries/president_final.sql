SELECT last_name, state
FROM sampdb.president
WHERE
  state IN
  (
    SELECT state
    FROM sampdb.president
    GROUP BY state
    HAVING
      COUNT(*) >= 
      ( 
        SELECT
          MIN(state_count)
        FROM
          (
            SELECT COUNT(*) AS state_count
            FROM sampdb.president
            GROUP BY state
            ORDER BY state_count DESC
            LIMIT 3
          ) AS t3
      ) 
  )
ORDER BY
  state, last_name, first_name
;
