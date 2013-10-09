-- There are a variety of functions to help deal with dates

SELECT
    birth,
    death,
    YEAR(birth) AS yr,
    MONTH(birth) AS mnt,
    MONTHNAME(birth) AS mnt_name,
    DATEDIFF(death, birth) AS days,
    DATEDIFF(death, birth) / 365 AS years
FROM
    sampdb.president
LIMIT 5;
