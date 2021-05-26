INSERT INTO user(id, github) VALUES(1, 'tree');
INSERT INTO room(id, name, grade, reviewer, address, latitude, longitude, price_per_day, room_type, room_configuration, description, host_name, host_image)
VALUES (1, 'the-k seoul', 4.5, 100, '서울특별시 서초구 양재2동 바우뫼로12길 70', 37.4661237, 127.0304784, 60000, 'one room', 'single bed, no bathtub', '양재역에 위치한 더케이서울입니다.', 'the-k', 'https://lh3.googleusercontent.com/p/AF1QipPFnRnv-rbPGS06Gyi4PQOm6be8vKawm7O4Oqzy=w296-h202-n-k-rw-no-v1');
INSERT INTO `image`(`url`, `room`)
VALUES ('url1', 1);
INSERT INTO `booking`(`check_in`, `check_out`, `guest`, `total_price`, `user`, `room`)
VALUES ('2021-05-20', '2021-05-25', 1, 15000, 1, 1);