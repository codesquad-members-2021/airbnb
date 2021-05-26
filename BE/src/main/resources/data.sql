INSERT INTO city(name)
values ('서울'),('경기도'),('강원도'),('충청도'),('경상남도'),('경상북도'),('전라남도'),('전라북도');

INSERT INTO image_type(type)
values ('HERO'),('MAIN'),('DETAIL');

INSERT INTO category(name)
values ('자연생활을 만끽 할 수 있는 숙소'),('독특한 공간'),('집 전체'),('반려 동물과 함께 할 수 있는 공간');

INSERT INTO image(url,image_type)
values ('https://a0.muscache.com/im/pictures/ddc7f01f-3fb3-483c-87e6-701dad52c930.jpg?im_w=1920', 'HERO');

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

INSERT INTO image(url,image_type,room_id)
values ('https://a0.muscache.com/im/pictures/c45d08e5-f560-44f0-83fc-83290ccd1670.jpg?im_w=1200', 'MAIN', 1),
       ('https://a0.muscache.com/im/pictures/83ea7cb5-a925-4fc8-835f-da8df7f24bec.jpg?im_w=1200', 'MAIN', 2),
       ('https://a0.muscache.com/im/pictures/miso/Hosting-44159716/original/04dc2ade-cd11-4599-a7fb-a6f4b6176f4e.jpeg?im_w=1200', 'MAIN', 3),
       ('https://a0.muscache.com/im/pictures/42c6cd5c-512c-4f39-9e9c-9ed274f2f0e5.jpg?im_w=1200', 'MAIN', 4),
       ('https://a0.muscache.com/im/pictures/miso/Hosting-44090615/original/c2904e87-4014-4d26-a977-b789248c77ce.jpeg?im_w=1200', 'MAIN', 5),
       ('https://a0.muscache.com/im/pictures/miso/Hosting-47435529/original/82c508c8-e0b5-4da2-805f-8772ad9bfe9d.jpeg?im_w=1200', 'MAIN', 6),
       ('https://a0.muscache.com/im/pictures/a63a845b-c16e-4a0f-b0ca-a124a677b3d2.jpg?im_w=1200', 'MAIN', 7),
       ('https://a0.muscache.com/im/pictures/miso/Hosting-47897490/original/b0238603-d063-4f5c-9e10-c835132669e4.jpeg?im_w=1200', 'MAIN', 8);

INSERT INTO room(price, title, description, people, oneroom, bed, bath, hair_dryer, air_conditioner, wifi, clean_tax, city_id, category_id)
values (150000, '이태원에 아늑한 숙소 Y 하우스', '이태원역에서 도보로 4분거리에 위치하고 있고 대로변에서 상당히 가까운 지역에 위치하여 여성분들도 안전하게 머무시며 이태원을 만끽하실 수 있으세요.'
        , 2, false, 2, 1, true, true, true, 25000, 1, 1),
       (200000, '강남역 1번 출구 바로 옆 편리하고 깔끔한 숙소', '- 전철까지 도보 30초
- 침구로 매번 깨끗이 교체
- 18층으로 좋은 전망
- 세탁기 + 건조기
- 지하창고에 짐 보관 무료
- 주차는 1시간에 1000원으로 꼭 미리 문의 주셔야합니다' , 3, false, 3, 1, true, true, true, 22000, 1, 1),
       (300000, '1호선 제기동 역에서 부터 도보로 30초거리에 위치' , '1. 1호선 제기동 역에서 부터 도보로 30초거리에 위치하고 있어 접근성이 훌륭합니다.
2. 모든 가구와 인테리어가 새것이라 매우 청결합니다.
3. 퀸사이즈 침대가 설치되어 있어 매우 편한 수면을 취할 수 있습니다.
4. 스마트 티비가 있습니다. 다양한 채널의 TV는 물론 본인 계정의 유튜브, 넷플릭스 계정을 연결하여 시청 할 수 있습니다.
5. 고급형 접이식 식탁이 있어서 공간을 유용하게 사용 할 수 있습니다.
6. 최신형 공기청정기가 있어 쾌적한 공기를 유지합니다.
7. 게스트분들의 피드백으로 전자레인지가 추가 되었습니다.', 3, false, 3, 1, true, true, true, 23000, 1, 2),
     (250000, '뷰가 너무 좋은 숙소', '본 숙소는 친구, 지인들과의 모임장소나 회포를 풀고 생일파티를 하는 등 밤 늦게까지 술를 마시는 장소로는 적합하지 않습니다. 만약 그런 이유로 민원이 발생할경우 바로 퇴실조치 하겠습니다.',
      4, false, 3, 2, true, true, true, 18000, 1, 3),
     (300000, '자가격리만 전문으로 하는 숙소입니다 :-)', '호텔에서 쓰는 40수 프리미엄 침구류로 이불, 배게 쾌적한 환경을 자랑합니다.
빔프로젝터(넷플릭스&왓챠 등), WIFI 가능
식사를 위한 인덕션, 후라이팬, 냄비, 조리도구, 접시 등 모든 취사에 필요한 도구들이 준비되어 있습니다.' , 2, true, 2, 1, true, true, true, 20100, 1, 2),
     (150000, '스마트 숙소관리 프리모(Premo)를 사용할 수 있는 AI 숙소', '-비대면 언택트 스마트 도어락 사용
-일회용 비밀번호 사용으로 안전합니다.
▶응암역(6호선) 도보 7분 내외
▶신축 / 엘레베이터
▶이마트 도보 2분' , 3, false, 2, 1, true, true, true, 23000, 1, 3),
     (150000, '당산역 1분거리에 있는 고층아파트', '무료주차(입.출차 1회제공)
빌트인가구와 퀸침대 55인치 tv
sk인터넷,tv, 와이파이제공
선유도와 여의도한강공원산책가능', 2, true, 2, 1, true, true, true, 20000, 1, 1),
      (400000, '어반스테이 더 남산', '말이 필요없다 일단 와라!!!', 4, false, 4, 2, true, true, true, 30000, 1, 4);
