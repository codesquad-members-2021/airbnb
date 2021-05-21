INSERT INTO city(name)
values ('서울'),('경기도'),('강원도'),('충청도'),('경상남도'),('경상북도'),('전라남도'),('전라북도');

INSERT INTO image_type(type)
values ('HIRO'),('MAIN'),('DETAIL');

INSERT INTO category(name)
values ('자연생활을 만끽 할 수 있는 숙소'),('독특한 공간'),('집 전체'),('반려 동물과 함께 할 수 있는 공간');

INSERT INTO image(url,image_type)
values ('https://a0.muscache.com/im/pictures/ddc7f01f-3fb3-483c-87e6-701dad52c930.jpg?im_w=1920', 'HIRO');

INSERT INTO image(url,image_type,city_id)
values ('https://a0.muscache.com/im/pictures/71e23854-a3c7-491c-b715-6e86233a293f.jpg?im_q=medq&im_w=240','MAIN',1),
       ('https://a0.muscache.com/im/pictures/a0eb36e7-b468-4c5e-93b2-819e793563b2.jpg?im_q=medq&im_w=240','MAIN',2),
       ('https://a0.muscache.com/im/pictures/926d56aa-8b36-4138-8eae-ad991868b858.jpg?im_q=medq&im_w=240','MAIN',3),
       ('https://a0.muscache.com/im/pictures/f7736f4a-f8b9-4527-b46c-d0d8df856984.jpg?im_q=medq&im_w=240','MAIN',4),
       ('https://a0.muscache.com/im/pictures/31e445ed-8b69-477b-aefd-d04dae6d0bb1.jpg?im_q=medq&im_w=240','MAIN',5),
       ('https://a0.muscache.com/im/pictures/087a8dff-a609-4084-86db-f45051c6f23a.jpg?im_q=medq&im_w=240','MAIN',6),
       ('https://a0.muscache.com/im/pictures/558a403a-aeed-4829-83a6-c9b0ccf21866.jpg?im_q=medq&im_w=240','MAIN',7),
       ('https://a0.muscache.com/im/pictures/a161fb95-6875-4aaa-aecd-3a46dead3220.jpg?im_q=medq&im_w=240','MAIN',8);

INSERT INTO image(url,image_type,category_id)
values ('https://a0.muscache.com/im/pictures/36f53e61-db8d-403c-9122-5b761c0e4264.jpg?im_w=480','MAIN',1),
       ('https://a0.muscache.com/im/pictures/2f13349d-879d-43c6-83e3-8e5679291d53.jpg?im_w=480','MAIN',2),
       ('https://a0.muscache.com/im/pictures/7d82ca14-56e5-4465-8218-dcfa7d69b6ac.jpg?im_w=480','MAIN',3),
       ('https://a0.muscache.com/im/pictures/10a638e1-6aff-4313-8033-1275cec83987.jpg?im_w=480','MAIN',4);
