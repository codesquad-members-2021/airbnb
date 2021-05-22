use
airbnb;

insert into city (name, image_url)
values ('서울', 'https://a0.muscache.com/im/pictures/71e23854-a3c7-491c-b715-6e86233a293f.jpg?im_q=medq&im_w=240');
insert into host (name, profile_image_url)
values ('Mr.kim',
        'https://a0.muscache.com/im/pictures/user/7822f895-df8a-4b0f-9035-0d3b3afbdc3d.jpg?aki_policy=profile_x_medium');
insert into location (latitude, longitude, city_name)
values (37.94032, 128.78549, '서울');
insert into additional_cost (week_sale_percent, cleaning_fee, service_fee_percent, lodgment_fee_percent)
values (4, 2000, 4, 4);
insert into review (star, review)
values (4.8, 127);
insert into rooms(host_id, location_id, additional_cost_id, review_id, name, price_per_date, description,
                  bed, max_guest, bathroom, type)
values (1, 1, 1, 1, '산들바람', 96000, '반려견 가능합니다', 1, 3, 4, '아파트');

insert into reservation (rooms_id, user_id, adult, child, baby, check_in, check_out, total_price)
values (1, null, 1, 1, 2, '2021-03-02', '2021-03-03', 192000);

insert into wish_list (user_id, rooms_id, wish)
values (null, 1, 0);