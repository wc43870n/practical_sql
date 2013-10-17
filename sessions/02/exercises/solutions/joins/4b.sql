SELECT
    au.au_id
--    au.au_id,
--    au.au_fname,
--    au.au_lname,
--    au.city AS a_city,
--    pub.city AS p_city,
--    pub.pub_name
FROM
    books.authors AS au
INNER JOIN
    books.publishers AS pub
ON
    au.city = pub.city
;
