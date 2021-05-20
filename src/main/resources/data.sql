insert into `room` (`max`, `name`, rating, latitude, longitude, bedroom_count, bed_count, bathroom_count, address,
                    detail_address, comment_count, original_price, sale_price, flexible_refund, immediate_booking)
values (3, "#4 Clean & cozy room right next to Gangnam Station", 4.82, 37.49784, 127.03029, 1, 1, 1, "서울특별시 강남구 역삼동",
        "824-7번지 4층",
        62, 80000, 72000, 0, 1);

insert into `user` (github_id)
values ("bibi");

insert into `booking` (user_id, room_id, check_in, check_out, adult, child, baby, total)
values (1, 1, "2021-05-20", "2021-05-21", 2, 0, 0, 2);

insert into `wish` (room_id, user_id)
values (1, 1);

insert into `option` (room_id, kitchen, air_conditioner, wifi, free_parking_lot, hair_dryer)
values (1, 1, 1, 1, 1, 1);

insert into `thumbnails` (room_id, thumbnail)
values (1, "https://a0.muscache.com/im/pictures/c45d08e5-f560-44f0-83fc-83290ccd1670.jpg?im_w=720");
insert into `thumbnails` (room_id, thumbnail)
values (1, "https://a0.muscache.com/im/pictures/e3258341-b4f3-4988-b958-bec903936a0b.jpg?im_w=720");

insert into `badges` (room_id, `type`) values (1, "슈퍼호스트");
