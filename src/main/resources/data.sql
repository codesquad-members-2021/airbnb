-- room1
insert into `room` (`max`, `name`, rating, latitude, longitude, bedroom_count, bed_count, bathroom_count, address,
                    detail_address, comment_count, original_price, sale_price, flexible_refund, immediate_booking)
values (3, "숙소1", 4.82, 37.49784, 127.03029, 1, 1, 1, "서울특별시 강남구 역삼동",
        "824-7번지 4층",
        62, 80000, 72000, 0, 1);
-- room2
insert into `room` (`max`, `name`, rating, latitude, longitude, bedroom_count, bed_count, bathroom_count, address,
                    detail_address, comment_count, original_price, sale_price, flexible_refund, immediate_booking)
values (4, "숙소2", 4.82, 37.49784, 127.03029, 1, 1, 1, "서울특별시 강남구 역삼동",
        "824-7번지 4층",
        62, 50000, 40000, 0, 1);
-- room3
insert into `room` (`max`, `name`, rating, latitude, longitude, bedroom_count, bed_count, bathroom_count, address,
                    detail_address, comment_count, original_price, sale_price, flexible_refund, immediate_booking)
values (4, "숙소3", 4.82, 37.49784, 127.03029, 1, 1, 1, "서울특별시 강남구 역삼동",
        "824-7번지 4층",
        62, 60000, 55000, 0, 1);


insert into `user` (github_id)
values ("bibi");

insert into `booking` (user_id, room_id, check_in, check_out, number_of_people, total_price)
values (1, 1, "2021-05-20", "2021-05-21", 2, 200000);
insert into `booking` (user_id, room_id, check_in, check_out, number_of_people, total_price)
values (1, 2, "2021-05-25", "2021-05-26", 2, 200000);
insert into `booking` (user_id, room_id, check_in, check_out, number_of_people, total_price)
values (1, 3, "2021-06-01", "2021-06-03", 2, 200000);

insert into `wish` (room_id, user_id)
values (1, 1);

insert into `option` (room_id, kitchen, air_conditioner, wifi, free_parking_lot, hair_dryer)
values (1, 1, 1, 1, 1, 1);
insert into `option` (room_id, kitchen, air_conditioner, wifi, free_parking_lot, hair_dryer)
values (2, 1, 1, 1, 1, 1);
insert into `option` (room_id, kitchen, air_conditioner, wifi, free_parking_lot, hair_dryer)
values (3, 1, 1, 1, 1, 1);

insert into `thumbnail` (room_id, thumbnail)
values (1, "https://a0.muscache.com/im/pictures/c45d08e5-f560-44f0-83fc-83290ccd1670.jpg?im_w=720");
insert into `thumbnail` (room_id, thumbnail)
values (1, "https://a0.muscache.com/im/pictures/e3258341-b4f3-4988-b958-bec903936a0b.jpg?im_w=720");

insert into `badge` (room_id, `type`) values (1, "슈퍼호스트");
