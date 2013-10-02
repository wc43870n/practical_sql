#   Loads a CSV file to a database table

LOAD DATA LOCAL 

    #   EDIT THIS PATH:
    INFILE "/Users/gimli/Work/teaching/practical_sql/student_materials/practical_sql/sessions/01/examples/load_csv/simple.csv"   

    INTO TABLE csv_load.simple

    FIELDS 
        TERMINATED BY ',' 
        ENCLOSED BY '"' 

    LINES
       TERMINATED BY '\r\n'

IGNORE 1 LINES;
