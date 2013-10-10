DROP TABLE IF EXISTS csv_load.temperature;

CREATE TABLE csv_load.temperature (
    date        DATE, 
    city        VARCHAR(20), 
    temperature INT(4)
);
