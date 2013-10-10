DROP TABLE IF EXISTS csv_load.aapl;

CREATE TABLE csv_load.aapl (
    date        VARCHAR(20), 
    -- date        DATE, 
    open        INT(4),
    high        INT(4),
    low         INT(4),
    close       INT(4),
    volume      INTEGER(12)
    
);
