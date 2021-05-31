INSERT INTO user(`id`, `github`) VALUES(1, 'tree');
INSERT INTO user(`id`, `github`) VALUES(2, 'BONGF');

INSERT INTO room(`id`, `name`, `grade`, `reviewer`, `address`, `latitude`, `longitude`, `room_type`, `bed`, `bed_room`, `bath_room`, `description`, `host_name`, `host_image`,  `price_per_day`, `capacity`)
VALUES (1, 'the-k seoul', 4.5, 100, '서울특별시 서초구 양재2동 바우뫼로12길 70', 37.4661237, 127.0304784, 'ENTIRE_PLACE', 1, 1, 1, '양재역에 위치한 더케이서울입니다.', 'the-k', 'https://lh3.googleusercontent.com/p/AF1QipPFnRnv-rbPGS06Gyi4PQOm6be8vKawm7O4Oqzy=w296-h202-n-k-rw-no-v1', 60000, 10);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/c6d2dc5b-91f8-4070-adbd-e252759c24a7.jpg?im_w=1200', 1);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/b5b4f7ee-d104-4729-b9b9-64192dae4227.jpg?im_w=1200', 1);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/c9e17964-093b-47f4-b93e-c796e7359b39.jpg?im_w=720', 1);

INSERT INTO room(`id`, `name`, `grade`, `reviewer`, `address`, `latitude`, `longitude`, `room_type`, `bed`, `bed_room`, `bath_room`, `description`, `host_name`, `host_image`,  `price_per_day`, `capacity`)
VALUES (2, 'codesquad', 4.9, 13, '서울특별시 강남구 역삼동 836-24', 37.4908252, 127.0312283, 'ENTIRE_PLACE', 1, 2, 2, '코드스쿼드입니다.', 'HONUX', 'https://ca.slack-edge.com/T74H5245A-U74KKLB0D-4f2767985e3d-512', 60000, 5);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://lh5.googleusercontent.com/p/AF1QipNxntYBPh5s0xjPzvjnlhi4730KlGBiH4z7B0M2=w408-h306-k-no', 2);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://lh5.googleusercontent.com/p/AF1QipObkWYQyr6rOwJ1V6k9duVHA-gIEUQcJ4FPFFa7=w203-h135-k-no', 2);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://lh5.googleusercontent.com/p/AF1QipNfSllpnpl1R3zWI4lQsaqlDLrSaEOo3zjkHQKv=s718-k-no', 2);

INSERT INTO `room`(`id`, `name`, `grade`, `reviewer`, `address`, `latitude`, `longitude`, `room_type`, `bed`, `bed_room`, `bath_room`, `description`, `host_name`, `host_image`,  `price_per_day`, `capacity`)
VALUES (3, 'YeoksamElementarySchool', 3.6, 12, '서울특별시 강남구 역삼1동 강남대로66길 21', 37.4927053, 127.0305617, 'HOTEL_ROOM', 10, 10, 10, '역삼초입니다.', 'YEON', 'https://ca.slack-edge.com/T74H5245A-U01J5LYPUKT-4f8bc7881fba-512', 100000, 100);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://lh5.googleusercontent.com/p/AF1QipO-75G4s9xmUVRUmoAgPTeUdrlcbxyV8gXqvmth=s670-k-no', 3);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://lh5.googleusercontent.com/p/AF1QipMS3vA2PMHOwVwKM2tOlvmmFwiF_7NsbgA-wvEE=w203-h270-k-no', 3);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://lh5.googleusercontent.com/p/AF1QipNyOrnxkCr3MrmxP-AUkUmpJ7cT7AN-MtljdbBG=w203-h270-k-no', 3);

INSERT INTO room(`id`, `name`, `grade`, `reviewer`, `address`, `latitude`, `longitude`, `room_type`, `bed`, `bed_room`, `bath_room`, `description`, `host_name`, `host_image`,  `price_per_day`, `capacity`)
VALUES (4, 'Dogok-APT', 4.7, 38, '서울특별시 강남구 도곡2동 선릉로 221', 37.4935719, 127.048583, 'SHARED_ROOM', 6, 7, 2, '도곡아파트입니다. 방이 넓어요', 'Dong', 'https://ca.slack-edge.com/T74H5245A-U01J1D774UC-4cb9989e1d29-512', 70000, 6);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://lh5.googleusercontent.com/p/AF1QipNtsg3PfMje-yGa6BC_2vRPZC7G4bnMx8cNk7vQ=w203-h152-k-no', 4);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://lh5.googleusercontent.com/p/AF1QipNtsg3PfMje-yGa6BC_2vRPZC7G4bnMx8cNk7vQ=s744-k-no', 4);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://lh5.googleusercontent.com/p/AF1QipOVj8iEgeUa0a1boqAoaUmukiO9Po8saf6d-KMQ=s1117-k-no', 4);

