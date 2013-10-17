SELECT
    date_as_string,
    LEFT(date_as_string, LOCATE('-', date_as_string) - 1 ) as day,
    IF(
        LENGTH(LEFT(date_as_string, LOCATE('-', date_as_string) - 1 )) > 1,
        LEFT(date_as_string, LOCATE('-', date_as_string) - 1 ),
        CONCAT(
            '0',
            LEFT(date_as_string, LOCATE('-', date_as_string) - 1 )
            )
    ) AS zero_pad_day
FROM
    homework.date_string
;
