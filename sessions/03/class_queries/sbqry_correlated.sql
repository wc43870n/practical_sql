SELECT
  student_id,
  score
FROM
  sampdb.score AS scr
WHERE
  event_id = 3
  AND score > (
    SELECT
      AVG(score)
    FROM
      sampdb.score
    WHERE
      event_id=scr.event_id
    GROUP BY
      event_id
  )
LIMIT 5;
