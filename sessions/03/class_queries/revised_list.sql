SELECT
  state, COUNT(*) as state_count
FROM
  sampdb.president
GROUP BY
  state
HAVING
  COUNT(*) >= 
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
ORDER BY state_count DESC
;
