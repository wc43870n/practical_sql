SELECT
    au.au_id,
    au.au_fname,
    au.au_lname,
    au.city AS a_city,
    pub.city AS p_city,
    pub.pub_name
FROM
    books.authors AS au
LEFT JOIN
    books.publishers AS pub
ON
    au.city = pub.city
WHERE
    pub.city IS NULL
ORDER BY
    au.city,
    pub.city
;
