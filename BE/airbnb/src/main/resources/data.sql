-- -----------------------------------------------------
-- accommodation 초기값 추가
-- -----------------------------------------------------

INSERT INTO accommodation (name, max_num_of_people, type, num_of_bed, num_of_bathroom, price, address) VALUES ('house #1', 3, '원룸', 1, 1, 15000, '서울특별시 서초구 양재동 123-2');
INSERT INTO accommodation (name, max_num_of_people, type, num_of_bed, num_of_bathroom, price, address) VALUES ('house #2', 4, '투룸', 2, 1, 20000, '서울특별시 서초구 양재동 111-2');
INSERT INTO accommodation (name, max_num_of_people, type, num_of_bed, num_of_bathroom, price, address) VALUES ('house #3', 1, '원룸', 1, 1, 10000, '서울특별시 관악구 봉천동 100-2');
INSERT INTO accommodation (name, max_num_of_people, type, num_of_bed, num_of_bathroom, price, address) VALUES ('house #4', 4, '투룸', 2, 2, 20000, '서울특별시 관악구 봉천동 12-2');

-- -----------------------------------------------------
-- accommodation_detail 초기값 추가
-- -----------------------------------------------------
INSERT INTO accommodation_detail (host_name, description, accommodation_id) VALUES ('MJkim', '가성비 최고의 원룸. 누구나 갖고 싶어하는 원룸. 강남역 도보 1분 거리. 럭셔리 풀옵션.', 1);
INSERT INTO accommodation_detail (host_name, description, accommodation_id) VALUES ('MJbae', '가성비 최고의 투룸. 누구나 갖고 싶어하는 투룸. 강남역 도보 1분 거리. 럭셔리 풀옵션.', 2);
INSERT INTO accommodation_detail (host_name, description, accommodation_id) VALUES ('MJchoi', '가성비 최고의 원룸. 누구나 갖고 싶어하는 원룸. 강남역 도보 1분 거리. 럭셔리 풀옵션.', 3);
INSERT INTO accommodation_detail (host_name, description, accommodation_id) VALUES ('MJkang', '가성비 최고의 투룸. 누구나 갖고 싶어하는 투룸. 강남역 도보 1분 거리. 럭셔리 풀옵션.', 4);


-- -----------------------------------------------------
-- reservation 초기값 추가
-- -----------------------------------------------------

INSERT INTO reservation (check_in_date, check_out_date, accommodation_id, user_id) VALUES ('2021-04-21', '2021-04-23', 1, 16694346);
INSERT INTO reservation (check_in_date, check_out_date, accommodation_id, user_id) VALUES ('2021-05-03', '2021-05-05', 1, 16694346);
INSERT INTO reservation (check_in_date, check_out_date, accommodation_id, user_id) VALUES ('2021-01-21', '2021-01-23', 2, 16694346);
INSERT INTO reservation (check_in_date, check_out_date, accommodation_id, user_id) VALUES ('2021-02-01', '2021-02-03', 2, 16694346);
