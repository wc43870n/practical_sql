DROP VIEW IF EXISTS sampdb.president_aggregates;

CREATE VIEW
    sampdb.president_aggregates
AS
    SELECT
        state,
        COUNT(state) as StateCount,
        AVG(age) as AverageAge,
        MAX(age) as MaxAge,
        MIN(age) as MinAge
    FROM
        sampdb.president_age
    GROUP BY 
        state
    ORDER BY
        StateCount DESC
;

