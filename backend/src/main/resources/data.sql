INSERT INTO city
    (id, city_name, city_image)
VALUES (1, '서울', 'https://a0.muscache.com/im/pictures/71e23854-a3c7-491c-b715-6e86233a293f.jpg?im_q=medq&im_w=240'),
       (2, '경기', 'https://a0.muscache.com/im/pictures/558a403a-aeed-4829-83a6-c9b0ccf21866.jpg?im_q=medq&im_w=240'),
       (3, '인천', 'https://a0.muscache.com/im/pictures/31e445ed-8b69-477b-aefd-d04dae6d0bb1.jpg?im_q=medq&im_w=240'),
       (4, '대구', 'https://a0.muscache.com/im/pictures/f7736f4a-f8b9-4527-b46c-d0d8df856984.jpg?im_q=medq&im_w=240'),
       (5, '울산', 'https://a0.muscache.com/im/pictures/926d56aa-8b36-4138-8eae-ad991868b858.jpg?im_q=medq&im_w=240'),
       (6, '광주', 'https://a0.muscache.com/im/pictures/087a8dff-a609-4084-86db-f45051c6f23a.jpg?im_q=medq&im_w=240'),
       (7, '부산', 'https://a0.muscache.com/im/pictures/f7736f4a-f8b9-4527-b46c-d0d8df856984.jpg?im_q=medq&im_w=240'),
       (8, '제주', 'https://a0.muscache.com/im/pictures/85bd76fe-3c73-4e79-b581-36b9676892f7.jpg?im_q=medq&im_w=240');

INSERT INTO location
    (id, latitude, longitude, city)
VALUES
    (1, 37.47965, 126.64642, '인천'),
    (2, 37.45023, 126.71375, '인천');

INSERT INTO room
    (id, title, description, price_per_day, room_type, bed, max_guest, bathroom, location)
VALUES
    (1, '인천공항과 가까운 송림동, 인천숙소입니다.', '침실과 주방이 분리되어 있는 1.5룸 숙소로 도보로 3분거리에 전통시장과 대형 마트가 가까이 있고, 교통도 편리합니다. 여러분도 이곳에서 즐거운 행복 만들어가시길 바랍니다.'
    , 60000, '아파트', 1, 2, 1, 1),
    (2, '인천시청역 도보5분!신축! ', '길병원,인천시청 바로 앞에 있는 신축 건물 입니다. 층수는 9층 입니다.시설 깔끔하고 조용하고 각종 편의시설이 많아 생활이 편리해요.'
    , 70000, '아파트', 1, 4, 1, 2);

INSERT INTO image
    (`type`, url, room)
VALUES
    ('thumb', 'https://a0.muscache.com/im/pictures/33f486e0-d180-48c1-81e9-7aed9fbfeb4a.jpg?im_w=720', 1),
    ('detail', 'https://a0.muscache.com/im/pictures/3bea6518-9d84-4427-8553-622189e5aca1.jpg?im_w=720', 1),
    ('detail', 'https://a0.muscache.com/im/pictures/b401b1f4-40e0-43e6-b871-cb0141e6dc70.jpg?im_w=720', 1),
    ('detail', 'https://a0.muscache.com/im/pictures/2600e790-68ef-4726-83aa-d8e49077c7c6.jpg?im_w=720', 1),

    ('thumb', 'https://a0.muscache.com/im/pictures/miso/Hosting-42235322/original/f57a1653-938b-48e9-aaf9-077a0e6741d3.jpeg?im_w=960', 2),
    ('detail', 'https://a0.muscache.com/im/pictures/19140500-0b50-41bb-994d-5e3ab0c2a211.jpg?im_w=720', 2),
    ('detail', 'https://a0.muscache.com/im/pictures/468e312c-f002-4049-99b6-d44661da52ff.jpg?im_w=720', 2),
    ('detail', 'https://a0.muscache.com/im/pictures/468e312c-f002-4049-99b6-d44661da52ff.jpg?im_w=720', 2);

INSERT INTO extra_cost
    (`week_sale_percent`, cleaning_fee, service_fee_percent, resort_fee_percent)
VALUE
    (-0.04, 20000, 0.2, 0.02);

INSERT INTO reservation
    (room, check_in, check_out)
VALUE
    (1, '2021-05-20', '2021-05-25');

