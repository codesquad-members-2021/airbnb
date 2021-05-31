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

-- -----------------------------------------------------
-- image 초기값 추가
-- -----------------------------------------------------
INSERT INTO image (url, main, accommodation_id) VALUES ('https://a0.muscache.com/im/pictures/d9fb7454-fd02-4faf-8712-aa1f84f0f60f.jpg?im_w=1200', 1, 1);
INSERT INTO image (url, accommodation_id) VALUES ('https://a0.muscache.com/im/pictures/5cdb79f3-be4a-424a-92f6-a8923063e7a2.jpg?im_w=720', 1);
INSERT INTO image (url, accommodation_id) VALUES ('https://a0.muscache.com/im/pictures/f7efcaad-3944-4561-99f7-03bd6b36a5e0.jpg?im_w=720', 1);
INSERT INTO image (url, accommodation_id) VALUES ('https://a0.muscache.com/im/pictures/7eb0519c-95fd-40e6-84be-ed6ddd391a33.jpg?im_w=1200', 1);

INSERT INTO image (url, main, accommodation_id) VALUES ('https://a0.muscache.com/im/pictures/87615972/25d9438b_original.jpg?im_w=1200', 1, 2);
INSERT INTO image (url, accommodation_id) VALUES ('https://a0.muscache.com/im/pictures/90732534/bc97815d_original.jpg?im_w=720', 2);
INSERT INTO image (url, accommodation_id) VALUES ('https://a0.muscache.com/im/pictures/87616028/504219c8_original.jpg?im_w=720', 2);
INSERT INTO image (url, accommodation_id) VALUES ('https://a0.muscache.com/im/pictures/93005553/de8a2500_original.jpg?im_w=720', 2);

INSERT INTO image (url, main, accommodation_id) VALUES ('https://a0.muscache.com/im/pictures/c45d08e5-f560-44f0-83fc-83290ccd1670.jpg?im_w=1200', 1, 3);
INSERT INTO image (url, accommodation_id) VALUES ('https://a0.muscache.com/im/pictures/41ee09fc-eddb-49c5-a3b4-ae2caacaf759.jpg?im_w=720', 3);
INSERT INTO image (url, accommodation_id) VALUES ('https://a0.muscache.com/im/pictures/adca4292-084c-45a2-a9c5-1e4679ba81fe.jpg?im_w=720', 3);
INSERT INTO image (url, accommodation_id) VALUES ('https://a0.muscache.com/im/pictures/e3258341-b4f3-4988-b958-bec903936a0b.jpg?im_w=720', 3);


INSERT INTO image (url, main, accommodation_id) VALUES ('https://a0.muscache.com/im/pictures/miso/Hosting-48037336/original/a49041e4-c3df-4c60-9035-4029688fda79.jpeg?im_w=1200', 1, 4);
INSERT INTO image (url, accommodation_id) VALUES ('https://a0.muscache.com/im/pictures/miso/Hosting-48037336/original/4ef11b36-b472-445a-866e-9d8ccd0e9f63.jpeg?im_w=720', 4);
INSERT INTO image (url, accommodation_id) VALUES ('https://a0.muscache.com/im/pictures/miso/Hosting-48037336/original/56be6560-76ad-49ab-8f2b-100430532429.jpeg?im_w=720', 4);
INSERT INTO image (url, accommodation_id) VALUES ('https://a0.muscache.com/im/pictures/miso/Hosting-48037336/original/15140009-6f30-4293-bd9f-f9c281462e49.jpeg?im_w=720', 4);
