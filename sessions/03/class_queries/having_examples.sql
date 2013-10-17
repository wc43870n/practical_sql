SELECT
  state,
  COUNT(*) AS state_count
FROM
  sampdb.president
WHERE
  LEFT(last_name, 1)
  NOT IN 
  ('A', 'E', 'I', '
    O', 'U')
GROUP BY
  state
HAVING
  state_count >= 2
;
  
