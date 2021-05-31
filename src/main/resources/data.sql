-- room 숙소 --
insert into `room` (`max`, `name`, rating, latitude, longitude, bedroom_count, bed_count, bathroom_count, address,
                    detail_address, comment_count, original_price, sale_price, flexible_refund, immediate_booking)
values (3, "[강남,역삼] 강남 아파트에서 살아 보기", 4.82, 37.49784, 127.03029, 1, 1, 1,
        "서울특별시 강남구 역삼동", "824-7번지 4층", 62, 80000, 72000, 0, 1),
       (4, "[강남역 8분] 서초구 채광 좋은 집", 4.99, 37.49272, 127.02966, 1, 1, 1,
        "서울특별시 서초구 서초동", "광일프라자 11층", 33, 60000, 54000, 0, 1),
       (1, "[역삼역 도보2분] 1인 숙박 합리적인 가격", 4.09, 37.50144, 127.03469, 1, 1, 1,
        "서울특별시 강남구 역삼동", "역삼1동 644-12", 20, 40000, 36000, 0, 1),
       (2, "[올림픽공원 도보3분] 즐거운 송파나들이", 4.56, 37.514490, 127.116911, 1, 1, 1,
        "서울특별시 송파구 방이동", "176-9", 50, 80000, 75000, 1, 1),
       (4, "[길동 자연생태공원] 우리 아이와 신나는 자연 생태체험학습!", 4.78, 37.538357, 127.150266, 1, 2, 2,
        "서울특별시 강동구 길동", "169-9", 34, 76000, 72000, 0, 0),
       (2, "[서울숲, 뚝섬 도보3분] 핫플레이스 성수동의 인기 숙소", 4.95, 37.547607, 127.042759, 1, 1, 1,
        "서울특별시 성동구 성수동", "서울숲6길", 88, 85000, 82000, 0, 1),
       (2, "[시즌 특별 할인] JW메리어트 동대문 스퀘어 서울", 4.3, 37.570400, 127.008793, 1, 2, 1,
        "서울특별시 종로구 종로5.6가동", "청계천로 279", 132, 100000, 90000, 1, 1),
       (2, "[혜화역, 대학로 인근] 깔끔하고 극장 가까운", 4.2, 37.581978, 127.004799, 1, 1, 1,
        "서울특별시 종로구 동숭동", "50-35", 24, 78000, 75000, 1, 1),
       (4, "[한사랑산악회 인증 숙소] 북한산국립공원이 코앞에", 4.6, 37.617354, 127.000710, 2, 2, 2,
        "서울특별시 성북구 정릉4동", "819-1", 36, 130000, 117000, 0, 1),
       (2, "[북촌 게스트하우스] 한옥에서 정취있는 하룻밤", 4.9, 37.581258, 126.986643, 1, 1, 1,
        "서울특별시 종로구 계동", "72", 77, 90000, 85000, 0, 1),
       (4, "[남산공원] 서울 나들이 딱 좋은 신축 아파트", 4.87, 37.552826, 126.978917, 2, 2, 1,
        "서울특별시 용산구 후암동", "30-83", 68, 150000, 135000, 0, 0),
       (4, "[서울 부암동] 꿈꿔 왔던 부잣집 대저택에서 파뤼투나잇", 4.94, 37.595076, 126.968375, 2, 4, 3,
        "서울특별시 종로구 부암동", "33-1", 22, 300000, 270000, 0, 0),
       (2, "[홍대입구역 3분 거리] 맛집? 쇼핑? 홍대인데 말해뭐해", 4.35, 37.556184, 126.928252, 1, 1, 1,
        "서울특별시 마포구 서교동", "와우산로 35길", 76, 68000, 65000, 0, 0),
       (4, "[연남동 인기] 경의선 숲길이 한눈에 보이는 깔끔 아파트", 4.83, 37.562021, 126.921796, 2, 2, 2,
        "서울특별시 마포구 연남동", "515-23", 43, 200000, 180000, 0, 0),
       (3, "[여의나루역 도보5분] 한강 뷰 고급 아파트에서 오늘만은 내가 주인공", 4.99, 37.526196, 126.932600, 1, 1, 1,
        "서울특별시 영등포구 여의도동", "30번지 여의도목화아파트", 132, 180000, 175000, 0, 0),
       (2, "[요즘핫플] 문래동 한복판에서 힐링타임", 4.85, 37.518867, 126.888921, 1, 1, 1,
        "서울특별시 영등포구 문래동6가", "2-2", 43, 100000, 95000, 1, 1),
       (2, "[꽃길만 걸어요] 너만 모르는 숨은 꽃구경 명소", 4.76, 37.502817, 126.977248, 1, 1, 1,
        "서울특별시 동작구 동작동", "현충로 210", 38, 98000, 95000, 1, 1),
       (2, "[요즘핫플] 힙지로에서 가맥 한잔?", 4.52, 37.566304, 126.995937, 1, 1, 1,
        "서울특별시 중구 을지로동", "310-23", 23, 75000, 70000, 0, 0),
       (4, "살아 봤니? 반포자이", 4.89, 37.506997, 127.013549, 3, 3, 3,
        "서울특별시 서초구 잠원동", "반포대로 310-6 반포센트럴자이", 9, 500000, 480000, 0, 0),
       (4, "[코드스쿼드 도보1분] 최고의 코라밸(Coding & Life Balance)을 원한다면", 4.02, 37.490972, 127.033687, 0, 0, 0,
        "서울특별시 강남구 역삼동", "836-21", 57, 40000, 37000, 1, 1);