INSERT INTO room(`id`, `name`, `grade`, `reviewer`, `address`, `latitude`, `longitude`, `room_type`, `bed`, `bed_room`, `bath_room`, `description`, `host_name`, `host_image`,  `price_per_day`, `capacity`)
VALUES (5, 'DAMIAN-HOTEL', 3.8, 82, '서울특별시 강남구 도곡1동 도곡로 220', 37.4926686, 127.0255512, 'HOTEL_ROOM', 1, 1, 1, '호텔입니다. 방이 넓어요', 'Dumba', 'https://ca.slack-edge.com/T74H5245A-U01HBG75AG7-fedf3b75b5d4-512', 30000, 2);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/b1871fa0-7a16-45dd-ad6f-7c1a62af9888.jpg?im_w=1200', 5);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/58e79bf0-76d8-4455-8342-d79ff04bfa9c.jpg?im_w=1200', 5);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/962e576f-6178-4ace-98f2-1aee1bac5846.jpg?im_w=720', 5);

INSERT INTO room(`id`, `name`, `grade`, `reviewer`, `address`, `latitude`, `longitude`, `room_type`, `bed`, `bed_room`, `bath_room`, `description`, `host_name`, `host_image`,  `price_per_day`, `capacity`)
VALUES (6, 'ibis Styles Ambassador Seoul Gangnam', 4.0, 1664, '서울특별시 강남구 대치4동 삼성로 431', 37.4996378, 127.0379374, 'HOTEL_ROOM', 3,  3, 2, '호텔입니다. 방이 넓어요', 'NAS', 'https://ca.slack-edge.com/T74H5245A-U01HD2AF9B9-9f9b4014d997-512', 270000, 2);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://lh5.googleusercontent.com/p/AF1QipOEQs8J3Yiwq6WT3tb5fOcdHiJ9W0UKigOVkWQn=s836-k-no', 6);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://lh6.googleusercontent.com/proxy/KprAz3tvr7tFsxeirVXSLp5OrCmzcZZuX61Ej4dVr42I7k4Gqu7_W5tPAKzVEqwOoFwQqA7e2h6B9dAh9zn7OAlIDaWoJ1XhCQXn_LNEshiPoAvr2ReKrJ4kdQE7UXmsnbTO6ru7oHAVUERu-bfnxQ7yIh3hTCQ=w203-h135-k-no', 6);
INSERT INTO `image`(`url`, `room`)
VALUES ('https:////lh4.googleusercontent.com/proxy/cAvwgOJqSykJjiBpjEz6QLVrQuIBihUUziIcXDqIT_A3Soit5-oH1NrNbAfnxOJVKfM6gc1eWxdqjyyoDp0SSMx6YLGHXUJFtxrHbhF66sy_7zPG0K_m9nI26_hyc7VOCp5j1t6OuFZtgwBVJ2fFE6rjqblDFw=w203-h152-k-no', 5);

INSERT INTO room(`id`, `name`, `grade`, `reviewer`, `address`, `latitude`, `longitude`, `room_type`, `bed`, `bed_room`, `bath_room`, `description`, `host_name`, `host_image`,  `price_per_day`, `capacity`)
VALUES (7, '성산카리스다올림', 4.91, 11, '서울 마포구 성산동 591-6', 37.5652326, 126.9006676, 'PRIVATE_ROOM', 1,  1, 1, '방입니다. 방이 넓어요', 'marco', 'https://ca.slack-edge.com/T74H5245A-U01J4TYE589-ga928c512f7c-512', 85000, 2);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/26cff20a-c966-4621-a56f-d6b4530ec191.jpg?im_w=960', 7);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/00ced434-add9-44ce-81e1-a4738304cafd.jpg?im_w=1200', 7);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/0a1881d2-61f1-436f-be3e-60789e2ae44f.jpg?im_w=720', 7);

