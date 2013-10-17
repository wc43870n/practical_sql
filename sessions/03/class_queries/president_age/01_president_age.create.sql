DROP VIEW IF EXISTS sampdb.president_age;

CREATE VIEW
    sampdb.president_age
AS
    SELECT 
        last_name, 
        state,
        ROUND(DATEDIFF(death, birth) / 365, 1) as AGE 
    FROM 
        sampdb.president;

