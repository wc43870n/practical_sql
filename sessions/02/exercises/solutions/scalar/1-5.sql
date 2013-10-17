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
    ) AS zero_pad_day,
    RIGHT(date_as_string, LENGTH(date_as_string) - LOCATE('-', date_as_string, 4) ) as yr, 
    MID(
        date_as_string,
        LOCATE('-', date_as_string) + 1, 
        ( LOCATE('-', date_as_string, 4) - LOCATE('-', date_as_string) - 1 ) 
    ) as mnt, 
    MONTH(STR_TO_DATE(
        MID(
            date_as_string,
            LOCATE('-', date_as_string) + 1, 
            ( LOCATE('-', date_as_string, 4) - LOCATE('-', date_as_string) - 1 ) 
        ),
        '%b'
    ) ) as mnt2


FROM
    homework.date_string
;
