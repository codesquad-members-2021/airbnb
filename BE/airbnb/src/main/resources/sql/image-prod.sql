LOAD DATA LOCAL INFILE '/home/ubuntu/csv/image.csv'
    INTO TABLE image FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n'
    (@var1, @var2)
    SET
        room_id = @var1,
        image = @var2;

