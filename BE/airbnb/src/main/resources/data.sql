-- -----------------------------------------------------
-- accommodation 초기값 추가
-- -----------------------------------------------------

INSERT INTO accommodation (name, max_people, type, num_of_bed, num_of_bathroom, cost) VALUES ('house #1', 3, '원룸', 1, 1, 15000);
INSERT INTO accommodation (name, max_people, type, num_of_bed, num_of_bathroom, cost) VALUES ('house #2', 4, '투룸', 2, 1, 20000);
INSERT INTO accommodation (name, max_people, type, num_of_bed, num_of_bathroom, cost) VALUES ('house #3', 1, '원룸', 1, 1, 10000);
INSERT INTO accommodation (name, max_people, type, num_of_bed, num_of_bathroom, cost) VALUES ('house #4', 4, '투룸', 2, 2, 20000);


-- -----------------------------------------------------
-- reservation 초기값 추가
-- -----------------------------------------------------

INSERT INTO reservation (check_in_date, check_out_date, accommodation_id) VALUES ('2021-04-21', '2021-04-23', 1);
INSERT INTO reservation (check_in_date, check_out_date, accommodation_id) VALUES ('2021-05-01', '2021-05-21', 1);
INSERT INTO reservation (check_in_date, check_out_date, accommodation_id) VALUES ('2021-01-21', '2021-01-23', 2);
INSERT INTO reservation (check_in_date, check_out_date, accommodation_id) VALUES ('2021-02-01', '2021-02-21', 2);