INSERT INTO room(`id`, `name`, `grade`, `reviewer`, `address`, `latitude`, `longitude`, `room_type`, `bed`, `bed_room`, `bath_room`, `description`, `host_name`, `host_image`,  `price_per_day`, `capacity`)
VALUES (8, 'Micasa@Seoul: Just opened for you~', 4.0, 1, '서울 마포구 성산동 591-6', 37.5506404, 126.9136096, 'PRIVATE_ROOM', 1,  1, 1, '방입니다. 방이 넓어요', 'noel', 'https://ca.slack-edge.com/T74H5245A-U01HM6VJMQW-1d088720709b-512', 65000, 2);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/595815bd-9083-4d3b-a78f-d42356080415.jpg?im_w=1200', 8);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/f9fb1d13-5ce1-4c7c-bc60-29964dd0c06c.jpg?im_w=720', 8);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/21bdb540-0256-4040-b71d-fd839075c64c.jpg?im_w=720', 8);


INSERT INTO room(`id`, `name`, `grade`, `reviewer`, `address`, `latitude`, `longitude`, `room_type`, `bed`, `bed_room`, `bath_room`, `description`, `host_name`, `host_image`,  `price_per_day`, `capacity`)
VALUES (9, '위크앤드 [ Week;and ] 감성충전! 디자이너집 살아보기', 4.88, 428, '서울특별시 용산구 이태원1동 이태원로23길 21', 37.5353311, 126.9918668, 'ENTIRE_PLACE', 1,  1, 1, '방입니다. 방이 넓어요', 'sally', 'https://ca.slack-edge.com/T74H5245A-U01HF8HEXRV-6cb18d7abf63-512', 130000, 5);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/3b72f326-5c82-44a5-9299-f3e1d0a547fe.jpg?im_w=1200', 9);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/91f5e64b-d0c7-4bf6-aae0-1c169bd24d77.jpg?im_w=1200', 9);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/miso/Hosting-18674278/original/e4a6c067-76b3-463e-9e29-46de29a39d62.jpeg?im_w=720', 9);


INSERT INTO room(`id`, `name`, `grade`, `reviewer`, `address`, `latitude`, `longitude`, `room_type`, `bed`, `bed_room`, `bath_room`, `description`, `host_name`, `host_image`,  `price_per_day`, `capacity`)
VALUES (10, '고즈넉한 한옥스테이 희담재', 4.96, 53, '서울특별시 한남동 소월로 322', 37.5393549, 126.9966033, 'ENTIRE_PLACE', 3,  2, 3, '돌담과 가림벽으로 주변 시선에 노출되지 않고 프라이빗하게 숙소에서 즐길 수 있습니다. 숙소와 카페를 동시 운영하고 있어 음료/커피/브런치 등 다양하게 이용하실 수 있는 장점이 있습니다. 3년동안 오프라인만 운영하였습니다. 운영 과정을 통해 정말 좋은 분들과의 만남도 가지고 아끼지 않는 칭찬도 많이 받았었지만 그 속에서도 부족한 부분을 점검하고 보완하여 이제는 더 많은 분들께 저희 희담재를 소개 시켜 드리고 싶은 주인장 마음에 이렇게 에어비앤비에 등록을 하게 되었습니다.', 'rano', 'https://ca.slack-edge.com/T74H5245A-U01JK703LC8-46a9f3da2ad1-512', 160000, 8);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/4faf53de-3b74-443c-8f50-30da1b4cc8ba.jpg?im_w=1200', 10);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/14fdc8f1-ad90-4faa-b714-e6e1ea664381.jpg?im_w=1200', 10);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/7c53dfd7-2825-4976-9e81-ef850913fa77.jpg?im_w=1200', 10);

