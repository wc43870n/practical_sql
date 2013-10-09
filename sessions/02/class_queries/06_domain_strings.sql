-- We can use that, with our other functions, to get a list of domains

SELECT
    email,
    RIGHT(email, LENGTH(email) - LOCATE('@', email)) AS domain
FROM
    sampdb.member
LIMIT 5;

-- Note that string math can be a nuisance


