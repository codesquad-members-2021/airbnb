INSERT INTO user(`id`, `github`) VALUES(1, 'tree');
INSERT INTO user(`id`, `github`) VALUES(2, 'BONGF');

INSERT INTO room(`id`, `name`, `grade`, `reviewer`, `address`, `latitude`, `longitude`, `room_type`, `bed`, `bed_room`, `bath_room`, `description`, `host_name`, `host_image`,  `price_per_day`, `capacity`)
VALUES (1, 'the-k seoul', 4.5, 100, '서울특별시 서초구 양재2동 바우뫼로12길 70', 37.4661237, 127.0304784, 'ENTIRE_PLACE', 1, 1, 1, '양재역에 위치한 더케이서울입니다.', 'the-k', 'https://lh3.googleusercontent.com/p/AF1QipPFnRnv-rbPGS06Gyi4PQOm6be8vKawm7O4Oqzy=w296-h202-n-k-rw-no-v1', 60000, 10);
INSERT INTO `image`(`url`, `room`)
VALUES ('url1', 1);
INSERT INTO `image`(`url`, `room`)
VALUES ('url2', 1);
INSERT INTO `image`(`url`, `room`)
VALUES ('url3', 1);

INSERT INTO room(`id`, `name`, `grade`, `reviewer`, `address`, `latitude`, `longitude`, `room_type`, `bed`, `bed_room`, `bath_room`, `description`, `host_name`, `host_image`,  `price_per_day`, `capacity`)
VALUES (2, 'codesquad', 4.9, 13, '서울특별시 강남구 역삼동 836-24', 37.4908252, 127.0312283, 'ENTIRE_PLACE', 1, 2, 2, '코드스쿼드입니다.', 'HONUX', 'https://ca.slack-edge.com/T74H5245A-U74KKLB0D-4f2767985e3d-512', 60000, 5);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://lh5.googleusercontent.com/p/AF1QipNxntYBPh5s0xjPzvjnlhi4730KlGBiH4z7B0M2=w408-h306-k-no', 2);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://lh5.googleusercontent.com/p/AF1QipObkWYQyr6rOwJ1V6k9duVHA-gIEUQcJ4FPFFa7=w203-h135-k-no', 2);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://lh5.googleusercontent.com/p/AF1QipObkWYQyr6rOwJ1V6k9duVHA-gIEUQcJ4FPFFa7=w203-h135-k-no', 2);

INSERT INTO room(`id`, `name`, `grade`, `reviewer`, `address`, `latitude`, `longitude`, `room_type`, `bed`, `bed_room`, `bath_room`, `description`, `host_name`, `host_image`,  `price_per_day`, , `capacity`)
VALUES (3, 'Yeoksam', 4.9, 13, '서울특별시 강남구 역삼동 836-24', 37.4908252, 127.0312283, 'ENTIRE_PLACE', 1, 2, 2, '코드스쿼드입니다.', 'HONUX', 'https://ca.slack-edge.com/T74H5245A-U74KKLB0D-4f2767985e3d-512', 60000, 2);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://lh5.googleusercontent.com/p/AF1QipNxntYBPh5s0xjPzvjnlhi4730KlGBiH4z7B0M2=w408-h306-k-no', 2);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://lh5.googleusercontent.com/p/AF1QipObkWYQyr6rOwJ1V6k9duVHA-gIEUQcJ4FPFFa7=w203-h135-k-no', 2);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://lh5.googleusercontent.com/p/AF1QipObkWYQyr6rOwJ1V6k9duVHA-gIEUQcJ4FPFFa7=w203-h135-k-no', 2);



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

