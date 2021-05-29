INSERT INTO user(`id`, `github`) VALUES(1, 'tree');
INSERT INTO user(`id`, `github`) VALUES(2, 'BONGF');
INSERT INTO room(`id`, `name`, `score`, `reviewers`, `address`, `latitude`, `longitude`, `room_type`, `beds`, `bed_rooms`, `bath_rooms`, `description`, `host_name`, `host_image`,  `price_per_day`)
VALUES (1, 'the-k seoul', 4.5, 100, '서울특별시 서초구 양재2동 바우뫼로12길 70', 37.4661237, 127.0304784, 'ENTIRE_PLACE', 1, 1, 1, '양재역에 위치한 더케이서울입니다.', 'the-k', 'https://lh3.googleusercontent.com/p/AF1QipPFnRnv-rbPGS06Gyi4PQOm6be8vKawm7O4Oqzy=w296-h202-n-k-rw-no-v1', 60000);
INSERT INTO room(`id`, `name`, `score`, `reviewers`, `address`, `latitude`, `longitude`, `room_type`, `beds`, `bed_rooms`, `bath_rooms`, `description`, `host_name`, `host_image`,  `price_per_day`)
VALUES (2, 'the-k seoul', 4.5, 100, '서울특별시 서초구 양재2동 바우뫼로12길 70', 37.4661237, 127.0304784, 'ENTIRE_PLACE', 1, 1, 1, '양재역에 위치한 더케이서울입니다.', 'the-k', 'https://lh3.googleusercontent.com/p/AF1QipPFnRnv-rbPGS06Gyi4PQOm6be8vKawm7O4Oqzy=w296-h202-n-k-rw-no-v1', 60000);
INSERT INTO `image`(`url`, `room`)
VALUES ('url1', 1);
INSERT INTO `image`(`url`, `room`)
VALUES ('url2', 1);
INSERT INTO `image`(`url`, `room`)
VALUES ('url3', 1);
INSERT INTO `booking`(`check_in`, `check_out`, `guest`, `total_price`, `user`, `room`)
VALUES ('2021-05-20', '2021-05-25', 1, 15000, 1, 1);
INSERT INTO `wishlist`(`id`, `user`, `user_key`, `room`)
VALUES (1, 1, 0, 1);
INSERT INTO `wishlist`(`id`, `user`, `user_key`, `room`)
VALUES (2, 1, 1, 2);
INSERT INTO `hero_banner`(`id`, `title`, `image`)
VALUES (1, 'title1', 'image1');
INSERT INTO `hero_banner`(`id`, `title`, `image`)
VALUES (2, 'title2', 'image2');
INSERT INTO `near_destination`(`id`, `destination`, `time_distance`, `image`)
VALUES (1, '광주', '00:25:00', 'image1');
INSERT INTO `near_destination`(`id`, `destination`, `time_distance`, `image`)
VALUES (2, '대전', '01:25:00', 'image2');

