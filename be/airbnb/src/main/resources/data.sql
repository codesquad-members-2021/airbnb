insert into location (id, name, type, parent_id, level, place_id, point)
VALUES (1, '대한민국', 'NATION', null, 1, 'ChIJzWXFYYuifDUR64Pq5LTtioU', POINT(37.59073, 126.97406)),
       (2, '서울특별시', 'CITY', 1, 2, 'ChIJzWXFYYuifDUR64Pq5LTtioU', POINT(37.59073, 126.97406)),
       (3, '송파구', 'DISTRICT', 2, 3, 'ChIJd0dO0JylfDURdcviRsh5HYk', POINT(37.50472, 127.11549)),
       (4, '오금동', 'NEIGHBORHOOD', 3, 4, 'ChIJjeL9n4OvfDUROM87V6iz9mo', POINT(37.50412, 127.13336)),
       (5, '가락1동', 'NEIGHBORHOOD', 3, 4, 'ChIJDe6bBo6lfDURW4', POINT(37.49637, 127.10578)),
       (6, '가락2동', 'NEIGHBORHOOD', 3, 4, 'ChIJ22TW_3uvfDURUJrDWpxx0FI', POINT(37.49890, 127.12640)),
       (7, '서초구', 'DISTRICT', 2, 3, 'ChIJd0dO0JylfDURdcviRsh5HYk', POINT(37.50472, 127.11549)),
       (8, '양재동', 'NEIGHBORHOOD', 7, 4, 'ChIJ22TW_3uvfDURUJrDWpxx0FI', POINT(37.473553, 127.03067)),
       (9, '경기도', 'PROVINCE', 1, 2, 'ChIJjbZ-5eR5fDURwrX21pgfDAE', POINT(37.473553, 127.03067)),
       (10, '연천군', 'COUNTY', 9, 3, 'ChIJiwRU64chfTURJbYgnupP6cM', POINT(37.473553, 127.03067)),
       (11, '미산면', 'TOWNSHIP', 10, 4, 'ChIJ1eYEIfXffDURynFuzSssdWs', POINT(37.473553, 127.03067)),
       (12, '삼화리', 'VILLAGE', 11, 5, 'ChIJD5yTF7_ffDURV9QtTz4n8wI', POINT(37.473553, 127.03067)),
       (13, '동이리', 'VILLAGE', 11, 5, 'ChIJ01VA53nffDURt9m_xoktSJo', POINT(37.473553, 127.03067));

insert into room(id, location_id, name, rating, guest_capacity, point, description, bathroom_type, bedroom_type,
                 bed_count, amenity, host_id, thumbnail)
values (1, 4, '희망이 넘치는 발레노르 움막집', 5, 5, POINT(37.252352, 235.52532), '희망이 넘쳐요', 'PRIVATE_BATHROOM', 'ONE_ROOM', 2,
        '주방, 무선인터넷, 에어컨, 헤어드라이어', 1,
        'https://pix10.agoda.net/hotelImages/8515928/-1/2757b14c0680924208c33f286eab4c46.jpg?s=1024x768'),
       (2, 4, '분노가 넘치는 블랙게이트 감시초소', 0.5, 3, POINT(31.25144, 935.52532), '오지마세요 제발', 'PRIVATE_BATHROOM', 'ONE_ROOM', 2,
        '주방, 무선인터넷, 에어컨, 헤어드라이어', 1,
        'https://pix10.agoda.net/hotelImages/124/1246280/1246280_16061017110043391702.jpg?s=1024x768'),
       (3, 4, '용암이 넘치는 바랏두르 제련소', 1.0, 1, POINT(27.252352, 235.52532), '춥진 않아요', 'SHARED_BATHROOM', 'BEDROOM', 3,
        '주방, 무선인터넷, 에어컨, 헤어드라이어', 1,
        'https://imgcy.trivago.com/c_lfill,d_dummy.jpeg,e_sharpen:60,f_auto,h_450,q_auto,w_450/itemimages/96/95/96959_v6.jpeg'),
       (4, 12, '전망이 멋진 미나스 티리스 펜션', 5, 2, POINT(37.252352, 235.52532), '정말 최고야', 'PRIVATE_BATHROOM', 'BEDROOM', 4,
        '주방, 무선인터넷, 에어컨, 헤어드라이어', 1,
        'https://storage.googleapis.com/static-content-hc/sites/default/files/cataloina_porto_doble_balcon2_2.jpg'),
       (5, 13, '먼지가 넘치는 모리아 골방', 0.5, 4, POINT(17.252352, 125.52532), '청소가 뭐예요?', 'SHARED_BATHROOM', 'BEDROOM', 5,
        '주방, 무선인터넷, 에어컨, 헤어드라이어', 1,
        'https://media-cdn.tripadvisor.com/media/photo-s/15/a1/d2/af/hotel-r-de-paris.jpg');

