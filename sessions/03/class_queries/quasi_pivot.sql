SELECT
( SELECT 
    ROUND(AVG(score),1)
  FROM sampdb.score 
  WHERE event_id = 1
  GROUP BY event_id
)   AS 1_scr,
( SELECT 
    ROUND(AVG(score),1)
  FROM sampdb.score 
  WHERE event_id = 2
  GROUP BY event_id
)   AS 2_scr,
( SELECT 
    ROUND(AVG(score),1)
  FROM sampdb.score 
  WHERE event_id = 3
  GROUP BY event_id
)   AS 3_scr

-- Notice the SELECT 
-- expression is 
-- just a field list

;


