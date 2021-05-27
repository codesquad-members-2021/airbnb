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

INSERT INTO image(url,image_type, room_id)
values ('https://a0.muscache.com/im/pictures/41ee09fc-eddb-49c5-a3b4-ae2caacaf759.jpg?im_w=720', 'DETAIL', 1),
       ('https://a0.muscache.com/im/pictures/e3258341-b4f3-4988-b958-bec903936a0b.jpg?im_w=720', 'DETAIL', 1),
       ('https://a0.muscache.com/im/pictures/adca4292-084c-45a2-a9c5-1e4679ba81fe.jpg?im_w=720', 'DETAIL', 1),
       ('https://a0.muscache.com/im/pictures/a13322a6-c136-4df0-9a10-348dd91a926c.jpg?im_w=720', 'DETAIL', 1),
       ('https://a0.muscache.com/im/pictures/ecf38b8f-9986-4a66-99de-4273e12942f7.jpg?im_w=720', 'DETAIL', 2),
       ('https://a0.muscache.com/im/pictures/b7aea036-c13b-4cbd-9472-24832c3360d9.jpg?im_w=720', 'DETAIL', 2),
       ('https://a0.muscache.com/im/pictures/4210eef3-ae67-488b-bc8d-d55f8fe690dc.jpg?im_w=720', 'DETAIL', 2),
       ('https://a0.muscache.com/im/pictures/de1c13f8-554b-4abb-9fa6-98299a10f67c.jpg?im_w=720', 'DETAIL', 2),
       ('https://a0.muscache.com/im/pictures/miso/Hosting-44159716/original/c6c1a442-b449-495a-8ee9-f1779f36b5b4.jpeg?im_w=720', 'DETAIL', 3),
       ('https://a0.muscache.com/im/pictures/miso/Hosting-44159716/original/66bd535a-ba05-43e7-adbe-6953bbc13da5.jpeg?im_w=720', 'DETAIL', 3),
       ('https://a0.muscache.com/im/pictures/miso/Hosting-44159716/original/d1857908-90c8-48fd-9e68-a743187664ed.jpeg?im_w=720', 'DETAIL', 3),
       ('https://a0.muscache.com/im/pictures/39b76268-042e-4a89-aa3b-89abe9865c58.jpg?im_w=720', 'DETAIL', 3),
       ('https://a0.muscache.com/im/pictures/063465ea-3f1f-4b83-b0b4-75952fc4c424.jpg?im_w=720', 'DETAIL', 4),
       ('https://a0.muscache.com/im/pictures/dddaa2fd-78a9-4105-92cd-bfefebe65d5f.jpg?im_w=720', 'DETAIL', 4),
       ('https://a0.muscache.com/im/pictures/c1c9e49b-2e5a-47e5-bda8-95390cfde907.jpg?im_w=720', 'DETAIL', 4),
       ('https://a0.muscache.com/im/pictures/800c7310-bf61-4fac-a248-06cdc7081629.jpg?im_w=720', 'DETAIL', 4),
       ('https://a0.muscache.com/im/pictures/miso/Hosting-44090615/original/c5f66ab8-24fe-479d-8b67-a512176ddbef.jpeg?im_w=720', 'DETAIL', 5),
       ('https://a0.muscache.com/im/pictures/miso/Hosting-44090615/original/149e034a-2716-4bb2-8561-a7ccede18571.jpeg?im_w=720', 'DETAIL', 5),
       ('https://a0.muscache.com/im/pictures/02b368b7-63b0-4748-847f-bf5a81c08dd5.jpg?im_w=720', 'DETAIL', 5),
       ('https://a0.muscache.com/im/pictures/58b752dd-8143-4636-83ce-09ebe235683f.jpg?im_w=720', 'DETAIL', 5),
       ('https://a0.muscache.com/im/pictures/miso/Hosting-47435529/original/08d1c75c-4a6b-423e-a908-a624419f4cf6.jpeg?im_w=720', 'DETAIL', 6),
       ('https://a0.muscache.com/im/pictures/miso/Hosting-47435529/original/7c29ac12-fd28-4b6a-a40d-bf193a418c57.jpeg?im_w=720', 'DETAIL', 6),
       ('https://a0.muscache.com/im/pictures/miso/Hosting-47435529/original/a15d42b5-c8c9-47a1-aee6-627fcb64bb9f.jpeg?im_w=720', 'DETAIL', 6),
       ('https://a0.muscache.com/im/pictures/miso/Hosting-47435529/original/2fe6bde7-9e85-4fb2-bbc6-e1cd780b5679.jpeg?im_w=720', 'DETAIL', 6),
       ('https://a0.muscache.com/im/pictures/44ae81dc-e8a9-4623-bccd-97af889a8b16.jpg?im_w=720', 'DETAIL', 7),
       ('https://a0.muscache.com/im/pictures/61b3e6ed-a29f-44a0-8edb-f6985bf2aa62.jpg?im_w=720', 'DETAIL', 7),
       ('https://a0.muscache.com/im/pictures/92bc9188-4c09-40dc-9984-b38a6f1fa70a.jpg?im_w=720', 'DETAIL', 7),
       ('https://a0.muscache.com/im/pictures/50e7a497-3675-4e66-b487-db58f4e5d6c3.jpg?im_w=720', 'DETAIL', 7),
       ('https://a0.muscache.com/im/pictures/miso/Hosting-47897490/original/56311d70-1328-4f37-bd10-15ef43f576c2.jpeg?im_w=720', 'DETAIL', 8),
       ('https://a0.muscache.com/im/pictures/3be5bd86-f7fe-46d8-80ba-d138cf920df5.jpg?im_w=720', 'DETAIL', 8),
       ('https://a0.muscache.com/im/pictures/ef4e5dfc-4da9-4101-ae90-5ad2aaab3c77.jpg?im_w=720', 'DETAIL', 8),
       ('https://a0.muscache.com/im/pictures/1a5e31a5-7b1e-4276-9751-8f1a308dd324.jpg?im_w=720', 'DETAIL', 8);



