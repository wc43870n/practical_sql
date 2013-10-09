-- String manipulation becomes more interesting when we start looking for strings
SELECT
    email,
    -- LOCATE('@', email),
    position('@' in email)
FROM
    sampdb.member
LIMIT 5;

-- Here we get the position of the @ sign


-- We can use that, with our other functions, to get a list of domains


-- +---------------------------+------------------------+
-- | email                     | position('@' in email) |
-- +---------------------------+------------------------+
-- | jeanne_s@earth.com        |                      9 |
-- | august.lundsten@pluto.com |                     16 |
-- | NULL                      |                   NULL |
-- | arbogast.ruth@mars.net    |                     14 |
-- | c.dorfman@uranus.net      |                     10 |
-- +---------------------------+------------------------+