INSERT INTO room(`id`, `name`, `grade`, `reviewer`, `address`, `latitude`, `longitude`, `room_type`, `bed`, `bed_room`, `bath_room`, `description`, `host_name`, `host_image`,  `price_per_day`, `capacity`)
VALUES (11, '유유자적 삼동', 4.94, 16, '서울특별시 용산구 한남동 621-1 2층', 37.5335673, 126.9990757, 'PRIVATE_ROOM', 1,  1, 1, '적정한 온도의 미온수에서 수영을 즐겨요 북한강이 보이는 욕조에 몸을 담가 그동안 쌓였던 피로를 풀어보세요 폭신한 침대에 누워 사각거리는 이불을 덮고 그동안 바빠서 놓쳤던 영화도 보고 그러다 어느새 단잠에 빠질 거예요 아침엔 나란히 앉아 강물을 바라보며 준비된 가벼운 식사로 하루를 시작해요 그렇게 유유자적 하루를 지내보면 지쳤던 몸과 마음에 위로가 될 거예요 이곳에서 쉬어가는 동안 여유롭고 편안하시길 바라는 마음으로 정성을 다해 준비하였습니다 기본인원 2명 최대인원 2인이며, 예약 시 인원수에 맞게 침구와 어메니티 그리고 조식을 준비해 드립니다. 침구와 가운 은 항상 깨끗하게 유지하며, 사계절 온수 수영장은 매일 순환식으로 수질관리하고 있습니다. 깨끗한 청소와 피톤치드 연무 소독으로 청결한 숙소를 유지하고 있습니다. 다만 자연과 가까운 곳이어서 곤충들이 놀러 올 수 있습니다. 충에 예민 하신 분은 예약에 신중해 주세요', 'robin', 'https://ca.slack-edge.com/T74H5245A-U01HP9PKWUD-410ede43863b-512', 255000, 2);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/fbbab78f-d066-4f3e-bf74-3763ca09ba13.jpg?im_w=1200', 11);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/miso/Hosting-49336798/original/86bb9561-752a-456b-9c24-05462092f640.jpeg?im_w=1200', 11);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/9fdddcc3-acc4-445b-b736-6c003ce3623f.jpg?im_w=720', 11);

INSERT INTO room(`id`, `name`, `grade`, `reviewer`, `address`, `latitude`, `longitude`, `room_type`, `bed`, `bed_room`, `bath_room`, `description`, `host_name`, `host_image`,  `price_per_day`, `capacity`)
VALUES (12, 'yuyujajeok, 편히쉬어가는곳', 5.0, 12, '서울특별시 영등포구 여의도동 의사당대로 82', 37.5226344, 126.9213062, 'HOTEL_ROOM', 1,  1, 1, '계절마다 반짝이는 북한강을 바라보며 적정한 온도의 미온수에서 수영을 즐겨요 탁 트인 하늘을 보며 따끈한 노천탕에 몸을 담가 쌓였던 피로를 풀어보세요 폭신한 침대에 누워 사각거리는 이불을 덮고 그동안 바빠서 놓쳤던 영화도 보세요 그러다 어느새 단잠에 빠질 거예요 아침엔 강물 위를 노니는 귀여운 새들을 보며 준비된 가벼운 식사로 하루를 시작해요 그렇게 유유자적 하루를 지내보면 지쳤던 몸과 마음에 위로가 될 거예요', 'downy', 'https://ca.slack-edge.com/T74H5245A-U01HSCSFSSW-d04ad5c21501-512', 185000, 2);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/2840943e-c8bd-4a56-ab32-05ffd425fa6d.jpg?im_w=1200', 12);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/7ccc3ecc-4884-4911-8bf8-9193c403ee7f.jpg?im_w=720', 12);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/79ad82bf-e7d4-43e2-acbd-dfeccfca907e.jpg?im_w=720', 12);

INSERT INTO room(`id`, `name`, `grade`, `reviewer`, `address`, `latitude`, `longitude`, `room_type`, `bed`, `bed_room`, `bath_room`, `description`, `host_name`, `host_image`,  `price_per_day`, `capacity`)
VALUES (13, '구례옥잠 (GuryeOkjam)', 4.89, 55, '서울특별시 동작구 노량진동 294-456', 37.5007495, 126.9600952, 'HOTEL_ROOM', 2,  2, 3, '구례옥잠은 옛날 집을 개조한 작은 게스트하우스입니다. 오래된 건물이라 천장이 낮고 방음이 취약해 조금 불편할 수 있지만 옛날집의 아늑함을 느낄 수 있는 장점도 있답니다.', 'bmo', 'https://ca.slack-edge.com/T74H5245A-U01JG8T9KEC-0ef89874444c-512', 65000, 10);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/42c5d1a1-fce7-4b85-928c-80b151bb5446.jpg?im_w=1200', 13);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/11c5c65d-682e-4562-b200-72a5c32d7592.jpg?im_w=1200', 13);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/4a967e77-9bd7-4c9f-a929-5ced045223b2.jpg?im_w=720', 13);

