SELECT
    CONCAT(
        IF(LENGTH(day) = 1, '0', ''),
        day
    ) AS dd,
    CONCAT(
        IF(LENGTH(mnt2) = 1, '0', ''),
        mnt2 
    ) AS mm,
    CONCAT(
        '20',
        yr
    ) AS yyyy,

    CONCAT(
        CONCAT(
            '20',
            yr
        ),
        '-',
        CONCAT(
            IF(LENGTH(mnt2) = 1, '0', ''),
            mnt2 
        ),
        '-',
        CONCAT(
            IF(LENGTH(day) = 1, '0', ''),
            day
        )
    ) AS formatted


FROM
    csv_load.date_clean
;


