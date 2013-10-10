#   Loads a CSV file to a database table

LOAD DATA LOCAL 

    #   EDIT THIS PATH:
    INFILE "/home/gordon/var/teaching/practical_sql/sessions/01/exercises/solutions/load/aapl/aapl.csv"   
    -- INFILE "/Users/gimli/Work/teaching/practical_sql/sessions/01/exercises/solutions/load/aapl/aapl.csv"   

    INTO TABLE csv_load.aapl

    FIELDS 
        TERMINATED BY ',' 
        ENCLOSED BY '"' 

    LINES
       TERMINATED BY '\n'
       -- TERMINATED BY '\r\n'

IGNORE 1 LINES;


