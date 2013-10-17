SELECT
    au.au_id,
    au.au_fname,
    au.au_lname,
    au.city,
    pub.city,
    pub.pub_name
FROM
    books.authors AS au
INNER JOIN
    books.publishers AS pub
ORDER BY
    au.city,
    pub.city
;