INSERT INTO room(cost, title, description, people, oneroom, bed, bath, hair_dryer, air_conditioner, wifi, clean_tax, city_id, category_id)
values (153200, '이태원에 아늑한 숙소 Y 하우스', '이태원역에서 도보로 4분거리에 위치하고 있고 대로변에서 상당히 가까운 지역에 위치하여 여성분들도 안전하게 머무시며 이태원을 만끽하실 수 있으세요.'
        , 2, false, 2, 1, true, true, true, 25000, 1, 1),
       (223000, '강남역 1번 출구 바로 옆 편리하고 깔끔한 숙소', '- 전철까지 도보 30초
- 침구로 매번 깨끗이 교체
- 18층으로 좋은 전망
- 세탁기 + 건조기
- 지하창고에 짐 보관 무료
- 주차는 1시간에 1000원으로 꼭 미리 문의 주셔야합니다' , 3, false, 3, 1, true, true, true, 22000, 1, 1),
       (345300, '1호선 제기동 역에서 부터 도보로 30초거리에 위치' , '1. 1호선 제기동 역에서 부터 도보로 30초거리에 위치하고 있어 접근성이 훌륭합니다.
2. 모든 가구와 인테리어가 새것이라 매우 청결합니다.
3. 퀸사이즈 침대가 설치되어 있어 매우 편한 수면을 취할 수 있습니다.
4. 스마트 티비가 있습니다. 다양한 채널의 TV는 물론 본인 계정의 유튜브, 넷플릭스 계정을 연결하여 시청 할 수 있습니다.
5. 고급형 접이식 식탁이 있어서 공간을 유용하게 사용 할 수 있습니다.
6. 최신형 공기청정기가 있어 쾌적한 공기를 유지합니다.
7. 게스트분들의 피드백으로 전자레인지가 추가 되었습니다.', 3, false, 3, 1, true, true, true, 23000, 1, 2),
     (53400, '뷰가 너무 좋은 숙소', '본 숙소는 친구, 지인들과의 모임장소나 회포를 풀고 생일파티를 하는 등 밤 늦게까지 술를 마시는 장소로는 적합하지 않습니다. 만약 그런 이유로 민원이 발생할경우 바로 퇴실조치 하겠습니다.',
      4, false, 3, 2, true, true, true, 18000, 1, 3),
     (72500, '자가격리만 전문으로 하는 숙소입니다 :-)', '호텔에서 쓰는 40수 프리미엄 침구류로 이불, 배게 쾌적한 환경을 자랑합니다.
빔프로젝터(넷플릭스&왓챠 등), WIFI 가능
식사를 위한 인덕션, 후라이팬, 냄비, 조리도구, 접시 등 모든 취사에 필요한 도구들이 준비되어 있습니다.' , 2, true, 2, 1, true, true, true, 20100, 1, 2),
     (85100, '스마트 숙소관리 프리모(Premo)를 사용할 수 있는 AI 숙소', '-비대면 언택트 스마트 도어락 사용
-일회용 비밀번호 사용으로 안전합니다.
▶응암역(6호선) 도보 7분 내외
▶신축 / 엘레베이터
▶이마트 도보 2분' , 3, false, 2, 1, true, true, true, 23000, 1, 3),
     (153000, '당산역 1분거리에 있는 고층아파트', '무료주차(입.출차 1회제공)
빌트인가구와 퀸침대 55인치 tv
sk인터넷,tv, 와이파이제공
선유도와 여의도한강공원산책가능', 2, true, 2, 1, true, true, true, 20000, 1, 1),
      (418000, '어반스테이 더 남산', '말이 필요없다 일단 와라!!!', 4, false, 4, 2, true, true, true, 30000, 1, 4);
