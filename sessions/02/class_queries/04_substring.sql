--  String functions start with some very basic string extractions

SELECT
    last_name,
    LENGTH(last_name) AS len,
    LEFT(last_name, 3) AS lft,
    RIGHT(last_name, 3) AS rght,
    SUBSTRING(last_name, 3, 2) AS sub,
    SUBSTRING(last_name, LENGTH(last_name) - 2, 2) AS penultimate_2
FROM
    sampdb.president
LIMIT 5;

-- Stuff like is really set up for more complicated functions
