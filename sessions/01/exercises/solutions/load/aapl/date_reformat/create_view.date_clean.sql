DROP VIEW IF EXISTS csv_load.date_clean;

CREATE VIEW csv_load.date_clean

AS

SELECT
    date,
    LEFT(date, LOCATE('-', date) - 1 ) as day,
    RIGHT(date, LENGTH(date) - LOCATE('-', date, 4) ) as yr, 
    MID(
        date,
        LOCATE('-', date) + 1, 
        ( LOCATE('-', date, 4) - LOCATE('-', date) - 1 ) 
    ) as mnt, 
    MONTH(STR_TO_DATE(
        MID(
            date,
            LOCATE('-', date) + 1, 
            ( LOCATE('-', date, 4) - LOCATE('-', date) - 1 ) 
        ),
        '%b'
    ) ) as mnt2


FROM
    csv_load.aapl
;