INSERT INTO room(`id`, `name`, `grade`, `reviewer`, `address`, `latitude`, `longitude`, `room_type`, `bed`, `bed_room`, `bath_room`, `description`, `host_name`, `host_image`,  `price_per_day`, `capacity`)
VALUES (14, '고전적인 한옥의 감성과 현대적인 편리함을 공유', 4.99, 74, '서울특별시 관악구 남현동 1082-37', 37.4742981, 126.9749058, 'PRIVATE_ROOM', 1,  1, 1, '여유로운 라이프 스타일을 지향하는 곳입니다. 77년에 지어진 한옥을 현대식으로 리모델링하여 고전적인 한옥의 감성과 현대적인 편리함을 공유시킨 장소입니다. 황리단길의 메인도로에 위치해 있으며 인근 관광지 및 핫플레이스와 인접해 있어 도보로 여행이 가능합니다. 공용 다이닝 룸을 중심으로 3개의 방으로 나뉘어져 있습니다. 그 중 2번방은 2인을 위한 공간으로 게스트의 편안한 휴식을 위해 붙박이 침대, 붙박이 벤치, 개별 테라스로 이루어져 있으며 독립된 공간에서 아늑한 휴식을 취하실 수 있을 것입니다.', 'jenny', 'https://ca.slack-edge.com/T74H5245A-U01HU1MMT0A-e40ce30efd70-512', 65000, 20);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/d74b2be1-9218-4ec9-a5c9-2437203da6d4.jpg?im_w=720', 14);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/05193eb4-e410-4758-b7e6-a1cd6eea2208.jpg?im_w=720', 14);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/6e55a618-490e-48c1-adec-d7bcabea4bbf.jpg?im_w=1200', 14);

INSERT INTO room(`id`, `name`, `grade`, `reviewer`, `address`, `latitude`, `longitude`, `room_type`, `bed`, `bed_room`, `bath_room`, `description`, `host_name`, `host_image`,  `price_per_day`, `capacity`)
VALUES (15, '일영댁의 루프탑', 4.93, 68, '서울특별시 광진구 자양동 770-1', 37.5391522, 127.0806075, 'ENTIRE_PLACE', 1,  2, 1, '서울에서 가까운 공기좋고 조용한 작은마을안에 있는 루프탑을 즐겨보세요! 엘레베이터가 없는 4층의 옥상입니다. 조금은 힘들게 올라오셔야겠지만, 루프탑에 도착하시면 북한산 전망을 바라보시며 야외테라스에서 프라이빗한 시간을 만드실수 있는 장소이며, 테라스에서 야외 욕조도 이용하실 수 있습니다. (냉,온수)', 'jane', 'https://ca.slack-edge.com/T74H5245A-U01J52Z9HJM-bff56f282096-512', 233000, 6);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/a317fbfd-e121-4bcb-ac8b-f5720aaa016d.jpg?im_w=960', 15);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/f49f39cb-6316-46bb-a515-bee1d98117f0.jpg?im_w=720', 15);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/8c7bf879-7c10-4bae-8109-ff1a06b20e00.jpg?im_w=720', 15);

INSERT INTO room(`id`, `name`, `grade`, `reviewer`, `address`, `latitude`, `longitude`, `room_type`, `bed`, `bed_room`, `bath_room`, `description`, `host_name`, `host_image`,  `price_per_day`, `capacity`)
VALUES (16, '오션뷰 노천탕이 있는 프라이빗 렌트 하우스', 4.94, 121, '서울특별시 광진구 구의동 594-1', 37.5349632, 127.0908141, 'HOTEL_ROOM', 2,  2, 2, '여름,겨울에 대비하여 시스템에어컨과 내외 단열재 사용으로 사계절 내내 최상의 환경을 제공합니다. 또한 여러 사용자를 대비하여 두개 세면대를 설치하였고 화장실과 샤워실을 분리 하여 더욱 쾌적한 환경을 만들었습니다.', 'lin', 'https://ca.slack-edge.com/T74H5245A-URXB5F5E1-f16d2186493d-512', 135000, 6);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/b1005ef2-7df2-4f92-9516-f865005990d9.jpg?im_w=1200', 16);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/2efece2a-36c1-486b-b7b8-0fb10019be6b.jpg?im_w=720', 16);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/8bc0dfba-3d7e-49db-b78e-b6e1da8e27b8.jpg?im_w=1200', 16);