-- user 사용자 --
insert
into `user` (google_id)
values ("bibi");

-- booking 예약 --
insert into `booking` (user_id, room_id, check_in, check_out, number_of_people, total_price)
values (1, 1, "2021-05-20", "2021-05-21", 2, 200000),
       (1, 2, "2021-05-25", "2021-05-26", 2, 200000),
       (1, 3, "2021-06-01", "2021-06-03", 2, 200000),
       (1, 3, "2021-06-04", "2021-06-05", 2, 200000);

-- wish 위시리스트 --
insert into `wish` (room_id, user_id)
values (1, 1);

-- option 옵션 --
insert into `option` (room_id, kitchen, air_conditioner, wifi, free_parking_lot, hair_dryer)
values (1, 1, 1, 1, 1, 1),
       (2, 1, 1, 1, 1, 1),
       (3, 1, 1, 1, 1, 1),
       (4, 1, 1, 1, 1, 1),
       (5, 1, 1, 1, 1, 1),
       (6, 1, 1, 1, 1, 1),
       (7, 1, 1, 1, 1, 1),
       (8, 1, 1, 1, 1, 1),
       (9, 1, 1, 1, 1, 1),
       (10, 1, 1, 1, 1, 1),
       (11, 1, 1, 1, 1, 1),
       (12, 1, 1, 1, 1, 1),
       (13, 1, 1, 1, 1, 1),
       (14, 1, 1, 1, 1, 1),
       (15, 1, 1, 1, 1, 1),
       (16, 1, 1, 1, 1, 1),
       (17, 1, 1, 1, 1, 1),
       (18, 1, 1, 1, 1, 1),
       (19, 1, 1, 1, 1, 1),
       (20, 0, 1, 1, 0, 0);

-- thumbnail 썸네일 --
insert into `thumbnail` (room_id, thumbnail)
values (1, "https://a0.muscache.com/im/pictures/c45d08e5-f560-44f0-83fc-83290ccd1670.jpg?im_w=720"),
    /*강남역삼*/(1, "https://a0.muscache.com/im/pictures/e3258341-b4f3-4988-b958-bec903936a0b.jpg?im_w=720"),
    /*강남*/
       (2, "https://a0.muscache.com/im/pictures/eb1c2b7a-0c04-4fb1-96eb-0e0d4c846d2c.jpg?im_w=720"),
    /*역삼*/
       (3, "https://a0.muscache.com/im/pictures/98f9b3e3-11c2-4b9c-a543-f765b1e0f913.jpg?im_w=720"),
    /*올공*/
       (4, "https://cdn.pixabay.com/photo/2017/03/19/01/43/living-room-2155376_960_720.jpg"),
    /*길동*/
       (5,
        "https://images.unsplash.com/photo-1615758043787-3f877871903a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=333&q=80"),
    /*서울숲*/
       (6, "https://cdn.pixabay.com/photo/2016/11/18/17/20/living-room-1835923_960_720.jpg"),
    /*JW*/
       (7, "https://cf.bstatic.com/images/hotel/max1024x768/267/26774706.jpg"),
    /*혜화*/
       (8,
        "https://images.unsplash.com/photo-1493663284031-b7e3aefcae8e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"),
    /*한사랑*/
       (9,
        "https://images.unsplash.com/photo-1484154218962-a197022b5858?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1053&q=80"),
    /*북촌*/
       (10,
        "https://images.unsplash.com/photo-1591452249377-f12a034106de?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=889&q=80"),
    /*남산*/
       (11,
        "https://images.unsplash.com/photo-1493809842364-78817add7ffb?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"),
    /*부암*/
       (12,
        "https://images.unsplash.com/photo-1613977257592-4871e5fcd7c4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"),
    /*홍대*/
       (13,
        "https://images.unsplash.com/photo-1614649024145-7f847b1c803f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=667&q=80"),
    /*연남*/
       (14,
        "https://images.unsplash.com/photo-1521208189313-b4fce87b63a9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1049&q=80"),
    /*여의*/
       (15,
        "https://images.unsplash.com/photo-1565623833408-d77e39b88af6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=889&q=80"),
    /*문래*/
       (16,
        "https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=673&q=80"),
    /*꽃길*/
       (17,
        "https://images.unsplash.com/photo-1562569609-26bfa254fae0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80"),
    /*을지로*/
       (18,
        "https://images.unsplash.com/photo-1551339745-157fa1d72ad3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=868&q=80"),
    /*반포자이*/
       (19,
        "https://images.unsplash.com/photo-1542928658-22251e208ac1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=667&q=80"),
    /*코쿼*/
       (20,
        "https://images.unsplash.com/photo-1572124416305-f44f905bc583?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80");


-- badge 뱃지 --
insert into `badge` (room_id, `type`)
values (1, "슈퍼호스트");
