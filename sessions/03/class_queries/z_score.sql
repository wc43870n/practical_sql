SELECT
    score, student_id AS stdnt, event_id AS vnt, 
    event_average AS vnt_avg, std_dev AS std,
    ( score - event_average ) / std_dev AS z_score
FROM
(
    SELECT
        s1.score, s1.student_id, s1.event_id,
        (  SELECT AVG(score)
            FROM sampdb.score AS s2
            WHERE s2.event_id = s1.event_id
            GROUP BY event_id
        ) AS event_average,
        (   SELECT STD(score)
            FROM sampdb.score AS s2
            WHERE s2.event_id = s1.event_id
            GROUP BY event_id
        ) AS std_dev
    FROM sampdb.score AS s1
) AS tmp

LIMIT 5
;