insert into room_image(room_id, image_url, image_index)
values (1, 'https://a0.muscache.com/im/pictures/f6e9a07a-8a17-4d14-8a42-4fc3e3b5f2bd.jpg?im_w=720', 1),
       (1, 'https://a0.muscache.com/im/pictures/cc2371de-4386-4f2c-80ce-763ca32bc058.jpg?im_w=720', 2),
       (1, 'https://a0.muscache.com/im/pictures/56cccaca-04fd-48d6-9877-13f41b037cab.jpg?im_w=1200', 3),
       (2, 'https://a0.muscache.com/im/pictures/f6e9a07a-8a17-4d14-8a42-4fc3e3b5f2bd.jpg?im_w=720', 1),
       (2, 'https://a0.muscache.com/im/pictures/cc2371de-4386-4f2c-80ce-763ca32bc058.jpg?im_w=720', 2),
       (2, 'https://a0.muscache.com/im/pictures/56cccaca-04fd-48d6-9877-13f41b037cab.jpg?im_w=1200', 3),
       (3, 'https://a0.muscache.com/im/pictures/f6e9a07a-8a17-4d14-8a42-4fc3e3b5f2bd.jpg?im_w=720', 1),
       (3, 'https://a0.muscache.com/im/pictures/cc2371de-4386-4f2c-80ce-763ca32bc058.jpg?im_w=720', 2),
       (3, 'https://a0.muscache.com/im/pictures/56cccaca-04fd-48d6-9877-13f41b037cab.jpg?im_w=1200', 3),
       (4, 'https://a0.muscache.com/im/pictures/f6e9a07a-8a17-4d14-8a42-4fc3e3b5f2bd.jpg?im_w=720', 1),
       (4, 'https://a0.muscache.com/im/pictures/cc2371de-4386-4f2c-80ce-763ca32bc058.jpg?im_w=720', 2),
       (4, 'https://a0.muscache.com/im/pictures/56cccaca-04fd-48d6-9877-13f41b037cab.jpg?im_w=1200', 3),
       (5, 'https://a0.muscache.com/im/pictures/f6e9a07a-8a17-4d14-8a42-4fc3e3b5f2bd.jpg?im_w=720', 1),
       (5, 'https://a0.muscache.com/im/pictures/cc2371de-4386-4f2c-80ce-763ca32bc058.jpg?im_w=720', 2),
       (5, 'https://a0.muscache.com/im/pictures/56cccaca-04fd-48d6-9877-13f41b037cab.jpg?im_w=1200', 3)
;


insert into room_price (room_id, service_fee, accomodation_tax, clean_up_cost, price_per_day, weekly_discount)
values (1, 500, 1000, 2500, 20000, 5),
       (2, 500, 1000, 2500, 50000, 5),
       (3, 500, 1000, 2500, 100000, 5),
       (4, 500, 1000, 2500, 60000, 5),
       (5, 500, 1000, 2500, 30000, 5);

insert into reservation(id, room_id, guest_id, checkin_date_time, checkout_date_time, adult_count, child_count,
                        infant_count)
values (1, 1, 2, '2021-05-20 00:00:00', '2021-05-25 00:00:00', 2, 0, 0),
       (2, 1, 2, '2021-05-27 00:00:00', '2021-05-28 00:00:00', 2, 0, 0),
       (3, 1, 2, '2021-05-30 00:00:00', '2021-06-02 00:00:00', 2, 0, 0),
       (4, 2, 2, '2021-05-27 00:00:00', '2021-05-28 00:00:00', 2, 0, 0),
       (5, 3, 2, '2021-05-30 00:00:00', '2021-06-02 00:00:00', 2, 0, 0)
;

insert into user (id, oauth_id, authenticated_by, nickname, name, profile_image, access_token)
values (1, 'kachinsky', 'GITHUB', 'Kachinsky', 'Milo Kachinsky',
        'https://static.wikia.nocookie.net/starcraft/images/d/d5/Kachinsky_SC2_Head1.jpg/revision/latest/top-crop/width/360/height/360?cb=20100722105327',
        'kachinsky_token');

insert into host (user_id, is_superhost)
values (1, true);
