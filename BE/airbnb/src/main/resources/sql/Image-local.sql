set global local_infile=1;

LOAD DATA LOCAL INFILE 'C:/Users/jisun/Documents/projects/airbnb/BE/airbnb/src/main/resources/csv/image.csv'
    INTO TABLE image FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n'
    (@var1, @var2, @var3)
    SET
        room_id = @var1,
        image = @var2;
