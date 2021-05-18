INSERT INTO `user` (user_id, github, host, `admin`) VALUES (1, 'PizzaCola-K', 1, 1);

INSERT INTO place (place_id, place_name, city, district, address1, address2, latitude, longitude, host_id, maximum_number_of_people, description, price)
VALUES (1, '코드스쿼드', '서울', '강남구', '역삼동', '역삼빌딩 4층', 37.49082129914656, 127.03341667375932, 1, 4, '소프트웨어로 미래를 준비하는 사람들을 위한 고품질 교육 전담팀', '20000');
INSERT INTO place (place_id, place_name, city, district, address1, address2, latitude, longitude, host_id, maximum_number_of_people, description, price)
VALUES (2, 'B하우스', '서울', '강남구', '역삼동', '역삼빌딩 4층', 37.49082129914656, 127.03341667375932, 1, 4, 'B하우스 깨끗하고 좋습니다', '50000');

INSERT INTO reservation (reservation_id, place_id, check_in, check_out, adult, child, infant, price)
VALUES (1, 1, '2021-05-18', '2021-05-22', 1, 0, 0, 100000);
