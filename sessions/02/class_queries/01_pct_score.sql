--  We can do simple arithmetic math 

SELECT 
    score / 100 as pct_score,
    CAST(score AS decimal(8, 2)) / 100 as pct_score_2
FROM
    sampdb.score
LIMIT 5;

-- Note that MySQL will automatically convert the value returned as a decimal.
-- Other SQL versions will not.  Postgres requires a type conversion of the INT to a DECIMAL type.
