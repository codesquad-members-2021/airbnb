# set global local_infile=1;

LOAD DATA LOCAL INFILE '/home/ubuntu/csv/image.csv'
    INTO TABLE image FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n'
    (@var1, @var2, @var3)
    SET
        room_id = @var1,
        image = @var2;

