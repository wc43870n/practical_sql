SELECT
    student_id,
    score,
    ( score - 15.1 ) / 3.8 AS z_score,
    ( CAST(score AS DECIMAL(8, 2) ) - 15.1 ) / 3.8 AS z_score
    -- ( point - mean ) / std. dev
FROM
    sampdb.score
WHERE
    event_id = 1
LIMIT 5
;

-- awkward -- can we somehow work calculation of average and std. dev into this?
-- yes, we'll get there

    -- ( CAST(score AS DECIMAL(8, 2) ) - 75.0 ) / 10.0 AS z_score,
    -- ROUND( ( CAST(score AS NUMERIC(8, 2) ) - 75.0 ) / 10.0, 2) AS z_score

    -- MySQL has no equivalent to Postgres numeric
    -- ROUND( ( CAST(score AS DOUBLE ) - 75.0 ) / 10.0, 2) AS z_score
    -- ( point - mean ) / std. dev
