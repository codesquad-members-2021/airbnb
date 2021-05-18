INSERT INTO place (place_id, place_name, maximum_number_of_people)
VALUES (1, '서울호스텔', 3);
INSERT INTO place (place_id, place_name, maximum_number_of_people)
VALUES (2, '코드스쿼드', 4);

INSERT INTO reservation (reservation_id, place_id, check_in, check_out, adult, child, infant, price)
VALUES (1, 1, '2021-05-18', '2021-05-22', 1, 0, 0, 100000);