INSERT INTO room(`id`, `name`, `grade`, `reviewer`, `address`, `latitude`, `longitude`, `room_type`, `bed`, `bed_room`, `bath_room`, `description`, `host_name`, `host_image`,  `price_per_day`, `capacity`)
VALUES (17, '몽상가의 시골집', 4.76, 373, '서울특별시 강남구 삼성1동 봉은사로 524 코엑스 1층 인터컨티넨탈', 37.4966206, 127.0496687, 'HOTEL_ROOM', 2,  2, 1, '강원도 평창, 700미터 고도 위 쉼여행 최적지. 산과 구름, 몇 채의 민가와 고랭지 채소밭 말고는 아무것도 없는 진짜 시골 여행! 그러나 누군가에는 너무도 많은 것이 있는 곳!! 그림과 아날로그르 음악, 그리고 책이 있는 퀸사이즈룸 2개에 넓은 거실, 자연을 향해 열려 있는 넓은 테라스. 맑은 물과 공기, 밤하늘의 별과 고요가 있는 전원주택 독채! 동서울터미널에서 운교행 버스 타면 한시간반만에 도착! *WELLI HILLI SKI Resort is a 20 minute drive. *토요일과 공휴일, 휴가철 4인이상 우선예약! *기본 셀프 입실.', 'freddy', 'https://ca.slack-edge.com/T74H5245A-U01HBNWQVCP-35001a089583-512', 55000, 2);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/eb8028f9-0ddd-49f0-95a9-daad056c92b1.jpg?im_w=1200', 17);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/a9d4d521-39df-47dc-a54a-9650c45a5f7a.jpg?im_w=1200', 17);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/0779ad72-5967-4b63-84cf-3aeabe3b0575.jpg?im_w=720',17);

INSERT INTO room(`id`, `name`, `grade`, `reviewer`, `address`, `latitude`, `longitude`, `room_type`, `bed`, `bed_room`, `bath_room`, `description`, `host_name`, `host_image`,  `price_per_day`, `capacity`)
VALUES (18, ' 풀잎애', 4.87, 55, '서울특별시 동대문구 이문동 이문로 174-1', 37.6032226, 127.0614934, 'ENTIRE_PLACE', 1,  2, 1, '- 산 속에 위치하고 있어 추울 수 있으니 따뜻한 옷을 가져오시길 바랍니다. 주변에 편의점이나 마트가 없으니 오시기 전에 장을 봐오시길 추천드려요. 겨울철 산길을 올라오시는 길이 미끄럽습니다. 스노우타이어가 장착된 4륜구동차량이 아닌 경우 스노우체인(단순 부착X)이 꼭 필요합니다.혹 그게 어려우신 경우 콜밴 이용 추천드립니다. 날씨가 따뜻해지면서 곤충들의 출현이 있을 수 있습니다. 산에 둘러쌓인 자연공간인 만큼 당연한 부분이니 널리 양해와 이해부탁드립니다.', 'seong', 'https://ca.slack-edge.com/T74H5245A-U01HP9EUWUD-7eba0ed5db6a-512', 35000, 4);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/8f57cd58-a9ac-4933-a405-add11a93d4e2.jpg?im_w=960', 18);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/de170ec6-eddd-4060-b015-80effa5ffd40.jpg?im_w=1200', 18);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/0db96064-69a6-48c7-b156-4b04c7077763.jpg?im_w=720', 18);

