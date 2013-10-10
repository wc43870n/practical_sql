#   Loads a CSV file to a database table

LOAD DATA LOCAL 

    #   EDIT THIS PATH:
    INFILE "/home/gordon/var/teaching/practical_sql/sessions/01/exercises/temperatures.csv"   

    INTO TABLE csv_load.temperature

    FIELDS 
        TERMINATED BY ',' 
        ENCLOSED BY '"' 

    LINES
       TERMINATED BY '\r\n'
       -- TERMINATED BY '\r'
       -- TERMINATED BY '\n'

       -- If you are having difficulty loading, or are getting strange data in
       -- your load, the problem might be fixed by playing with the line
       -- terminator use in LOAD.

IGNORE 1 LINES;


