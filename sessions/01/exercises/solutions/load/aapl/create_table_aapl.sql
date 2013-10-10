DROP TABLE IF EXISTS csv_load.aapl;

CREATE TABLE csv_load.aapl (
    date        VARCHAR(10), 
    -- date        DATE, 
    open        DECIMAL(5, 2),
    high        DECIMAL(5, 2),
    low         DECIMAL(5, 2),
    close       DECIMAL(5, 2),
    volume      INTEGER(12)
    
);