INSERT INTO room(`id`, `name`, `grade`, `reviewer`, `address`, `latitude`, `longitude`, `room_type`, `bed`, `bed_room`, `bath_room`, `description`, `host_name`, `host_image`,  `price_per_day`, `capacity`)
VALUES (19, '청수리 오즈네 164', 4.98, 123, '서울특별시 중랑구 상봉동 128-40번지', 37.5942015, 127.0609456, 'HOTEL_ROOM', 1,  1, 1, '청수리 오즈네는 제주 서쪽 감귤 과수원과 반딧불이로 유명한 청수리에 위치한 조용한 시골 주택입니다. 19년 1월을 시작으로 2년이 흘렀고 많은 관심을 가져주신 덕분에 숙소 안팎으로 재정비하는 시간을 가질 수 있었습니다. 남편이 만든 가구로 객실을 채우고, 아내인 저는 패브릭으로 온기를 전할 수 있는 것들을 만들어 준비했습니다. 새로워진 모습으로 21년 3월, 다시 시작합니다.', 'issac', 'https://ca.slack-edge.com/T74H5245A-U01HKR2C1B8-6f9beb6aeed5-512', 155000, 2);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/miso/Hosting-30629416/original/ebba04af-3de6-41e0-a44a-638f436fff01.jpeg?im_w=1200', 19);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/miso/Hosting-30629416/original/13415180-25a0-4c90-bebf-257aeafbbf6e.jpeg?im_w=1200', 19);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/73d4b623-0630-46d7-bf08-95aaac0a4edf.jpg?im_w=1200', 19);

INSERT INTO room(`id`, `name`, `grade`, `reviewer`, `address`, `latitude`, `longitude`, `room_type`, `bed`, `bed_room`, `bath_room`, `description`, `host_name`, `host_image`,  `price_per_day`, `capacity`)
VALUES (20, '돌집스테이', 4.97, 73, '서울특별시 구로구 구로동 디지털로 300', 37.4695193,126.9027923, 'PRIVATE_ROOM', 1,  1, 1, '평대바다 바로 앞에 있는 모던한 스타일의 제주 돌집입니다. 방 하나에 퀸메트리스 2개가 놓여 있고 방문을 열면 탁트인 스튜디오 형식으로 변합니다. 거실이나 데크, 잔디마당에서 바다 풍경을 즐길 수 있고 아침에는 아름다운 일출을 볼 수 있습니다. 창문으로 보이는 바다뷰는 진정한 쉼과 힐링을 제공합니다. 조용하고 여유로운 여행을 원하시는 분들께 적합한 숙소입니다.', 'coco', 'https://ca.slack-edge.com/T74H5245A-U01HSH6U0EN-e2addb0b3062-512', 270000, 2);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/110669257/ef543798_original.jpg?im_w=1200', 20);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/2774d63e-90c1-464c-a186-020c4f13b50a.jpg?im_w=720', 20);
INSERT INTO `image`(`url`, `room`)
VALUES ('https://a0.muscache.com/im/pictures/6e462fb3-eb4d-4351-a182-3a3c5905259f.jpg?im_w=720', 20);

-- INSERT INTO room(`id`, `name`, `grade`, `reviewer`, `address`, `latitude`, `longitude`, `room_type`, `bed`, `bed_room`, `bath_room`, `description`, `host_name`, `host_image`,  `price_per_day`, `capacity`)
-- VALUES (7, '성산카리스다올림', 4.91, 11, '서울 마포구 성산동 591-6', 37.5652326, 126.9006676,17, 'PRIVATE_ROOM', 1,  1, 1, '방입니다. 방이 넓어요', 'marco', '', 85000, 2);
-- INSERT INTO `image`(`url`, `room`)
-- VALUES ('', 7);
-- INSERT INTO `image`(`url`, `room`)
-- VALUES ('', 7);
-- INSERT INTO `image`(`url`, `room`)
-- VALUES ('', 7);





INSERT INTO `booking`(`check_in`, `check_out`, `guest`, `total_price`, `user`, `room`)
VALUES ('2021-05-20', '2021-05-25', 1, 15000, 1, 1);
INSERT INTO `wishlist`(`id`, `user`, `user_key`, `room`)
VALUES (1, 1, 0, 1);
INSERT INTO `wishlist`(`id`, `user`, `user_key`, `room`)
VALUES (2, 1, 1, 2);
INSERT INTO `hero_banner`(`id`, `title`, `image`)
VALUES (1, 'title1', 'image1');
INSERT INTO `hero_banner`(`id`, `title`, `image`)
VALUES (2, 'title2', 'image2');
INSERT INTO `near_destination`(`id`, `destination`, `time_distance`, `image`)
VALUES (1, '광주', '00:25:00', 'image1');
INSERT INTO `near_destination`(`id`, `destination`, `time_distance`, `image`)
VALUES (2, '대전', '01:25:00', 'image2');

