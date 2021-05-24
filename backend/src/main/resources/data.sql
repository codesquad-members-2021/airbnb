use
airbnb;

insert into city (name, image_url)
values ('서울', 'https://a0.muscache.com/im/pictures/71e23854-a3c7-491c-b715-6e86233a293f.jpg?im_q=medq&im_w=240');
insert into city (name, image_url)
values ('경기', 'https://a0.muscache.com/im/pictures/71e23854-a3c7-491c-b715-6e86233a293f.jpg?im_q=medq&im_w=240');
insert into city (name, image_url)
values ('제주', 'https://a0.muscache.com/im/pictures/71e23854-a3c7-491c-b715-6e86233a293f.jpg?im_q=medq&im_w=240');
insert into host (name, profile_image_url)
values ('Mr.kim',
        'https://a0.muscache.com/im/pictures/user/7822f895-df8a-4b0f-9035-0d3b3afbdc3d.jpg?aki_policy=profile_x_medium');

insert into additional_cost (id, week_sale_percent, cleaning_fee, service_fee_percent, lodgment_fee_percent)
values (1, 4, 20000, 4, 4);
insert into location(id, latitude, longitude, city_name)
values (1, 37.556, 126.931, '서울');
insert into review (id, star, review)
values (1, 5, 31);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (1, '#2 홍대입구역 도보 5분 조용하고 깔끔한 집', '서대문구의 집 전체', 95000, '집 전체', 1, 2, 1, 1, 1, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48235229/original/4bf6a5cc-dc35-49fa-a625-951f8a76fec5.jpeg?im_w=720',
        1);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48235229/original/4a9c2baa-44fc-4a4d-a067-854f167bfcfb.jpeg?im_w=720',
        1);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48235229/original/37764a52-e072-41f4-8f19-c3f89e242bef.jpeg?im_w=720',
        1);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48235229/original/5ce4b1ac-92b3-46bc-92c9-3a2e9f85aa0b.jpeg?im_w=720',
        1);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48235229/original/b1102385-8db1-4ef6-97e9-e34027388355.jpeg?im_w=720',
        1);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48235229/original/e88fbe17-6d58-410d-8799-83ca5022a543.jpeg?im_w=720',
        1);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48235229/original/9eb245eb-ea25-40da-b045-4cecde615617.jpeg?im_w=720',
        1);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48235229/original/217258d6-fb04-439a-840e-7223ad6b0563.jpeg?im_w=720',
        1);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48235229/original/5872cd69-2885-439e-babe-e2e0dc7b2f9f.jpeg?im_w=720',
        1);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48235229/original/5190dd47-c437-4e2c-90fa-b040c5f5b9c1.jpeg?im_w=720',
        1);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48235229/original/89596b22-de26-4ea8-9470-362329e70d30.jpeg?im_w=720',
        1);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48110410/original/e7b47cfc-d049-49b1-9b1e-b8d6b87c3527.jpeg?im_w=720',
        1);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48110410/original/b7d92379-d4ce-4850-8cb2-394d07852685.jpeg?im_w=720',
        1);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48235229/original/0e3f3867-54c9-405f-9454-e27009572b75.jpeg?im_w=720',
        1);
insert into location(id, latitude, longitude, city_name)
values (2, 37.569, 126.991, '서울');
insert into review (id, star, review)
values (2, 4.5, 24);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (2, '허브c', '종로구의 개인실', 90000, '개인실', 1, 1, 1, 2, 2, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/e821c9a6-90a5-4988-a6dc-da39cd4c280b.jpg?im_w=720', 2);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/95082310-9596-49f6-b91f-eb850836c73c.jpg?im_w=720', 2);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b796a9b1-8f20-4b75-9821-ca483fab0ea8.jpg?im_w=720', 2);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cd03c105-c0fb-4438-99a3-313f87964bca.jpg?im_w=720', 2);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6d23ea05-3dba-4ff8-aa26-2006c3ab11dd.jpg?im_w=720', 2);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/353bbe34-b1b1-40a7-b815-cad1b8435d31.jpg?im_w=720', 2);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/52e29756-8d9a-4f83-8b8f-222e8a950aeb.jpg?im_w=720', 2);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6727dba6-427b-45b9-9ff4-6a00a932a7a8.jpg?im_w=720', 2);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8d13c891-728a-4930-bbe6-641e133eb2da.jpg?im_w=720', 2);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/06ce5e27-3cc4-43d9-b43b-07d7e0947af0.jpg?im_w=720', 2);
insert into location(id, latitude, longitude, city_name)
values (3, 37.558, 126.984, '서울');
insert into review (id, star, review)
values (3, 5, 8);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (3, '2# 6 Bed Female Dorm[Myeong-dong, 明洞]', 'Myeong-dong, Jung-gu의 호텔 객실', 100000, '호텔 객실', 1, 1, 5, 3, 3, 1,
        1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/c6a7960d-1e5c-4772-b8a8-72f72658d905.jpg?im_w=720', 3);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7ccb3d0e-7e80-44de-bcc1-2ea4601f4a26.jpg?im_w=720', 3);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/76e8ff1d-e1d6-4638-972b-39c7854a84b8.jpg?im_w=720', 3);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bf15885d-5d81-439e-851a-13d0b0eab6a8.jpg?im_w=720', 3);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fd2a6521-d517-4986-8630-ead4dd1802fa.jpg?im_w=720', 3);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/98bb5604-b2c3-4548-9cd8-8dca4c085ede.jpg?im_w=720', 3);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b07927da-38ee-4aee-ac72-339cf2eca37f.jpg?im_w=720', 3);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/821e11e2-9454-4088-8c25-70dfe88e0534.jpg?im_w=720', 3);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ff7675bb-b8e2-4914-a25a-1c9633927d59.jpg?im_w=720', 3);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3d18076e-ea91-46b9-ac92-54628ca90c3c.jpg?im_w=720', 3);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a8837caa-56c8-46c6-a800-73e8638d58c8.jpg?im_w=720', 3);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0fce81a7-cbea-4d88-a270-84f3ddc5d064.jpg?im_w=720', 3);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0bd0f08b-90c0-47e7-aa77-144032dffd79.jpg?im_w=720', 3);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/691ff309-70c3-42ff-967d-f885fdaf254b.jpg?im_w=720', 3);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7c81b379-0366-4511-88e3-65bfcb787dac.jpg?im_w=720', 3);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/daa22e27-d2e3-4f32-a1c2-e3f35bfe8654.jpg?im_w=720', 3);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4d6c8895-fa58-45e0-a968-3285307978c8.jpg?im_w=720', 3);
insert into location(id, latitude, longitude, city_name)
values (4, 37.574, 127.02, '서울');
insert into review (id, star, review)
values (4, 4.5, 217);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (4, 'dmyk_"Hachure"', '종로구의 게스트용 별채 전체', 100000, '집 전체', 1, 2, 1, 4, 4, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/3428dcfb-ca43-45d5-aeec-5c0f11f7c39b.jpg?im_w=720', 4);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fbad6a88-fe0e-410d-a827-0ea865d9a186.jpg?im_w=720', 4);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6f014ffd-c1e8-4626-b98d-762b7148119f.jpg?im_w=720', 4);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9580d656-346c-4184-9b0d-1a2b5833f1a2.jpg?im_w=720', 4);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/da1e3bb9-0f89-48a8-85e8-10c854d96284.jpg?im_w=720', 4);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e0122193-b343-47d8-9191-28f7bc1e7c16.jpg?im_w=720', 4);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/db179a3e-0836-4283-93b6-1258ef7db2c1.jpg?im_w=720', 4);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5b79fb8c-77b3-4d40-9dc0-ce37a9c2a335.jpg?im_w=720', 4);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e84d91a5-8b2e-4e08-b6ac-52f3edd947ab.jpg?im_w=720', 4);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d7db13b0-b19e-4932-b2fc-0ea7ae5828cd.jpg?im_w=720', 4);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1d2afd83-464d-4c30-9734-9d993fd41068.jpg?im_w=720', 4);
insert into location(id, latitude, longitude, city_name)
values (5, 37.576, 127.022, '서울');
insert into review (id, star, review)
values (5, 4.5, 262);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (5, 'dmyk_"Carré"', '종로구의 게스트 스위트 전체', 100000, '집 전체', 1, 2, 1, 5, 5, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/35ecadd2-da5d-4db1-92bd-867ec152921d.jpg?im_w=720', 5);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5e1185eb-f9fc-43fe-a398-0ed7c49bfdbd.jpg?im_w=720', 5);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3ac4c49b-f4b0-4c37-b99f-420ff88f0292.jpg?im_w=720', 5);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a530684f-96f3-4116-a3c4-cd3bf7806d1f.jpg?im_w=720', 5);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/332e7ca4-9318-4511-9b44-b4b54ef1250c.jpg?im_w=720', 5);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/51fe9399-c4a2-4f2c-a5b6-c820b0535ebe.jpg?im_w=720', 5);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d1f6561f-ed8c-4b50-a0d0-1650e7a2a44d.jpg?im_w=720', 5);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/015724ab-56d9-4336-a7dd-34920d3f89a7.jpg?im_w=720', 5);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/47864437-e142-4d74-aba9-42770d949a80.jpg?im_w=720', 5);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d7f59f60-4752-4c43-9225-793095ba8638.jpg?im_w=720', 5);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/858f355f-e9e9-4467-b193-8cea445381eb.jpg?im_w=720', 5);
insert into location(id, latitude, longitude, city_name)
values (6, 37.558, 126.935, '서울');
insert into review (id, star, review)
values (6, 5, 52);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (6, '#ONLY 자가격리 & 장기숙박 특별할인 #도시힐링감성 #숙소설명 꼭 확인해주세요', 'Sinchon-dong, Seodaemun-gu의 아파트 전체', 80000, '집 전체', 1, 4,
        1, 6, 6, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44159716/original/04dc2ade-cd11-4599-a7fb-a6f4b6176f4e.jpeg?im_w=720',
        6);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44159716/original/c6c1a442-b449-495a-8ee9-f1779f36b5b4.jpeg?im_w=720',
        6);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44159716/original/66bd535a-ba05-43e7-adbe-6953bbc13da5.jpeg?im_w=720',
        6);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44159716/original/d1857908-90c8-48fd-9e68-a743187664ed.jpeg?im_w=720',
        6);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/39b76268-042e-4a89-aa3b-89abe9865c58.jpg?im_w=720', 6);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44159716/original/53dcf85e-6295-4f84-a246-cc6fdb142d2f.jpeg?im_w=720',
        6);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6652d911-214a-4bfc-b097-0192f4d78579.jpg?im_w=720', 6);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ca8abc0d-9e94-4f15-8548-012c8ec969f2.jpg?im_w=720', 6);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44159716/original/df233302-04bd-41a1-93c4-62b39aa73fa8.jpeg?im_w=720',
        6);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f61432bd-d31d-481d-9452-08c276b3f201.jpg?im_w=720', 6);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44159716/original/bc21e608-4244-40ab-8cc9-3781b36e0971.jpeg?im_w=720',
        6);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4ed0d2e5-b305-4483-a237-a6473985187d.jpg?im_w=720', 6);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44159716/original/c19548f2-1658-442e-a67f-be42fd89bbd6.jpeg?im_w=720',
        6);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f474676e-b04c-4173-964d-80179db71c88.jpg?im_w=720', 6);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/79219262-c3f4-4140-bca8-5712cea4bf5b.jpg?im_w=720', 6);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ef80325d-39b5-4770-9acc-6b52905d6ee9.jpg?im_w=720', 6);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/144f2b64-feb0-44b2-852e-1dab468d28c7.jpg?im_w=720', 6);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ebaaa9e9-a8a4-4bca-9f27-e234d3153b03.jpg?im_w=720', 6);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2f300753-ee47-418f-982d-acf65f518b2e.jpg?im_w=720', 6);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c48191ab-fd5e-4d37-9019-d9a85922097d.jpg?im_w=720', 6);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f7448e23-7009-4c76-a118-efdda9ee2e02.jpg?im_w=720', 6);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44159716/original/63e6f7cf-09d8-41af-b691-0e59fc210cd1.jpeg?im_w=720',
        6);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44159716/original/4cb9b04b-da66-40bc-a81c-2e9ff973df6c.jpeg?im_w=720',
        6);
insert into location(id, latitude, longitude, city_name)
values (7, 37.562, 126.984, '서울');
insert into review (id, star, review)
values (7, 4.5, 39);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (7, '♥명동역3분♥ 아늑하고 편한 모임+  감성유닛 T5  in 명동 (방역완료, 살균ing)', 'Myeong-dong, Jung-gu의 콘도(아파트) 전체', 90000, '집 전체', 2, 4,
        1, 7, 7, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/93921868-7f14-4121-b465-4e887bf61693.jpeg?im_w=720',
        7);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/b6f06d00-ab5c-4203-a373-f00ad0fc2dba.jpeg?im_w=720',
        7);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/d89c435b-a9bc-429f-b7ad-28f62dfa84ec.jpeg?im_w=720',
        7);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/8c5099f2-cebd-4730-af4b-9a3dbc8471e5.jpeg?im_w=720',
        7);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/8ff1ad6b-2629-4c1d-a797-3a97fb6de8ee.jpeg?im_w=720',
        7);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/fa1357f2-70f6-4cb1-b37a-ad9c4d46cd7a.jpeg?im_w=720',
        7);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/09856f22-09a1-441e-a604-36c44937c080.jpeg?im_w=720',
        7);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/5bae7481-f911-43ec-885c-0a59be84e3c0.jpeg?im_w=720',
        7);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/c6007b9f-744e-422c-bae6-55a0d8e2647c.jpeg?im_w=720',
        7);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/8ee92a8c-0f84-4310-a7fb-744bff05ed1b.jpeg?im_w=720',
        7);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/b1939f21-93a5-40ce-82b9-c9b1b3d1f059.jpeg?im_w=720',
        7);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/3645a59d-4693-4f71-aa00-1ca523fb81b2.jpeg?im_w=720',
        7);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/e3452395-3ff1-4699-8daf-f1b1e59d8392.jpeg?im_w=720',
        7);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/c08a0135-c823-4098-9c4a-8b59dc5e4178.jpeg?im_w=720',
        7);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/609d27ff-c23a-4ab1-9876-e50fc691b6ce.jpeg?im_w=720',
        7);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/2785cc18-6557-4ec9-a18a-1a4d63f115a5.jpeg?im_w=720',
        7);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/d4460297-b992-4fda-bf42-01bc80ae9fba.jpeg?im_w=720',
        7);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/1f6ada5d-56f0-45d3-a17a-b33983f4e555.jpeg?im_w=720',
        7);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/7c9978e9-8811-4cf1-9013-fe655538fe14.jpeg?im_w=720',
        7);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/95e131ac-040b-4937-a637-0f9d1f1034ff.jpeg?im_w=720',
        7);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/43213c42-362d-402a-ba20-1ce59f16f35b.jpeg?im_w=720',
        7);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/2847bfc3-1bdc-4cf4-8ef2-905b5d5127a0.jpeg?im_w=720',
        7);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/4c94ee74-184f-4f90-8d73-62d3640fe9fd.jpeg?im_w=720',
        7);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/0c9c4d75-21a9-48aa-98d0-b847314a7aa6.jpeg?im_w=720',
        7);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/aa64509f-9dac-438f-8303-709d74bbaf8a.jpeg?im_w=720',
        7);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/f208440f-f1a6-4c2a-860c-69b15ea192fe.jpeg?im_w=720',
        7);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/aa08aa96-9c78-482a-8d2d-82ca36079b8e.jpeg?im_w=720',
        7);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/2dd6eafa-577a-4c50-9c90-c8339866441d.jpeg?im_w=720',
        7);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/8fed6b8a-6f7d-4125-8e80-aa87ea49f6e3.jpeg?im_w=720',
        7);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/a5195961-a916-431c-b567-a8c8d645b6b2.jpeg?im_w=720',
        7);
insert into location(id, latitude, longitude, city_name)
values (8, 37.554, 126.924, '서울');
insert into review (id, star, review)
values (8, 5, 6);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (8, '[OPEN]#루프탑캠핑#홍대입구역5분#Rooftop camping & BBQ party', 'Changjeon-dong, Mapo-gu의 집 전체', 100000, '집 전체', 0, 4, 1,
        8, 8, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49034435/original/3541ab34-dd5c-4c0b-995a-f17e454cba0e.jpeg?im_w=720',
        8);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49034435/original/cd3b41c9-930b-4c9e-a2ee-3c7f4110a50f.jpeg?im_w=720',
        8);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49034435/original/42f30b8e-83fd-4d5a-8bac-3e82e3aacbfe.jpeg?im_w=720',
        8);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5078d72d-3862-4335-9764-62ebfc16aa9b.jpg?im_w=720', 8);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49034435/original/d9fe4177-5461-494e-98ab-3e6468dd9779.jpeg?im_w=720',
        8);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49034435/original/f16c6e9e-b4c7-4820-96d7-29e096f5c1a8.jpeg?im_w=720',
        8);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49034435/original/ae4e1123-7952-4c24-99fd-9865a0df484c.jpeg?im_w=720',
        8);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49034435/original/105890ee-4eac-4a00-8c7c-6655c36c2b89.jpeg?im_w=720',
        8);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49034435/original/db3a96a4-28ea-4a0d-aabe-5512dc3ac697.jpeg?im_w=720',
        8);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49034435/original/8d6f8785-956d-424d-9713-a60470a4248a.jpeg?im_w=720',
        8);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49034435/original/f8150951-2f27-4ad5-b250-0c9b22ae568a.jpeg?im_w=720',
        8);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6f3370d5-c182-4f47-9597-a39b750a22f7.jpg?im_w=720', 8);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49034435/original/f95044cf-9c02-429a-80ee-ce2167be62aa.jpeg?im_w=720',
        8);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49034435/original/21d0b656-2b9f-4f4d-8a29-3f4fbea39084.jpeg?im_w=720',
        8);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0c415fc0-f600-4a21-b658-18ee9f7e6d91.jpg?im_w=720', 8);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3c8029ec-0abb-4552-bc1e-d81b89921d79.jpg?im_w=720', 8);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/03aa6fb9-6fcc-48a9-b6fd-6489209c6e1d.jpg?im_w=720', 8);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a22d5894-96a8-4fb1-8bf7-b233c15b65b8.jpg?im_w=720', 8);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6a80e606-dd4f-4e48-81bc-bbb342dc4e14.jpg?im_w=720', 8);
insert into location(id, latitude, longitude, city_name)
values (9, 37.557, 126.924, '서울');
insert into review (id, star, review)
values (9, 5, 12);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (9, '7F.Anna house at Hongdae station', 'Donggyo-dong, Mapo-gu의 아파트 전체', 93000, '집 전체', 3, 6, 1, 9, 9, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/9a418fb1-9274-4844-b12d-0aeeb210d783.jpg?im_w=720', 9);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dd499ca0-4b85-43e7-bbd8-88215fdff2c0.jpg?im_w=720', 9);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f0618ba0-8fbe-47fb-b536-dfe1c891e8ea.jpg?im_w=720', 9);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/99dfe20e-d39c-4c67-8f21-9a278605c5bf.jpg?im_w=720', 9);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/708edfcd-16aa-4e34-8633-5d30f94c9eea.jpg?im_w=720', 9);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/86d66e1c-c95a-4895-b09e-fb8c164096ea.jpg?im_w=720', 9);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4f5b774e-e805-4ebd-a059-c985d629f976.jpg?im_w=720', 9);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/088b781e-7608-4883-829b-90a9667a15bc.jpg?im_w=720', 9);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/76d2f940-a2eb-4bf4-ab7a-5468c564bde5.jpg?im_w=720', 9);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4816cade-c9fc-45d5-8aac-1be52ac49eb8.jpg?im_w=720', 9);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/52d752f0-e8fc-43fb-99c8-78dadf6438c0.jpg?im_w=720', 9);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f0b43713-9731-40fa-b6a3-75435f13a0fb.jpg?im_w=720', 9);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/57e0e8b9-1188-4a3e-8671-db48057b0c18.jpg?im_w=720', 9);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/979f6197-3b10-48f4-8d7b-fdab627b2aa1.jpg?im_w=720', 9);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9c3d4912-1e41-4260-8efa-902a064ddf41.jpg?im_w=720', 9);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0c06bd8f-9d8f-482b-9fce-62ac57c0f356.jpg?im_w=720', 9);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/37ab5264-a638-48da-9f7a-883de6993dfe.jpg?im_w=720', 9);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/24a3415e-13d2-4c09-8afc-3d4dbef455f3.jpg?im_w=720', 9);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c6a146a7-2062-421a-9fad-fa14f7eec04a.jpg?im_w=720', 9);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/718bf480-4f7e-48c4-a3f4-05654e243666.jpg?im_w=720', 9);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/53d95525-bb5c-4172-8b7b-0fbdc1f3741a.jpg?im_w=720', 9);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/74721de3-255c-4eec-9526-61e244331d5c.jpg?im_w=720', 9);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e5324a10-823d-4ef4-bc8b-72b663a56bd6.jpg?im_w=720', 9);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0521e6f9-41eb-443d-ad1f-154a94355fc4.jpg?im_w=720', 9);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5273831c-2c38-4780-8a75-25ef2a74cd6d.jpg?im_w=720', 9);
insert into location(id, latitude, longitude, city_name)
values (10, 37.484, 127.122, '서울');
insert into review (id, star, review)
values (10, 0, 2);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (10, '하우스" 李相"', 'Songpa-gu의 아파트 전체', 79000, '집 전체', 1, 4, 1, 10, 10, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/756bb2f7-2342-4d3b-9694-492b71635bc7.jpg?im_w=720', 10);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/71db6334-dfda-4be3-9a53-9221faab3672.jpg?im_w=720', 10);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a144ef2a-b416-4f8b-bfb8-d74ce11a3539.jpg?im_w=720', 10);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/32bd0f40-6b1b-4860-9f57-56bd04c33c14.jpg?im_w=720', 10);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8a119488-8143-47ae-a4a5-947a500e49e6.jpg?im_w=720', 10);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ee22e3f7-be28-41f5-b92b-a98d39d404f9.jpg?im_w=720', 10);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a8383dfd-3903-432d-8b2b-67340ff2b81f.jpg?im_w=720', 10);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b3317441-3434-4b13-9adc-9e4d58154bcf.jpg?im_w=720', 10);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d4562f30-d64b-40fc-ba2c-da36db60a65a.jpg?im_w=720', 10);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3e6c29fb-9425-454d-a333-19c83b660d38.jpg?im_w=720', 10);
insert into location(id, latitude, longitude, city_name)
values (11, 37.579, 127.023, '서울');
insert into review (id, star, review)
values (11, 4.5, 3);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (11, 'HOSTEL SEOUL - Double room with a bathroom', 'Sungin 2(i)-dong, Jongno-gu의 개인실', 95000, '개인실', 0, 2, 1, 11,
        11, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49131805/original/cc1399a4-e57a-45fe-a889-f46fb51e9089.jpeg?im_w=720',
        11);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49131805/original/f40b5394-42b9-4e71-ab39-7593dee4d5aa.jpeg?im_w=720',
        11);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8012bdbf-e281-4fc8-b645-ef663143135d.jpg?im_w=720', 11);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/46bf7e9a-23dc-4174-864f-8967b7859175.jpg?im_w=720', 11);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/daf17c3d-3520-4103-8135-38fc6e6865aa.jpg?im_w=720', 11);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9f52c84f-e648-4208-916e-194e64ec48fa.jpg?im_w=720', 11);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ed01fcd7-a882-41e7-a5b2-662ba2a36938.jpg?im_w=720', 11);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a0528d71-018f-45c1-bee9-d38b5dcf29a6.jpg?im_w=720', 11);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c5264df5-f483-4021-96dd-ef85f184a7c2.jpg?im_w=720', 11);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/45d9e8ca-1d15-4dda-b4a7-02696cbce714.jpg?im_w=720', 11);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49131805/original/cd93726e-f0f6-4bf9-9095-02398c5c2d4b.jpeg?im_w=720',
        11);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49131805/original/8e435b9c-0119-4242-8619-468efcde62b8.jpeg?im_w=720',
        11);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49131805/original/9371e6b6-c713-4195-943f-55219160e19d.jpeg?im_w=720',
        11);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49131805/original/e4401327-34c5-4e9d-9dcc-aaf3629d1045.jpeg?im_w=720',
        11);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49131805/original/13505471-f261-4ded-b590-7b52ad414bca.jpeg?im_w=720',
        11);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49131805/original/3b8593cd-a293-4bf1-adf0-2ba72359727a.jpeg?im_w=720',
        11);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49131805/original/01535e0a-3c2b-4519-9beb-3a145bf316d7.jpeg?im_w=720',
        11);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49131805/original/7ca6c8ef-2e87-4fba-82a2-bae7b2a14d0a.jpeg?im_w=720',
        11);
insert into location(id, latitude, longitude, city_name)
values (12, 37.496, 127.03, '서울');
insert into review (id, star, review)
values (12, 4.5, 61);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (12, 'S4 Clean & cozy room right next to Gangnam Station', '강남구의 아파트 전체', 95000, '집 전체', 1, 3, 1, 12, 12, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/d9fb7454-fd02-4faf-8712-aa1f84f0f60f.jpg?im_w=720', 12);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5cdb79f3-be4a-424a-92f6-a8923063e7a2.jpg?im_w=720', 12);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/40ddf4a9-2fc5-41d4-9235-2dfc43b9e146.jpg?im_w=720', 12);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f7efcaad-3944-4561-99f7-03bd6b36a5e0.jpg?im_w=720', 12);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ed258494-52f1-4744-8553-8abdd8d96f73.jpg?im_w=720', 12);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/021115ef-7cc1-4ca5-b557-97b30ff42519.jpg?im_w=720', 12);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4f22bae7-da01-4796-b778-6649e249d0f9.jpg?im_w=720', 12);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bcac6ab9-0c0d-4010-b16c-1e61b52c67dd.jpg?im_w=720', 12);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7eb0519c-95fd-40e6-84be-ed6ddd391a33.jpg?im_w=720', 12);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e2dbcf1e-a548-4c96-b299-0162a0475cc9.jpg?im_w=720', 12);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/80dce4dc-e79d-4dbb-b382-253ee3ff8e1d.jpg?im_w=720', 12);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6017e38f-249f-4880-b826-0d1cfdb8d5af.jpg?im_w=720', 12);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7c30fd3b-81fa-4c16-9dc5-8baa001af586.jpg?im_w=720', 12);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8f082f2e-97c3-402e-9555-2472988e036d.jpg?im_w=720', 12);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9b00d4ad-e5aa-4311-b1ec-82acf9771646.jpg?im_w=720', 12);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/962362c4-ff04-4fbc-a9fa-d66d549a10de.jpg?im_w=720', 12);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3c053afa-403e-40bd-a50d-2e784ae45f88.jpg?im_w=720', 12);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/47aae3b4-3064-4c48-a6c0-20c61a673ed0.jpg?im_w=720', 12);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9fe481d5-8266-4c0e-8351-8213d841b99b.jpg?im_w=720', 12);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4ed29d28-fc13-471d-bf5b-83433e3d2892.jpg?im_w=720', 12);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f91af3ce-6f4b-46ce-92c8-e3e90a7a588c.jpg?im_w=720', 12);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/56c11ff0-ce09-45c4-a5f0-0efbead2eb1a.jpg?im_w=720', 12);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1bab0768-15ea-4294-8fa5-21c9f63159eb.jpg?im_w=720', 12);
insert into location(id, latitude, longitude, city_name)
values (13, 37.512, 127.026, '서울');
insert into review (id, star, review)
values (13, 0, 0);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (13, 'sunny house', 'Nonhyeon 1(il)-dong, Gangnam-gu의 집 전체', 100000, '집 전체', 0, 2, 1, 13, 13, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/f3e2d9f3-5bec-4794-84dc-70162526326d.jpg?im_w=720', 13);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/00d9fda0-e742-4218-8f17-0ac3edc18b3d.jpg?im_w=720', 13);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/248d3260-c368-45ed-9dd3-a3b308a14080.jpg?im_w=720', 13);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/070ce7b6-397c-4afb-b215-c12c66da0816.jpg?im_w=720', 13);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f5dc2ecd-2cde-4c18-be25-261dc6c114d9.jpg?im_w=720', 13);
insert into location(id, latitude, longitude, city_name)
values (14, 37.56, 127.002, '서울');
insert into review (id, star, review)
values (14, 4.5, 3);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (14, 'Cozy share house 1 bed room @ Dongdaemun', 'Jangchungdong 2(i)-ga, Jung-gu의 개인실', 88000, '개인실', 1, 1, 1,
        14, 14, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/a5a92836-f224-49e1-9908-aa6c7c735291.jpg?im_w=720', 14);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b8ca37f2-1f6d-472d-8b9f-7b95ede1ce57.jpg?im_w=720', 14);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ea49c183-d9f6-489f-8e0f-0eba43302de7.jpg?im_w=720', 14);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7e239301-79e6-4529-8c9d-388c9bc80fbc.jpg?im_w=720', 14);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/388fc2dc-4190-4944-b989-5d20bf38c756.jpg?im_w=720', 14);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ed3e46d0-435c-4f64-b49a-4158bf0b45bb.jpg?im_w=720', 14);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0a305044-89bc-4cd0-8f73-40eaaa87afc7.jpg?im_w=720', 14);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d189d453-b832-43d2-9791-35245414166a.jpg?im_w=720', 14);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/34075ba8-5be0-4d33-80d5-c56786d71525.jpg?im_w=720', 14);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6f8832d9-a23d-435b-ad35-0f079689597b.jpg?im_w=720', 14);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/32032801-a7f3-4479-a5b5-5b2034a89a14.jpg?im_w=720', 14);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2382a329-590a-4303-8691-81d932282012.jpg?im_w=720', 14);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ab0ab815-7dd6-4b37-ab1b-a761be753122.jpg?im_w=720', 14);
insert into location(id, latitude, longitude, city_name)
values (15, 37.547, 126.924, '서울');
insert into review (id, star, review)
values (15, 5, 5);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (15, '☆Netflix☆Hongdae_Sangsu sta.20sec 갬성돋는 나만의 공간♡', 'Sangsu-dong, Mapo-gu의 콘도(아파트) 전체', 100000, '집 전체', 1, 2,
        1, 15, 15, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/f2f4d084-a4f3-4048-b4c9-5d464cee8a7c.jpg?im_w=720', 15);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a3838477-d54f-40c3-9e59-5da6153bb757.jpg?im_w=720', 15);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d0ac0b42-da60-4eb9-9a6f-aaa9f54d7afc.jpg?im_w=720', 15);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8338f0a3-d966-496b-a927-85507e9ac8b3.jpg?im_w=720', 15);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/94414f30-586a-41e7-bf03-1d31c18a6540.jpg?im_w=720', 15);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8ca80227-0fb1-4f7f-a3c7-51f1eae67351.jpg?im_w=720', 15);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e580c191-df46-41a7-9966-d19148691f51.jpg?im_w=720', 15);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ccfdfaca-890c-4aae-a4c5-f74c9b10f065.jpg?im_w=720', 15);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/79b67869-7959-4e4b-97ba-19409d0805f8.jpg?im_w=720', 15);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4ae2cc5a-62c1-47eb-8d93-ee526e159e77.jpg?im_w=720', 15);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d5629509-0ea0-4058-b4a1-ca23cc8ade26.jpg?im_w=720', 15);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1cf471f3-009e-4a17-aa5a-50c8c2af7ada.jpg?im_w=720', 15);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c1529a27-cd8d-4952-a315-ffea3991313b.jpg?im_w=720', 15);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/df29fdbd-a1de-4376-91f3-9131cda3483a.jpg?im_w=720', 15);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b2024cb4-eee7-4494-8266-ee497bd9140f.jpg?im_w=720', 15);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3618120f-7010-4114-9dc2-516cde79e0f5.jpg?im_w=720', 15);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c11b2630-dea3-45bc-93c1-22162e3db6d4.jpg?im_w=720', 15);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b3edf350-4018-4e0c-b26b-04721001c2b1.jpg?im_w=720', 15);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/15ce84e5-a9ee-4e2d-aef4-70de9b688ed2.jpg?im_w=720', 15);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4dec2590-39cb-4032-ab85-0b48e799e7fc.jpg?im_w=720', 15);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7177064c-7cd9-4c85-b28a-35076ee69c77.jpg?im_w=720', 15);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6adf7ed2-b9cc-42de-bf51-61e08d06d2f0.jpg?im_w=720', 15);
insert into location(id, latitude, longitude, city_name)
values (16, 37.557, 126.917, '서울');
insert into review (id, star, review)
values (16, 5, 39);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (16, '홍대의 당신의 아름다운 장기 렌탈집! (+ wifi에그)', '마포구의 아파트 전체', 100000, '집 전체', 2, 3, 1, 16, 16, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/ccf7ecef-2801-4b8e-9a57-bf4b0d1dceb5.jpg?im_w=720', 16);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7ec18bca-54b8-4748-98cb-c527c8c61514.jpg?im_w=720', 16);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d9a6e3d2-41e1-4128-a820-a46f31d5b13d.jpg?im_w=720', 16);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/754f6294-28f3-46c6-b070-7a65aeac00f3.jpg?im_w=720', 16);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fedbaa09-864a-401a-89dc-ff3e9ea1f8b4.jpg?im_w=720', 16);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0d242fc1-3f44-47ba-a35c-961f3a9f6c8b.jpg?im_w=720', 16);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/81861874/f6055795_original.jpg?im_w=720', 16);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/58ac6632-4fc2-4ef5-9d30-146954a58dac.jpg?im_w=720', 16);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e8885055-1728-43d5-9ae9-1fa09d3267f7.jpg?im_w=720', 16);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d6758e59-cd01-4261-bc7b-f737a4a1372f.jpg?im_w=720', 16);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cefaffba-4d3c-4b2a-b63f-7f7a959865c9.jpg?im_w=720', 16);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/29e1a8f0-2c99-418f-9c3e-facb1ca7aeda.jpg?im_w=720', 16);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a348b823-ac14-4550-b769-5f821e1ec3d0.jpg?im_w=720', 16);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0d0afb93-14f7-46bd-9a8a-21233ccb00d0.jpg?im_w=720', 16);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7a23d72e-04bc-4dfa-a942-98c9b270f651.jpg?im_w=720', 16);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7cfadaca-5a32-4fdf-b081-2c21644be0c2.jpg?im_w=720', 16);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ef319400-a283-42b2-969d-cb0d55fe93d7.jpg?im_w=720', 16);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5bcf8709-90f6-48ae-8ca2-67e1ab04afe8.jpg?im_w=720', 16);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/df0f9244-6f7d-4295-8ec7-0cd068d98b83.jpg?im_w=720', 16);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/82851701/9fa2d512_original.jpg?im_w=720', 16);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/83795705/88f3711d_original.jpg?im_w=720', 16);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/83632999/9b6f7025_original.jpg?im_w=720', 16);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b1cb8b0f-bb13-4257-b95d-0e50c15bea37.jpg?im_w=720', 16);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/83632839/7406e8b5_original.jpg?im_w=720', 16);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/81861993/ded807ce_original.jpg?im_w=720', 16);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/81aacbab-ac77-4299-9212-637ac47dab0f.jpg?im_w=720', 16);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/83632873/98df24e2_original.jpg?im_w=720', 16);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/81861911/8c62ed60_original.jpg?im_w=720', 16);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/82851738/5b628405_original.jpg?im_w=720', 16);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/82851435/d9112d65_original.jpg?im_w=720', 16);
insert into location(id, latitude, longitude, city_name)
values (17, 37.578, 126.992, '서울');
insert into review (id, star, review)
values (17, 5, 22);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (17, '익선동의 핫플❤️ 감성적인 곳에서 추억 쌓으시기를 바라며^^ 넷플릭스 가능!!', 'Waryong-dong, Jongno-gu의 부티크 호텔의 객실', 100000, '개인실', 1, 2,
        1, 17, 17, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/99e509ad-87ca-4613-9270-a958f4a05e5e.jpg?im_w=720', 17);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/604eb017-5620-4b59-a040-0327fa8006ff.jpg?im_w=720', 17);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f0345a79-1369-4002-ac1d-9b16b977dbfc.jpg?im_w=720', 17);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f6c0e74a-9953-4d7d-9650-99dfe8fb718c.jpg?im_w=720', 17);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/07a31447-31bb-4f3c-88bd-6dd5f498b5d4.jpg?im_w=720', 17);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a4c27be6-a845-4b78-8801-ed131efe9526.jpg?im_w=720', 17);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/012fed7f-1afd-4636-a3c8-daed4b2bb77a.jpg?im_w=720', 17);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e69b470c-7aa5-4953-9a30-d9f8e80e6067.jpg?im_w=720', 17);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1b611825-1fd5-471f-9a3f-d7ccbeeae5a2.jpg?im_w=720', 17);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fe079794-3817-4532-a6f8-e2181917658a.jpg?im_w=720', 17);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/75d982b8-4f39-4827-b306-48e2273e4071.jpg?im_w=720', 17);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/90ba5fa1-48dc-44be-9aab-abd83bc3f4de.jpg?im_w=720', 17);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9eaa321a-89fe-47d9-8be5-eb72a78eac3f.jpg?im_w=720', 17);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f5cfcdeb-2386-4cb7-9c7d-bf6df5c72eb2.jpg?im_w=720', 17);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d9352916-4d14-4d39-b08e-e24f2886cc3a.jpg?im_w=720', 17);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f3368a21-8efe-49b4-89f5-cccf165a2a14.jpg?im_w=720', 17);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/33289afe-877e-46b8-94b1-b1f5a934c9b7.jpg?im_w=720', 17);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/84713848-c384-4c93-88d7-527da5484f5c.jpg?im_w=720', 17);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c1a35b17-ea20-49ba-b8e0-bd1a3cbddf81.jpg?im_w=720', 17);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/202a9f09-f316-4294-89b0-015d21974f08.jpg?im_w=720', 17);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/334ade29-6cf5-4076-8ab6-626dff3675e8.jpg?im_w=720', 17);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/62d4a0b2-78bb-4882-8e89-747462e066d0.jpg?im_w=720', 17);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0aad8c2c-16b8-4a57-bc3f-c3e6f617dd54.jpg?im_w=720', 17);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/931a1cb3-f04f-4f4e-99e2-21f1fb7d714a.jpg?im_w=720', 17);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fcb3c6d1-385f-412a-aa15-659ae0afbab3.jpg?im_w=720', 17);
insert into location(id, latitude, longitude, city_name)
values (18, 37.576, 127.02, '서울');
insert into review (id, star, review)
values (18, 4.5, 224);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (18, 'dmyk-oblong', '종로구의 게스트용 별채 전체', 100000, '집 전체', 1, 2, 1, 18, 18, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/3dfeacd4-bea8-4c2e-820f-bf61f8053323.jpg?im_w=720', 18);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4f01dedf-ccfb-4d08-8ffb-77c3d6c08043.jpg?im_w=720', 18);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/894fb768-578d-4c74-b55c-a8f2b391eeea.jpg?im_w=720', 18);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/54aa4fd6-648e-4389-8caf-fd8807fb3c12.jpg?im_w=720', 18);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b225e782-ca50-4176-bde9-5f83386c26ef.jpg?im_w=720', 18);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8fca6e8a-036f-4eb2-9ed3-433aaa9c05ec.jpg?im_w=720', 18);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/84dcee45-d1e4-4b6a-b4a6-c9bfe95f06e3.jpg?im_w=720', 18);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/82f03dff-c05d-4f86-8d0f-8c79e6c2a64c.jpg?im_w=720', 18);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/45b77d08-794d-4a03-a495-d597969e0bd4.jpg?im_w=720', 18);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/63ee0d96-9f13-4ff5-894b-ed552052f686.jpg?im_w=720', 18);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/249cc763-f0e4-48c8-a799-1a46ae0a55c7.jpg?im_w=720', 18);
insert into location(id, latitude, longitude, city_name)
values (19, 37.575, 127.02, '서울');
insert into review (id, star, review)
values (19, 5, 194);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (19, 'dmyk_"Trois"', '종로구의 게스트용 별채 전체', 100000, '집 전체', 1, 2, 1, 19, 19, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/c32e84f8-77c4-442c-8d11-566835f3412c.jpg?im_w=720', 19);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0e2f35b2-afff-4247-8da7-74f612be0fd7.jpg?im_w=720', 19);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4c904049-898d-4fe0-b35e-56bb0c345050.jpg?im_w=720', 19);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9f2900fd-d865-4dfe-95a2-2b862ec6024d.jpg?im_w=720', 19);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a771881a-656c-42a4-8bfc-b370f559f6a3.jpg?im_w=720', 19);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d1a01679-7adc-4a5c-b92c-c76e6ad563ab.jpg?im_w=720', 19);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5668c52b-fed9-4c05-b7ad-0572388959c3.jpg?im_w=720', 19);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/771f5064-0b6d-4544-acae-b5c05a0c26ad.jpg?im_w=720', 19);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2091ff18-9473-44fa-8bbd-ec863951f899.jpg?im_w=720', 19);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9dd633fc-d961-426b-8644-32d680a86b59.jpg?im_w=720', 19);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/386977ec-3453-4e01-b48a-fa489cb95b9b.jpg?im_w=720', 19);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/89e9e4ef-2d1e-4ca7-b27a-1d237d4f1007.jpg?im_w=720', 19);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e50589b1-ef91-428f-ae77-e174c4a297a1.jpg?im_w=720', 19);
insert into location(id, latitude, longitude, city_name)
values (20, 37.556, 126.932, '서울');
insert into review (id, star, review)
values (20, 5, 10);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (20, '#ONLY자가격리 & 장기숙박 #프리미엄 도시감성 #숙소설명 꼭 읽어주세요 #402', 'Sinchon-dong, Seodaemun-gu의 아파트 전체', 85000, '집 전체', 1, 4,
        1, 20, 20, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46135031/original/22d3e85e-ace1-487f-8063-120b487b6aea.jpeg?im_w=720',
        20);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46135031/original/01bc5ce3-c870-441a-b59a-04e33cc2c5e0.jpeg?im_w=720',
        20);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46135031/original/59f680bd-f74d-4b4f-837c-32ed799f7808.jpeg?im_w=720',
        20);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46135031/original/1ea0b433-0c5d-4b35-a136-7288edf826f7.jpeg?im_w=720',
        20);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46135031/original/7f392af1-31d5-48ac-a13f-6b8ecaea0031.jpeg?im_w=720',
        20);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46135031/original/8a481b38-cb5b-4fb4-9539-5c20281aeb60.jpeg?im_w=720',
        20);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46135031/original/f66ed51a-9585-4e42-a8ba-9a19406e293d.jpeg?im_w=720',
        20);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46135031/original/dc083bc3-9f78-4a42-87a4-263570cd1742.jpeg?im_w=720',
        20);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46135031/original/6f3c48b2-9751-48f2-9cac-27712f760ab3.jpeg?im_w=720',
        20);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46135031/original/5209263f-2129-4a90-9534-8ccc8ef4cc2a.jpeg?im_w=720',
        20);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46135031/original/6ad89059-478a-4b6c-80f0-71a45452c76f.jpeg?im_w=720',
        20);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46135031/original/4b41a9af-7a9e-43c7-ba19-94dd2ff2c500.jpeg?im_w=720',
        20);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46135031/original/9491b2ac-539b-44ff-a0ca-d61e5f48d2fd.jpeg?im_w=720',
        20);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46135031/original/cc5f4f26-2791-46b5-9560-636caa0bbd20.jpeg?im_w=720',
        20);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46135031/original/4d8b0b76-9aa2-41bb-8550-2fb1f4c36c46.jpeg?im_w=720',
        20);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46135031/original/d12ebfce-8124-4f06-88ad-040088eecf61.jpeg?im_w=720',
        20);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46135031/original/46b5f2cc-4868-41ef-836d-719e976e481a.jpeg?im_w=720',
        20);
insert into location(id, latitude, longitude, city_name)
values (21, 37.578, 127.006, '서울');
insert into review (id, star, review)
values (21, 4.5, 58);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (21, '대학로 Mins House B02', 'Ihwa-dong, Jongno - gu의 게스트용 별채 전체', 100000, '집 전체', 2, 4, 0, 21, 21, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/5a85375c-737f-4a30-86cc-8b163ea72c94.jpg?im_w=720', 21);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a445c628-8d92-4c36-a1a7-45db1738940c.jpg?im_w=720', 21);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/16bb43af-265d-461f-a7a1-53d9c96c9581.jpg?im_w=720', 21);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/31793bed-b861-4fe4-9346-7b6f4712447f.jpg?im_w=720', 21);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6cc808ea-f5fe-4537-bd86-d638bb817a44.jpg?im_w=720', 21);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cfb2b83e-290e-405b-97a6-59772c3d3885.jpg?im_w=720', 21);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fc3c6110-9962-4d58-ac8b-37f0c20c12cb.jpg?im_w=720', 21);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/72de124f-1578-44fd-9942-a6675c7e5c2e.jpg?im_w=720', 21);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/90b0b4af-83e2-4604-a83c-b28295d901a2.jpg?im_w=720', 21);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3d0fb1c0-904f-458b-a64a-e48519858123.jpg?im_w=720', 21);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3d1dd15b-10f3-49ca-96e1-6b8fc365ddbb.jpg?im_w=720', 21);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fc814ec3-3929-49c1-b33b-1b809f2a0af6.jpg?im_w=720', 21);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/74e15ca2-b1ad-4e0a-8283-43170169b112.jpg?im_w=720', 21);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9939043f-1c07-454e-8525-e47fc7334b07.jpg?im_w=720', 21);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/97c8b2ea-70b9-495d-8ed2-4644c23b01d9.jpg?im_w=720', 21);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0ad01158-adf3-4914-9ec3-8f2d24289a84.jpg?im_w=720', 21);
insert into location(id, latitude, longitude, city_name)
values (22, 37.56, 126.985, '서울');
insert into review (id, star, review)
values (22, 4.5, 3);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (22, '6# 12 Bed Female Dorm[Myeong-dong,
        明洞]', 'Myeong-dong, Jung - gu의 호텔 객실', 100000, '호텔 객실', 1, 1, 5, 22, 22, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/4aef6395-ceb8-4592-9313-a6d4680471a7.jpg?im_w=720', 22);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e0cbd6f8-c6fc-4bf7-893a-35d6ca732075.jpg?im_w=720', 22);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/80f80af5-e8fe-45c5-b4e4-610a1f66d52c.jpg?im_w=720', 22);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ebd66864-ae9e-4caa-b24d-268c48bc8fc5.jpg?im_w=720', 22);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/19d6ee40-4011-42af-a1e4-d07b44e720a0.jpg?im_w=720', 22);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/32f8e359-4ba6-49a4-a810-b63a5923d47b.jpg?im_w=720', 22);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/351dd26b-54f9-4d3c-bbcd-39ed1b1d4276.jpg?im_w=720', 22);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/86e3da16-9b2d-4f97-a56b-26fd0826666a.jpg?im_w=720', 22);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f33d8ecd-cdbe-4a53-b9c5-836b10e893e5.jpg?im_w=720', 22);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/db854534-75f6-4984-8c6b-d825e1546c57.jpg?im_w=720', 22);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9384e655-3dbb-4b61-9355-1460bf03ae99.jpg?im_w=720', 22);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/759d79cc-c8b6-43d3-95c5-7a5c6c50f368.jpg?im_w=720', 22);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/db4c2737-37a7-40c6-88bb-bc518b7573d3.jpg?im_w=720', 22);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e14156c8-fc25-45ea-89a2-5740da4a43ef.jpg?im_w=720', 22);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1d559ac1-bf1a-44fd-90b7-9ff32898f17d.jpg?im_w=720', 22);
insert into location(id, latitude, longitude, city_name)
values (23, 37.578, 127.005, '서울');
insert into review (id, star, review)
values (23, 4.5, 45);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (23, '대학로 Mins House!!406',
        'Ihwa-dong, Jongno-gu의 게스트용 별채 전체', 100000, '집 전체', 1, 2, 0, 23, 23, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/4ae9672c-39e2-475a-adaa-1dd4d138e7e1.jpg?im_w=720', 23);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/99ccdbff-cd8f-4b77-ba5f-06c6a1daf879.jpg?im_w=720', 23);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3733f800-6281-42e2-93b2-302635f689ad.jpg?im_w=720', 23);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/12bffabd-a3d6-451e-bc98-24a8c0fcd60f.jpg?im_w=720', 23);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f38108b9-5bea-4fca-99cd-f4cc1f78b5e9.jpg?im_w=720', 23);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0af5e835-9dc5-4bc1-bdc8-cf71499273fe.jpg?im_w=720', 23);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4e3cd960-cf67-4e88-957c-b562415f24b0.jpg?im_w=720', 23);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a9cc3902-ddde-4a38-9eac-170d8e20e8d8.jpg?im_w=720', 23);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/046e6956-9c85-4e88-b0cc-a36dcc3dfe60.jpg?im_w=720', 23);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9b4f732f-8af3-479a-9317-d482c6d3bd05.jpg?im_w=720', 23);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/66eee562-adb3-459e-8c21-9a34973679ab.jpg?im_w=720', 23);
insert into location(id, latitude, longitude, city_name)
values (24, 37.579, 127.023, '서울');
insert into review (id, star, review)
values (24, 0, 1);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (24, 'HOSTEL SEOUL - Double room with a bathroom (3020)', 'Sungin 2(i)-dong, Jongno-gu의 개인실', 95000, '개인실', 0, 2,
        1, 24, 24, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49507837/original/576cc5b7-8114-4466-9376-45c259780fd5.jpeg?im_w=720',
        24);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49507837/original/edd18b3e-ca0e-4e92-af7b-9119f279dce0.jpeg?im_w=720',
        24);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1b363415-58b7-4a1f-9d61-a2a6b10e3996.jpg?im_w=720', 24);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f6c93e58-9cb5-47e3-842b-b042c1894979.jpg?im_w=720', 24);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49239379/original/ac61924d-d7cd-4e71-b45c-ded668968e9c.jpeg?im_w=720',
        24);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49150712/original/c8e15eee-e1a0-4e91-912d-4bf2fca6860b.jpeg?im_w=720',
        24);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49131805/original/f40b5394-42b9-4e71-ab39-7593dee4d5aa.jpeg?im_w=720',
        24);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8012bdbf-e281-4fc8-b645-ef663143135d.jpg?im_w=720', 24);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/46bf7e9a-23dc-4174-864f-8967b7859175.jpg?im_w=720', 24);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/daf17c3d-3520-4103-8135-38fc6e6865aa.jpg?im_w=720', 24);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9f52c84f-e648-4208-916e-194e64ec48fa.jpg?im_w=720', 24);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ed01fcd7-a882-41e7-a5b2-662ba2a36938.jpg?im_w=720', 24);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a0528d71-018f-45c1-bee9-d38b5dcf29a6.jpg?im_w=720', 24);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c5264df5-f483-4021-96dd-ef85f184a7c2.jpg?im_w=720', 24);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/45d9e8ca-1d15-4dda-b4a7-02696cbce714.jpg?im_w=720', 24);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49150712/original/4bdb422a-949b-47d8-85d7-eac0dc2b8caa.jpeg?im_w=720',
        24);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49150712/original/190c7b35-04b1-4519-a66d-e217530f7bdd.jpeg?im_w=720',
        24);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49150712/original/b808fea9-3f14-4fd8-881e-79e55fa6ce34.jpeg?im_w=720',
        24);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49239379/original/a2e2dabd-49a6-4862-84f8-b79dd38d9605.jpeg?im_w=720',
        24);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49239379/original/ee47672b-9a15-40ce-9e79-eed71d07619b.jpeg?im_w=720',
        24);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c4517a03-8adf-403b-8896-a51124df5806.jpg?im_w=720', 24);
insert into location(id, latitude, longitude, city_name)
values (25, 37.563, 126.994, '서울');
insert into review (id, star, review)
values (25, 5, 12);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (25, '감성요정은 여기로 ღᴗღ 포근포근 호텔침구 제공', 'Euljiro-dong, Jung-gu의 레지던스 전체', 90000, '집 전체', 1, 2, 1, 25, 25, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/a60ef9fd-7e13-400a-85a3-04dcc9853829.jpg?im_w=720', 25);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1bbaba5e-6099-490b-96ff-08127602b4fa.jpg?im_w=720', 25);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48319348/original/86f306a6-93a8-45d8-89ef-4c0a609e5808.jpeg?im_w=720',
        25);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47897008/original/9943678b-6a40-49d4-b5db-022666084de3.jpeg?im_w=720',
        25);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/56279b3e-3612-4428-bfe1-1f534169ab4b.jpg?im_w=720', 25);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/27dd2865-a93d-46e7-be16-929a8b899449.jpg?im_w=720', 25);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a99c7671-2cc8-4ece-8885-66d77ae20861.jpg?im_w=720', 25);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bb322bbf-ff01-4b9a-97ea-3b240186be48.jpg?im_w=720', 25);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6b92cceb-1356-42b3-9dc2-e614783ba3df.jpg?im_w=720', 25);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47897008/original/4badbe68-687e-44da-ace1-8e9c19e837a9.jpeg?im_w=720',
        25);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9bac2565-0ebb-4717-b8bb-1ed8ec2ca28a.jpg?im_w=720', 25);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d9b9cce5-4465-454e-a5c6-269701e2251e.jpg?im_w=720', 25);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/32608175-f261-40e5-a823-ba9425fe1bff.jpg?im_w=720', 25);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0578cba0-1d97-4d4e-8e78-b8a8c4622fe4.jpg?im_w=720', 25);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e31ddedf-0227-476d-8529-b7ac1ce9827a.jpg?im_w=720', 25);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0c471caa-ba56-4126-af62-8559940e4a9a.jpg?im_w=720', 25);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/65986a23-63b5-42fe-a83f-65fa8379e8f7.jpg?im_w=720', 25);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/373b5775-7413-44aa-ae39-90ceba617bd8.jpg?im_w=720', 25);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48319348/original/b248f1a7-5960-4369-a151-40ed0a179c9f.jpeg?im_w=720',
        25);
insert into location(id, latitude, longitude, city_name)
values (26, 37.575, 126.99, '서울');
insert into review (id, star, review)
values (26, 4.5, 19);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (26, '익선동의 감성 숙소❤️
넷플릭스 무료시청 가능^^!', 'Waryong-dong, Jongno-gu의 부티크 호텔의 객실', 100000, '개인실', 1, 2, 1, 26, 26, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/b85a86ee-1560-4282-92ca-45b2a9646393.jpg?im_w=720', 26);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7e256e2c-0760-470f-935c-aea5f649a329.jpg?im_w=720', 26);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bac742b9-024c-4d32-8cc6-6c0879e6e6dc.jpg?im_w=720', 26);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e183a1c2-1a3e-4940-96b2-174e7c05ec72.jpg?im_w=720', 26);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/430d8369-9a99-4353-9f95-9cb1d4cfc340.jpg?im_w=720', 26);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c8b9d649-a509-4da1-a39c-275d389021e9.jpg?im_w=720', 26);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/90dea4db-65f2-4cbc-908f-b3c6b156eebf.jpg?im_w=720', 26);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/76eb1a8e-236a-46d6-8d5e-a81a8c192fb0.jpg?im_w=720', 26);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/502011c8-a2e9-472f-9917-d835df62c8b0.jpg?im_w=720', 26);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f2fec240-da5b-45b8-8976-9ff60ff08011.jpg?im_w=720', 26);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/22b8a619-068b-4eba-a6e6-3e070012feec.jpg?im_w=720', 26);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/afb731b3-dd96-4336-b041-73eb7573d320.jpg?im_w=720', 26);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a9b0a1d2-c970-4455-abae-0e015344f976.jpg?im_w=720', 26);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f82079d0-f13b-4492-8a40-9e7cb87b9f7d.jpg?im_w=720', 26);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/65cfecd6-4444-4a74-953c-ad2fcb607186.jpg?im_w=720', 26);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ab2c2fd4-3f14-4b1a-a935-d6e827d0716d.jpg?im_w=720', 26);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/43d62b2a-28a8-406a-8569-3ed44df169d2.jpg?im_w=720', 26);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/654e7b76-34a3-4749-be85-002c440d4c6b.jpg?im_w=720', 26);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0969d371-27b1-4f3c-af62-5328c792989c.jpg?im_w=720', 26);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d43fb6ca-17ce-429d-a8a9-57d027037291.jpg?im_w=720', 26);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a23d3460-cb76-46cb-91e6-d234e9ec421d.jpg?im_w=720', 26);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6443ccd6-6cfa-4633-b8fd-cae387556728.jpg?im_w=720', 26);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/32b8cdcd-a681-4dac-b995-2838d2136795.jpg?im_w=720', 26);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0b72ed53-4e9e-4e6f-bdbf-07b07ae1bd42.jpg?im_w=720', 26);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9f5ae076-2850-4291-af18-2e35d37c7dc7.jpg?im_w=720', 26);
insert into location(id, latitude, longitude, city_name)
values (27, 37.562, 126.984, '서울');
insert into review (id, star, review)
values (27, 4.5, 55);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (27, '♥Promotion♥T4 프라이빗 모임 + 감성유닛 in 명동 (방역OK, 소독ing)', 'Myeong-dong, Jung-gu의 레지던스 전체', 90000, '집 전체', 2, 3, 1,
        27, 27, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb',
        'https://a0.muscache.com/im/pictures/miso/Hosting-40583316/original/c6274a25-c531-4e2b-95fd-d453d45f8cbe.jpeg?im_w=720',
        27);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-40583316/original/22a5b9e4-761b-473b-8c44-0b16d3ccdb06.jpeg?im_w=720',
        27);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-40583316/original/cf7eb19e-2117-44b8-9b99-b5eb297e749f.jpeg?im_w=720',
        27);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-40583316/original/bf266984-ce89-416a-9145-cf0edc58796a.jpeg?im_w=720',
        27);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-40583316/original/09410c78-382e-4221-a2fa-358ebf1c537c.jpeg?im_w=720',
        27);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-40583316/original/6fed25fe-350e-4a61-b4a8-12d3d1c4d5c4.jpeg?im_w=720',
        27);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-40583316/original/a7c370a8-a8c2-4117-ada5-0256428b1ae8.jpeg?im_w=720',
        27);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/284aa81c-d3db-4b8e-8285-dcdeb5dc72b5.jpg?im_w=720', 27);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6d747b3b-6b65-4a7e-9ada-508a7c37379b.jpg?im_w=720', 27);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/900c8a5a-759a-4eda-99d7-9905ac0c3fe4.jpg?im_w=720', 27);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-40583316/original/2075da0d-6ba3-48fd-ad95-f2b4840a28f3.jpeg?im_w=720',
        27);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c02b4076-dd58-454f-866a-10b7db39341d.jpg?im_w=720', 27);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-40583316/original/656f0a69-17ac-45ec-ac32-2e40e7a6f8be.jpeg?im_w=720',
        27);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/001cfb15-774e-4019-afbc-76e4e4a3c5dd.jpg?im_w=720', 27);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/078726e5-a21b-4941-a6dd-d6cd55787be9.jpg?im_w=720', 27);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-40583316/original/c3b99160-fc83-41c2-99e9-b001a68dc868.jpeg?im_w=720',
        27);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-40583316/original/ed0fb902-ef8b-484d-8b69-d729f024addb.jpeg?im_w=720',
        27);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-40583316/original/6eed6f55-171a-4da4-8f3c-d133d897bf0f.jpeg?im_w=720',
        27);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-40583316/original/ee6fd50d-3815-4ec3-b95a-03ef36b7b0cc.jpeg?im_w=720',
        27);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-40583316/original/633ddbf5-d485-473b-87d4-2beb1ae24a2f.jpeg?im_w=720',
        27);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-40583316/original/0d0bab1c-f2d7-4f7a-b369-314612d59ff2.jpeg?im_w=720',
        27);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/74b0bb68-d353-43ae-896d-622544879aed.jpg?im_w=720', 27);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-40583316/original/9c9a2760-f99c-4c9d-a92b-95b8ebbafab9.jpeg?im_w=720',
        27);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-40583316/original/4ea8a8b4-cc2a-4dd2-9f1f-ef50c59f39b9.jpeg?im_w=720',
        27);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8927372d-0843-47e9-af27-f112f98b8de1.jpg?im_w=720', 27);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/438e6a31-24b4-4f76-b328-d3d046ab7c14.jpg?im_w=720', 27);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-40583316/original/6581c92b-60a3-4acb-b8ce-6e1c529932b8.jpeg?im_w=720',
        27);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-40583316/original/c22b9cc7-e505-4f33-8987-4fa97d430ee7.jpeg?im_w=720',
        27);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-40583316/original/b68f9603-04ef-4b07-94c8-31969021bb9a.jpeg?im_w=720',
        27);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-40583316/original/6a74a666-e37d-49c1-afdc-c521e254177a.jpeg?im_w=720',
        27);
insert into location(id, latitude, longitude, city_name)
values (28, 37.501, 127.035, '서울');
insert into review (id, star, review)
values (28, 4.5, 20);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (28, '☆역삼역도보2분#417', 'Yeoksam 1(il)-dong, Gangnam-gu의 초소형 주택', 100000, '집 전체', 1, 1, 1, 28, 28, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/98f9b3e3-11c2-4b9c-a543-f765b1e0f913.jpg?im_w=720', 28);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/992eedac-b6d5-48a5-8ca8-2e027dcd97c1.jpg?im_w=720', 28);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/831e83e7-e7fe-4b76-990f-6d8feee84291.jpg?im_w=720', 28);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8dab2db8-ef04-471a-857f-d61c1ea13567.jpg?im_w=720', 28);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/59cc7abd-f642-4548-838d-16e2e657f842.jpg?im_w=720', 28);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/47fc8c9d-377b-4b43-8519-10bdc3636068.jpg?im_w=720', 28);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/59ce19e9-4e60-4820-9251-7aacf2d001d6.jpg?im_w=720', 28);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/33c7e9d2-fb01-4a15-a72c-ad13d55a7ff0.jpg?im_w=720', 28);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/91677694-8304-49f4-a3a6-fdeb1ff2c89f.jpg?im_w=720', 28);
insert into location(id, latitude, longitude, city_name)
values (29, 37.544, 126.942, '서울');
insert into review (id, star, review)
values (29, 0, 0);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (29, 'GETTY HOUSE - DELUXE ROOM 6A', 'Yonggang-dong, Mapo-gu의 개인실', 93000, '개인실', 1, 1, 1, 29, 29, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/d9750dd7-ff14-4e9c-be62-f10076bc0351.jpg?im_w=720', 29);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48352693/original/2e282406-bde5-4f12-aa7e-8044568b16c7.jpeg?im_w=720',
        29);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/441beebe-ec24-41da-99c6-a49cd1d5692c.jpg?im_w=720', 29);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48352693/original/354286d5-44f8-4c2c-a06d-0e4a48a53e51.jpeg?im_w=720',
        29);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/921cd937-07de-4371-af94-94dc6d289a21.jpg?im_w=720', 29);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f496cc8f-36a0-4cfc-967f-be1da4a0465c.jpg?im_w=720', 29);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/94cff13e-f158-4931-8fa8-f1413375cf22.jpg?im_w=720', 29);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/19d978c0-ebc2-4216-bcfb-597a001810a1.jpg?im_w=720', 29);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dba6f9a5-19a5-4923-8982-78ab269a4c5c.jpg?im_w=720', 29);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c7c847b0-8aa7-48eb-9014-b5e18be70c86.jpg?im_w=720', 29);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9956b9db-3631-49bb-b31b-1c1c4b4e4669.jpg?im_w=720', 29);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48191983/original/71d069a9-3ac9-481b-b078-ef66a8022489.png?im_w=720',
        29);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48191983/original/50822719-463c-4fcb-a941-51bd65f2a03a.png?im_w=720',
        29);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48191983/original/b13d2aa1-4238-4257-916f-e5dda184c0cd.png?im_w=720',
        29);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48191983/original/ca1ec866-5923-4b01-a2b1-a6ed277e4931.png?im_w=720',
        29);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48191983/original/8f24ce65-08e9-460e-9c3b-9fb9d0f4cd96.png?im_w=720',
        29);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48191983/original/f3dbd14c-700d-4034-a757-1ef8eb884545.png?im_w=720',
        29);
insert into location(id, latitude, longitude, city_name)
values (30, 37.559, 126.943, '서울');
insert into review (id, star, review)
values (30, 5, 23);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (30, 'Near airport Seoul Sinchon  412 alicehouse', 'Daehyeon-dong, Seodaemun-gu의 개인실', 95000, '개인실', 1, 1, 1, 30,
        30, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41650874/original/3e7e61dd-0c82-4920-9e24-7e1b9e64a0c6.jpeg?im_w=720',
        30);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e59a0ec0-cd7d-43a4-95d4-05f53babd99f.jpg?im_w=720', 30);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41650874/original/195ae524-6cfe-41ce-aa54-061dc7b5e80b.jpeg?im_w=720',
        30);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41650874/original/ef16e535-beb5-467b-82e6-0f12f803cb2b.jpeg?im_w=720',
        30);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41650874/original/4ac40880-e089-4ff1-a9e4-ed4aa28c31a1.jpeg?im_w=720',
        30);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41650874/original/e501f2ff-5cb9-44f6-8301-ff055aff3713.jpeg?im_w=720',
        30);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41650874/original/027df28f-e3aa-4517-9baf-bbbf212a0de2.jpeg?im_w=720',
        30);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41650874/original/4bdbeae7-72e1-4988-bd6d-427d8dbde1f9.jpeg?im_w=720',
        30);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41650874/original/acf01b25-b0a3-4dcd-8ac9-84c626b368bc.jpeg?im_w=720',
        30);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41650874/original/0252c45b-263b-43c4-b717-67a895309fb7.jpeg?im_w=720',
        30);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41650874/original/92321fd2-c41a-4def-8063-46832aa81f9e.jpeg?im_w=720',
        30);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41650874/original/7d884a97-8323-4bfc-bc10-b0ca3c31f9f0.jpeg?im_w=720',
        30);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41650874/original/84563dce-c91c-4cd5-9c79-8701cd7d6ba0.jpeg?im_w=720',
        30);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41650874/original/468c31e3-2002-4b88-b90a-2c6c5a79b300.jpeg?im_w=720',
        30);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41650874/original/fe8ccebb-b7f2-4dc2-a7d7-e04a7a5a12af.jpeg?im_w=720',
        30);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41650874/original/e51a561b-92bd-48a1-aedd-681359943e8e.jpeg?im_w=720',
        30);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41650874/original/02549fc7-fe7a-4977-bc16-dc7bab1be915.jpeg?im_w=720',
        30);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41650874/original/3e671361-c16a-4c87-a2da-2f3d8f5b0174.jpeg?im_w=720',
        30);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41650874/original/43abfc2e-d7eb-44aa-8977-3e3961ae2ff8.jpeg?im_w=720',
        30);
insert into location(id, latitude, longitude, city_name)
values (31, 37.502, 127.034, '서울');
insert into review (id, star, review)
values (31, 5, 6);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (31, '깔끔하고 가성비좋은 미니룸(역삼역 2분 강남역7분)', '강남구의 개인실', 95000, '개인실', 1, 1, 0, 31, 31, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/626e1416-cf7a-44aa-ba03-fb6d9cf1f46e.jpg?im_w=720', 31);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d7fa1d03-a06d-4a2c-8006-5b40a3fbe7ed.jpg?im_w=720', 31);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1f3c8ce0-6487-47e6-b7fc-793726b643e6.jpg?im_w=720', 31);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7af07a82-bcff-4bcb-9944-ca1256cf0c66.jpg?im_w=720', 31);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d426bcd2-95a1-4053-a519-64952ccea590.jpg?im_w=720', 31);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4e5116cb-818b-49d4-89c8-d21094ad6561.jpg?im_w=720', 31);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b33f0f97-4333-4b2f-a642-0e5ff44a1df5.jpg?im_w=720', 31);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0ebe4fbc-9158-4b7c-8e12-88e7514cf90f.jpg?im_w=720', 31);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/99699859-03fc-429a-9cb4-11e2e3272c46.jpg?im_w=720', 31);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1b3311ae-ebb1-47ae-86b5-209e5f277d81.jpg?im_w=720', 31);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dee0df18-8d8a-4a2a-bd8c-e6b2db26aa03.jpg?im_w=720', 31);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/940d2288-f180-49c9-9553-209c64c0b765.jpg?im_w=720', 31);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/21256c34-4b50-4805-8cf2-866868dde25b.jpg?im_w=720', 31);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/221ad9f9-7361-43aa-a129-daf623c5a9ba.jpg?im_w=720', 31);
insert into location(id, latitude, longitude, city_name)
values (32, 37.51, 127.081, '서울');
insert into review (id, star, review)
values (32, 5, 21);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (32, '[장기거주환영] Free WiFi / 종합운동장 2분, 잠실새내 5분! 아늑한 갬성 하우스', '송파구의 아파트 전체', 90000, '집 전체', 1, 1, 1, 32, 32, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/1c8d1314-b329-4d6b-b8d1-06b4be8beca5.jpg?im_w=720', 32);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1d0823de-3dcf-4e19-80b7-8458301ee16b.jpg?im_w=720', 32);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/768ae4fa-b9da-429b-b546-bd05c81e5397.jpg?im_w=720', 32);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/47da6e63-3adc-4d58-b4ac-e6ff04740e07.jpg?im_w=720', 32);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4e751e92-4e72-4643-9c8f-59a84e6e0824.jpg?im_w=720', 32);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/83583cbe-4069-4c6e-a2a7-2bceb80e9aeb.jpg?im_w=720', 32);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/64a3984e-246f-4bf2-a6cc-88caa0bd7862.jpg?im_w=720', 32);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/964e5648-2f2e-47fd-96af-3fa3bf11bd31.jpg?im_w=720', 32);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bba4e135-a3e3-4f6a-bf9b-d26f55b7e9fb.jpg?im_w=720', 32);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e0281ced-2607-47f4-85f0-8287d7a30747.jpg?im_w=720', 32);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7e6402f9-95ae-4dd9-9da0-839dcb566c7e.jpg?im_w=720', 32);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/07da8088-6fae-4270-9c4f-b20791c3e47b.jpg?im_w=720', 32);
insert into location(id, latitude, longitude, city_name)
values (33, 37.591, 127.012, '서울');
insert into review (id, star, review)
values (33, 5, 98);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (33, 'Kevins home 3 (For one person.)', '성북구의 아파트 전체', 95000, '집 전체', 1, 1, 1, 33, 33, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/2afd6b49-159e-436b-893d-498bcaa4350e.jpg?im_w=720', 33);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/56ac81ff-433c-4e95-92d2-9ebd859af4e3.jpg?im_w=720', 33);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/82aa0743-2720-44b2-be4f-0f8aec95dfa3.jpg?im_w=720', 33);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/113f6534-22a5-4923-845f-2e8a609e51ee.jpg?im_w=720', 33);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a56d3dfd-df88-40c6-acab-f3826ea49c0c.jpg?im_w=720', 33);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2515f275-0e7d-49fe-a911-20c205b2588b.jpg?im_w=720', 33);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c10829b3-73ef-4528-b505-f587d8db3415.jpg?im_w=720', 33);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/90dc666c-0fe2-42bc-9000-6ea143b860a1.jpg?im_w=720', 33);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9356effc-805a-4490-ad11-0e84ae8986ba.jpg?im_w=720', 33);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1c0b32de-1888-43df-b560-e90a7bc7600f.jpg?im_w=720', 33);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4af05440-2e74-49b9-9317-c9bbab66eea8.jpg?im_w=720', 33);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a082282d-7d68-4690-b2cf-4487acbbcd26.jpg?im_w=720', 33);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e503002a-c016-446a-b97d-dee33ee57f56.jpg?im_w=720', 33);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6c4e2cc4-d943-447d-a701-a31d82178548.jpg?im_w=720', 33);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b2855b7d-b5b2-43d8-9dc2-afa2b7717303.jpg?im_w=720', 33);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f724c446-6e0d-49cd-8a0f-dc11851b8c8e.jpg?im_w=720', 33);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d829dc41-9a33-4fa2-99bc-1ee87884112e.jpg?im_w=720', 33);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5b6af1cc-39c1-4875-b511-70c1cbd8b939.jpg?im_w=720', 33);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/61e44bb3-0981-4f1e-97d4-4362faf45941.jpg?im_w=720', 33);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6272a8c3-6c90-4ba4-bcb6-62dba2a3804c.jpg?im_w=720', 33);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d8bcf637-0e48-4c98-a569-8ba7e0638cd6.jpg?im_w=720', 33);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/437ac739-1b25-4df8-bd49-395345e1bf66.jpg?im_w=720', 33);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9916b53f-61f6-464b-bf2b-6e0c15c7f44d.jpg?im_w=720', 33);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b1cec547-4a36-4636-ad53-01bd796efe6f.jpg?im_w=720', 33);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/42d5bba2-a30b-47fb-a3c5-c2e4a1700d2a.jpg?im_w=720', 33);
insert into location(id, latitude, longitude, city_name)
values (34, 37.484, 126.953, '서울');
insert into review (id, star, review)
values (34, 5, 32);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (34, 'Cozy & Clean Studio at SNU Station #101', 'Jungang-dong,
        Gwanak - gu의 콘도(아파트) 전체', 85000, '집 전체', 1, 1, 1, 34, 34, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/92a21b61-c9e3-411c-8360-2e0ad9f7bb14.jpg?im_w=720', 34);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/02fc58b0-7977-45f8-97f7-1276d2a624b8.jpg?im_w=720', 34);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/10cd2f2e-63fb-4f90-8c84-d187380a9ee7.jpg?im_w=720', 34);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/71857c86-d11c-4a3f-b27d-88817af91cd6.jpg?im_w=720', 34);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5f27dfa6-cd27-487f-9231-b4471ff36cd2.jpg?im_w=720', 34);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/de0cb983-29b2-4d29-a1d1-63adc073b444.jpg?im_w=720', 34);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3d34c36d-3fa0-4ff4-8673-f03d2aba5ef7.jpg?im_w=720', 34);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3e46040b-2328-4f57-a0ff-7fdcdc2aa435.jpg?im_w=720', 34);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8acd3bd5-7d81-4f17-98fd-f16b55382572.jpg?im_w=720', 34);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7acd6e2b-5497-4640-881e-4eb07b446546.jpg?im_w=720', 34);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c1a1cb11-2cae-4b9c-9b4f-6f361536fd4f.jpg?im_w=720', 34);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c87d2762-1520-450a-b340-0323cfe6bb72.jpg?im_w=720', 34);
insert into location(id, latitude, longitude, city_name)
values (35, 37.574, 127.02, '서울');
insert into review (id, star, review)
values (35, 4.5, 207);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (35, 'dmyk_"Droptop"', '종로구의 게스트용 별채 전체', 100000, '집 전체', 1, 2, 1, 35, 35, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/ccac8b08-61e4-4b55-9c32-c3addea2f744.jpg?im_w=720', 35);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a45d93af-79a3-4f8b-8661-a250114cb1ca.jpg?im_w=720', 35);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1e38f050-7748-4ced-a1d8-8a2fffa47150.jpg?im_w=720', 35);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7224d20e-47b8-41fc-a846-269f39a7dafa.jpg?im_w=720', 35);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/de76d307-84b3-4112-b6e7-45e5c9bc2fd7.jpg?im_w=720', 35);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/42d3c16a-7b2f-4b1c-8254-5c4d3ccd86da.jpg?im_w=720', 35);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0c0b815c-a02f-476f-ab3d-f9ba7d8eaa22.jpg?im_w=720', 35);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/56c85649-dfb4-447d-a098-cbd1771b853f.jpg?im_w=720', 35);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ef529dbe-a001-46ad-9fc2-658043ccd6e1.jpg?im_w=720', 35);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/deb99a2c-ddf4-4f3c-906d-be00da032b7e.jpg?im_w=720', 35);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7257539e-e61d-4cef-b775-a4462927191e.jpg?im_w=720', 35);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/649bc710-b304-4077-b1ab-688387a82ce8.jpg?im_w=720', 35);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/968ae0fd-ed14-4f9e-9d7b-e4f4b31e5ee3.jpg?im_w=720', 35);
insert into location(id, latitude, longitude, city_name)
values (36, 37.554, 126.936, '서울');
insert into review (id, star, review)
values (36, 4, 17);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (36, '#32 Sinchon Sta 2mins Hongdae 8mins Blue Mansion', '마포구의 집 전체', 100000, '집 전체', 1, 2, 1, 36, 36, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/202f2d50-4c7e-41a9-9198-b775f2a20079.jpg?im_w=720', 36);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d32e2a72-ec50-4da2-b5b8-8a0ef8e935bc.jpg?im_w=720', 36);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e5d43b4f-9846-44c0-8832-f7ef7f863922.jpg?im_w=720', 36);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2a7a3916-4cc7-44d5-9721-dfff2c71531f.jpg?im_w=720', 36);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/84e9e9c8-2967-4e1b-9813-ca2e9be78401.jpg?im_w=720', 36);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3f5438bd-8b8b-40f3-b275-efd29fbd62ff.jpg?im_w=720', 36);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d79ba587-0c96-4fed-a51e-40f807fb72a8.jpg?im_w=720', 36);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/75127f29-e4df-4d2e-abe4-4da6a59c89b0.jpg?im_w=720', 36);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a7fca734-e699-4fda-b7f0-64a8acb2eeb7.jpg?im_w=720', 36);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/924b8b47-bb9b-4907-a73b-f410ec83ef33.jpg?im_w=720', 36);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5783d56a-2535-481f-a2d2-1f63a59c5170.jpg?im_w=720', 36);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/97c66831-4f00-4e05-9ab2-3d5dd1407079.jpg?im_w=720', 36);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ddc8b218-ec0d-4e96-92c1-a9f75f89781a.jpg?im_w=720', 36);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6981e30a-2f26-40ed-bc41-fa8f30e3976d.jpg?im_w=720', 36);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d06fb721-3d19-4e79-a40f-207ff7ea9f77.jpg?im_w=720', 36);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ef2ae023-b3fb-4783-9efb-19123f00bda1.jpg?im_w=720', 36);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a79bf415-1e9c-47c8-b41d-a7fdb714a5bd.jpg?im_w=720', 36);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d22ae9b2-142c-4fa7-9df7-ffb135b63ef0.jpg?im_w=720', 36);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1e27dbb4-f604-466c-8ad7-eba9b7798c46.jpg?im_w=720', 36);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0800efeb-2d66-4eb4-a349-739a612eca01.jpg?im_w=720', 36);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9f9245a6-d6de-4d2d-8520-158a69b508dd.jpg?im_w=720', 36);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0c7fa0ec-df44-4dca-b95a-efb01198b540.jpg?im_w=720', 36);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fc861f79-a29b-4101-9543-cbf3764384d5.jpg?im_w=720', 36);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/aff31852-ca49-431c-b344-fd3bac46f641.jpg?im_w=720', 36);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4f33cc13-fd83-4ca9-8870-5a8e1ed202ff.jpg?im_w=720', 36);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b27cb043-b9bc-4096-8f06-729481267ec4.jpg?im_w=720', 36);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6fb1036c-f8dc-4b0c-ba36-1808a219e05b.jpg?im_w=720', 36);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/121def72-7fd2-49c4-8f08-1bfef6f0c9ee.jpg?im_w=720', 36);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/776ddd45-5052-41cb-b2d7-861891228b2d.jpg?im_w=720', 36);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6bbb0532-324b-43da-9246-182f85087281.jpg?im_w=720', 36);
insert into location(id, latitude, longitude, city_name)
values (37, 37.562, 126.994, '서울');
insert into review (id, star, review)
values (37, 5, 6);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (37, '💚집 전체 이용💚 스팀 다리미 구비 ‼️ 네스프레소 무료제공', 'Euljiro-dong,
        Jung - gu의 레지던스 전체', 90000, '집 전체', 1, 2, 1, 37, 37, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48060388/original/6087709f-5d99-4e45-81ab-48b2a5e3b1bb.jpeg?im_w=720',
        37);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48060388/original/477e8930-8581-451f-8943-e4608d87ba0b.jpeg?im_w=720',
        37);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48060388/original/a8825ab4-01ba-41db-966a-d31d252f0015.jpeg?im_w=720',
        37);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48060388/original/c86b512b-70ac-4e18-9721-4627dba7d5aa.jpeg?im_w=720',
        37);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48060388/original/a59e0cd1-ecdb-4a82-9073-c4d9c94ed3b3.jpeg?im_w=720',
        37);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48060388/original/70267d5b-dfe7-4eae-acae-963ded6d7682.jpeg?im_w=720',
        37);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48060388/original/3f0d3daa-1ef9-47a1-b1f8-1b07cc8f6483.jpeg?im_w=720',
        37);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48060388/original/ae4cd600-7e54-41a4-9bc0-b7a057bb3f45.jpeg?im_w=720',
        37);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48060388/original/02d0ff5d-c30a-4f01-b2b9-8dac32a12c62.jpeg?im_w=720',
        37);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48060388/original/0eb4c692-2dca-45ad-ba31-e9d809ed001a.jpeg?im_w=720',
        37);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48060388/original/d7814947-32bd-4aa2-baa8-d508f636f65c.jpeg?im_w=720',
        37);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48060388/original/71e688aa-6f10-4634-b903-15a1292c7bd9.jpeg?im_w=720',
        37);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48060388/original/7f00694a-2c42-46da-9e6a-be49e00482d0.jpeg?im_w=720',
        37);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48060388/original/dcd4200a-5371-49a7-9b79-ac2ecf580ebf.jpeg?im_w=720',
        37);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48060388/original/035954d0-7fb9-43a5-984d-5be3e66645ab.jpeg?im_w=720',
        37);
insert into location(id, latitude, longitude, city_name)
values (38, 37.584, 127.019, '서울');
insert into review (id, star, review)
values (38, 5, 71);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (38, 'Bomun station,
        Korea University', '성북구의 아파트 전체', 95000, '집 전체', 1, 1, 1, 38, 38, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/c7e471d9-d2f7-46ad-bb1f-ae3e36be0d62.jpg?im_w=720', 38);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c64a2a22-c2c2-49c7-b353-c3b645703026.jpg?im_w=720', 38);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/106255402/a52c600e_original.jpg?im_w=720', 38);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/790c670f-28eb-43f3-b14e-d54b83b16e9b.jpg?im_w=720', 38);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/106255369/ea2b0b7d_original.jpg?im_w=720', 38);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/163d3925-36fe-47d5-9576-cf0399b8781a.jpg?im_w=720', 38);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/66407170-1ccf-4c0a-b3b3-1cddbb9448ab.jpg?im_w=720', 38);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/106255455/59dc9b7b_original.jpg?im_w=720', 38);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/106255541/244f147b_original.jpg?im_w=720', 38);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/106255585/18697ee8_original.jpg?im_w=720', 38);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ef140b11-7d69-470b-9a6d-130487634747.jpg?im_w=720', 38);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5c5e2978-e6bf-49db-ac15-b126c1fd1b98.jpg?im_w=720', 38);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/60329e3f-f593-4dc8-9c70-b7c48b49c93f.jpg?im_w=720', 38);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3b9eaa2e-acfb-43ef-a202-3ec49ba9913c.jpg?im_w=720', 38);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/28591fa0-e3b3-480c-9e61-62bf352eadeb.jpg?im_w=720', 38);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ba012493-634f-4dd5-93b1-6332be75889d.jpg?im_w=720', 38);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/106255755/7785fd60_original.jpg?im_w=720', 38);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/106255725/d879fa8f_original.jpg?im_w=720', 38);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cdd81ef6-85bf-4cac-aa2e-54cd0c72dd7c.jpg?im_w=720', 38);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/106255490/a0a60ff3_original.jpg?im_w=720', 38);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/106255631/8593b29b_original.jpg?im_w=720', 38);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/106255654/21df6b08_original.jpg?im_w=720', 38);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/106255318/caae9520_original.jpg?im_w=720', 38);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/106255218/c31d2ef6_original.jpg?im_w=720', 38);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/106255252/fd785866_original.jpg?im_w=720', 38);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/106255774/e68295ea_original.jpg?im_w=720', 38);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/106255785/af766b7f_original.jpg?im_w=720', 38);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/106255802/4711e30e_original.jpg?im_w=720', 38);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/106255699/fbaf4879_original.jpg?im_w=720', 38);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/106255814/037e7b08_original.jpg?im_w=720', 38);
insert into location(id, latitude, longitude, city_name)
values (39, 37.559, 126.951, '서울');
insert into review (id, star, review)
values (39, 5, 52);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (39, 'Ahyeon stn2]Ewha,
        Hongdae, Yonsei, Womanonly, 장기숙박가능', 'Chunghyeon-dong, Seodaemun - gu의 개인실', 90000, '개인실', 1, 2, 1, 39, 39, 1,
        1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/2679cefb-fdd2-41db-8344-df225a6b4ac4.jpg?im_w=720', 39);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/502ac826-c02a-433a-8f02-9a19ac0b21ad.jpg?im_w=720', 39);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e32bbfd4-5eff-475b-b542-0dfc8a2359ed.jpg?im_w=720', 39);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3cf6a3db-232c-4896-adfc-4bc62b9e786b.jpg?im_w=720', 39);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5b46439a-b29e-4c60-b837-1ff01ab85c42.jpg?im_w=720', 39);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2ee86d91-1abe-4a57-b58c-d1dbed46a459.jpg?im_w=720', 39);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/93d8c7c2-28e7-4bb9-aa81-f072deca2c9a.jpg?im_w=720', 39);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8b817a35-cf5b-4d0a-bbab-e102dcdd665e.jpg?im_w=720', 39);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/99632b7d-3fc3-4601-be01-07b26a4e51c4.jpg?im_w=720', 39);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ea8841ad-1602-475e-b205-255efd02fea6.jpg?im_w=720', 39);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a88ee3c6-68e6-47dd-8fd4-0f4b59caeb5a.jpg?im_w=720', 39);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/96a54ac1-b66a-458c-b9fa-021466e89142.jpg?im_w=720', 39);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/aad71b44-43e4-45e5-a0e5-0580ef1ea2e6.jpg?im_w=720', 39);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7ecef159-e1fe-4839-9555-fc769f4f74b3.jpg?im_w=720', 39);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3adf53d3-61f5-4cc0-a629-7b11ffc46727.jpg?im_w=720', 39);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/090ca8d9-9e38-4301-9564-7512c9bc0994.jpg?im_w=720', 39);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b7205c9d-5c5f-4aa9-91cf-7be3f756c766.jpg?im_w=720', 39);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7e781cbb-61d8-47bd-bdf3-83ad9da6edbc.jpg?im_w=720', 39);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/02b7739e-78e5-4c79-8086-4f3de07df9b0.jpg?im_w=720', 39);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9f19088b-09aa-44bc-86a0-a79dc62e1697.jpg?im_w=720', 39);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4d874ec9-63ac-4cdd-b97f-a641054568be.jpg?im_w=720', 39);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1392d4b5-ff2e-4966-a5f5-0eca13372f18.jpg?im_w=720', 39);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a6839af0-6e82-4055-af61-e2a1324dcba8.jpg?im_w=720', 39);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/60a3ecb6-0df1-4bb7-a9d5-d64f8810ccf0.jpg?im_w=720', 39);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/af6c6786-fe6f-4266-b225-9e41733cc1d5.jpg?im_w=720', 39);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b9c27222-ef6a-4b45-a68a-992943a067af.jpg?im_w=720', 39);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5bbcfe10-0790-4763-97f1-7a1ca7c4de19.jpg?im_w=720', 39);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e3fd4091-7933-4f9e-af0c-a4a90712a738.jpg?im_w=720', 39);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/788dd4f4-e4f6-4caf-b631-ccdac5410673.jpg?im_w=720', 39);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/47333e26-245f-47c6-b2fc-8f09b46be465.jpg?im_w=720', 39);
insert into location(id, latitude, longitude, city_name)
values (40, 37.579, 127.023, '서울');
insert into review (id, star, review)
values (40, 0, 2);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (40, 'HOSTEL SEOUL - Double room with a bathroom', 'Sungin 2(i)-dong,
        Jongno - gu의 개인실', 95000, '개인실', 0, 2, 1, 40, 40, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/1b363415-58b7-4a1f-9d61-a2a6b10e3996.jpg?im_w=720', 40);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f6c93e58-9cb5-47e3-842b-b042c1894979.jpg?im_w=720', 40);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49239379/original/ac61924d-d7cd-4e71-b45c-ded668968e9c.jpeg?im_w=720',
        40);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49150712/original/c8e15eee-e1a0-4e91-912d-4bf2fca6860b.jpeg?im_w=720',
        40);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49131805/original/f40b5394-42b9-4e71-ab39-7593dee4d5aa.jpeg?im_w=720',
        40);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8012bdbf-e281-4fc8-b645-ef663143135d.jpg?im_w=720', 40);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/46bf7e9a-23dc-4174-864f-8967b7859175.jpg?im_w=720', 40);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/daf17c3d-3520-4103-8135-38fc6e6865aa.jpg?im_w=720', 40);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9f52c84f-e648-4208-916e-194e64ec48fa.jpg?im_w=720', 40);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ed01fcd7-a882-41e7-a5b2-662ba2a36938.jpg?im_w=720', 40);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a0528d71-018f-45c1-bee9-d38b5dcf29a6.jpg?im_w=720', 40);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c5264df5-f483-4021-96dd-ef85f184a7c2.jpg?im_w=720', 40);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/45d9e8ca-1d15-4dda-b4a7-02696cbce714.jpg?im_w=720', 40);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49150712/original/4bdb422a-949b-47d8-85d7-eac0dc2b8caa.jpeg?im_w=720',
        40);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49150712/original/190c7b35-04b1-4519-a66d-e217530f7bdd.jpeg?im_w=720',
        40);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49150712/original/b808fea9-3f14-4fd8-881e-79e55fa6ce34.jpeg?im_w=720',
        40);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49239379/original/a2e2dabd-49a6-4862-84f8-b79dd38d9605.jpeg?im_w=720',
        40);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49239379/original/ee47672b-9a15-40ce-9e79-eed71d07619b.jpeg?im_w=720',
        40);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c4517a03-8adf-403b-8896-a51124df5806.jpg?im_w=720', 40);
insert into location(id, latitude, longitude, city_name)
values (41, 37.576, 127.02, '서울');
insert into review (id, star, review)
values (41, 4.5, 289);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (41, 'dmyk_"Trapezoid"', '종로구의 게스트용 별채 전체', 100000, '집 전체', 1, 2, 1, 41, 41, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/cd48f6bd-42e8-4353-9c6a-36e19c56b667.jpg?im_w=720', 41);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1f477093-41ad-4417-95da-3d97f2f609b3.jpg?im_w=720', 41);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/32e2675c-d5eb-4cb3-8979-6e557067fb4c.jpg?im_w=720', 41);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ba8b7a68-e54e-4226-aa18-a6c15d96078a.jpg?im_w=720', 41);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/652082aa-9311-44b1-a910-8709e9b5c168.jpg?im_w=720', 41);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5ee50ba9-dda8-41bf-94f9-34745af2e782.jpg?im_w=720', 41);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/918379ee-fbc9-4c1c-865d-1f421ce499b1.jpg?im_w=720', 41);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c350a29b-98bf-4dc5-b86c-bf4f3a257d34.jpg?im_w=720', 41);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/30b901b7-cff6-4619-b897-8f5ba1fe6bf1.jpg?im_w=720', 41);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c344bd78-aa00-463f-a864-9e23b1dae69c.jpg?im_w=720', 41);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fbbf155f-c61e-4511-ac99-2421cb6e82dd.jpg?im_w=720', 41);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e84ee68c-4728-4b3c-afd8-abfe130a4846.jpg?im_w=720', 41);
insert into location(id, latitude, longitude, city_name)
values (42, 37.568, 126.99, '서울');
insert into review (id, star, review)
values (42, 4.5, 29);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (42, '종로3가역 학원가 중심 탑골공원근처  가성비 갑 숙소 - 2', '종로구의 개인실', 95000, '개인실', 1, 1, 1, 42, 42, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/65e75106-eded-466e-a6df-d9f180e0cee8.jpg?im_w=720', 42);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d77acbe8-124d-42a7-9409-5ecfe6582972.jpg?im_w=720', 42);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/77121720-a331-49c4-9307-102de63381e0.jpg?im_w=720', 42);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/889b0a61-a4d3-4fc5-bb55-bc28fc41571e.jpg?im_w=720', 42);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/017db03f-2aa1-4bee-92bd-7041a3cfd86e.jpg?im_w=720', 42);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/345bacda-161c-4548-8ed9-6d18d7f709ca.jpg?im_w=720', 42);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/eacd0d08-b7dc-440f-b231-c909a5a41431.jpg?im_w=720', 42);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/785cb5d8-007a-495a-b32f-390552619602.jpg?im_w=720', 42);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4045d0a3-1d60-42ec-aba5-622384f60100.jpg?im_w=720', 42);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/256170ab-0050-44a6-b39e-febf1dea4648.jpg?im_w=720', 42);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4d48667b-2bc2-4874-9e53-dc44c35b8ac4.jpg?im_w=720', 42);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/364a66dc-89f1-4a70-9199-d05133bc140f.jpg?im_w=720', 42);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ab0e20d0-8b11-4419-8ea6-6ddec9527228.jpg?im_w=720', 42);
insert into location(id, latitude, longitude, city_name)
values (43, 37.54, 126.946, '서울');
insert into review (id, star, review)
values (43, 5, 244);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (43, 'Micasa@Seoul: Home away from home', 'Mapo의 아파트 전체', 95000, '집 전체', 3, 4, 1, 43, 43, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/78858561/7e858201_original.jpg?im_w=720', 43);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/eb40b64f-dad0-4094-ac15-b81cef1939db.jpg?im_w=720', 43);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/79887980/1e6ee76f_original.jpg?im_w=720', 43);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/77851713/ef772bf0_original.jpg?im_w=720', 43);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/79535047/62ef9d08_original.jpg?im_w=720', 43);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f63e92a7-fea4-4418-beb1-bef46a108887.jpg?im_w=720', 43);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e842fd34-64da-41d8-9460-6af2ad8869a5.jpg?im_w=720', 43);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/77851662/c1f032ce_original.jpg?im_w=720', 43);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/77851675/3f687a93_original.jpg?im_w=720', 43);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/77851699/fe05c67c_original.jpg?im_w=720', 43);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/79888938/cb87ea62_original.jpg?im_w=720', 43);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/79890213/3503f9f7_original.jpg?im_w=720', 43);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/79889881/26a0e5d8_original.jpg?im_w=720', 43);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/77851693/253e1cad_original.jpg?im_w=720', 43);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/78862822/a9adaf31_original.jpg?im_w=720', 43);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/78862842/3501c493_original.jpg?im_w=720', 43);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/78862879/32627773_original.jpg?im_w=720', 43);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/78862900/4b41f47b_original.jpg?im_w=720', 43);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/77851707/3939d7fe_original.jpg?im_w=720', 43);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/77851753/01e89745_original.jpg?im_w=720', 43);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/77851711/77ccccf3_original.jpg?im_w=720', 43);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/77851745/4936901f_original.jpg?im_w=720', 43);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fa518a19-28eb-48ab-978d-979e932a882c.jpg?im_w=720', 43);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/77851741/d1153828_original.jpg?im_w=720', 43);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/78863275/b50fc636_original.jpg?im_w=720', 43);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/79898978/6dc85b3a_original.jpg?im_w=720', 43);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/79908948/7b34192a_original.jpg?im_w=720', 43);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/79908673/6707acd4_original.jpg?im_w=720', 43);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/79909192/02924cf8_original.jpg?im_w=720', 43);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/78863601/2191c878_original.jpg?im_w=720', 43);
insert into location(id, latitude, longitude, city_name)
values (44, 37.508, 126.946, '서울');
insert into review (id, star, review)
values (44, 0, 0);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (44, '깔끔하고 아기자기한 노량진 하우스/원목 푹신한 침구로 편안하게!', 'Noryangjin 1(il)-dong,
        Dongjak - gu의 아파트 전체', 85000, '집 전체', 1, 2, 1, 44, 44, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/791e41bf-1b2a-4332-b816-2a1d3f619145.jpg?im_w=720', 44);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d3ebf396-7dac-4a7c-8c0b-51d0fc70928e.jpg?im_w=720', 44);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/674692f6-2474-4f38-933c-e9373b5ba5a5.jpg?im_w=720', 44);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/440a48a9-ea59-4972-b480-c585675ff3c4.jpg?im_w=720', 44);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cb10c3a5-e45b-4e20-8b14-8a8c5bdb1ead.jpg?im_w=720', 44);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/178557bd-9035-4c2d-9903-c2d048e83021.jpg?im_w=720', 44);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a0f3718a-8057-4f3c-b718-36933e2ce0a4.jpg?im_w=720', 44);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/891060fa-06e2-4ec8-aeef-5f482ddc6ea7.jpg?im_w=720', 44);
insert into location(id, latitude, longitude, city_name)
values (45, 37.589, 126.994, '서울');
insert into review (id, star, review)
values (45, 5, 11);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (45, '🏡조용깨끗한 가정집 여성1인룸1개🏡 /주방,
        욕실 호스트와 공동사용/혜화역인근', 'Myeongnyun 3(sam)ga-dong, Jongno - gu의 개인실', 100000, '개인실', 1, 1, 1, 45, 45, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/a37fba6c-34f8-49a6-b8ab-130abd67125b.jpg?im_w=720', 45);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ba1e53cc-3c08-4572-9712-923a8598b616.jpg?im_w=720', 45);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d362bd9e-85e4-4730-be05-0ba168652cf5.jpg?im_w=720', 45);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6a49e1f1-a4b7-42dc-9580-a09fb7c4fd00.jpg?im_w=720', 45);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5726b97e-e7ba-49cd-936b-91283eff401f.jpg?im_w=720', 45);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/65735a79-79e8-4577-b753-947d53448f7b.jpg?im_w=720', 45);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6183a865-d894-4d40-a6fe-6d6008a9e91b.jpg?im_w=720', 45);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2aa45f3d-718f-4b6c-9228-68cee1e89917.jpg?im_w=720', 45);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/45aa5c57-7973-4d6f-afca-9da7bb94aaeb.jpg?im_w=720', 45);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/10ff9a0b-1d6d-4326-a486-05c9192f314f.jpg?im_w=720', 45);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7349355a-880f-4ec6-8a0f-ae59ff7d8bf0.jpg?im_w=720', 45);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7fcfae28-478a-43d2-88ce-533783ec9dc5.jpg?im_w=720', 45);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/91812f64-6504-4ff4-8a83-80c080b8c0ba.jpg?im_w=720', 45);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/66127aa8-2522-4519-a901-f90460e41df6.jpg?im_w=720', 45);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/18f53429-5353-4676-8b14-fc50cebaf010.jpg?im_w=720', 45);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/70026b38-1cc6-4f85-90ca-9b4948d55a0f.jpg?im_w=720', 45);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1cdd60dd-d22b-4720-b888-57a607222286.jpg?im_w=720', 45);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/84bbb73c-7d39-409c-a46f-69df1db01a47.jpg?im_w=720', 45);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e6e59654-8122-449b-aaca-5583d006d372.jpg?im_w=720', 45);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a6fb6d84-9cec-47f0-9b71-852ea9355cda.jpg?im_w=720', 45);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/19848454-4c71-4aaa-9916-7f23ebbf3c98.jpg?im_w=720', 45);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/620a09cc-ac44-4fad-a1b5-af9b2505a834.jpg?im_w=720', 45);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4ee53e2f-960c-4557-9091-6d986bc751fc.jpg?im_w=720', 45);
insert into location(id, latitude, longitude, city_name)
values (46, 37.578, 126.99, '서울');
insert into review (id, star, review)
values (46, 0, 1);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (46, '폴리몰리 빈백 쇼파가 있는 휴식이 필요하다면 여기로☝️NETFLEX 자체 로그인❤️', 'Waryong-dong,
        Jongno - gu의 부티크 호텔의 객실', 100000, '개인실', 1, 2, 1, 46, 46, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/ca3d3949-ce94-427d-988d-bf8ff0c73a4f.jpg?im_w=720', 46);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dd11b652-e276-4359-b67e-e5414b6d3bb8.jpg?im_w=720', 46);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7a91674f-d986-421e-85f9-7a59baddffd9.jpg?im_w=720', 46);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f6f503df-bb4d-487b-9a24-f26a01e9640a.jpg?im_w=720', 46);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/13f2ced3-af1d-4d0a-a58d-eb10e3e07c16.jpg?im_w=720', 46);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4a3ef51f-ae6f-491c-80de-1e076ad299d1.jpg?im_w=720', 46);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/850fd528-de75-4831-b631-d5c98d27b8e0.jpg?im_w=720', 46);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c17919e8-4547-4426-8157-6ea674fa95eb.jpg?im_w=720', 46);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e607ca1a-20a5-4e9f-917e-8417292a98aa.jpg?im_w=720', 46);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9385af06-a14c-4224-a9e6-f50da52cdb58.jpg?im_w=720', 46);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/891ac40a-3306-4007-b229-d5addcd5b7ae.jpg?im_w=720', 46);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c1877298-7381-412e-ba94-5f69f359bf10.jpg?im_w=720', 46);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1514b5a2-89c2-454b-af16-aa0d93469b0e.jpg?im_w=720', 46);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9186eb63-a6ba-44bb-8847-d10c8caad15f.jpg?im_w=720', 46);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0f2c057f-1005-4b7e-8da7-f72e76b58bf2.jpg?im_w=720', 46);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e643c6bd-a495-45d5-af01-d2c2996984f1.jpg?im_w=720', 46);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ee455da7-1677-41e9-bb10-ce60036d6045.jpg?im_w=720', 46);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/50b71337-0610-4388-ac72-33b74c2a0ad6.jpg?im_w=720', 46);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/52173004-03bc-4bae-98ba-cd5f354ecdd3.jpg?im_w=720', 46);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/68042163-7365-468f-af3a-45e13dbdf3e7.jpg?im_w=720', 46);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4f134df3-bfd9-48bb-a367-cc14212f7021.jpg?im_w=720', 46);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/45460785-c8a3-4d77-ac3a-5a0d4e0033b1.jpg?im_w=720', 46);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a57a432e-fd0e-4600-bb76-7c104312d833.jpg?im_w=720', 46);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/955d5074-9565-41da-8006-eaafc0333bfd.jpg?im_w=720', 46);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8683af43-7816-4418-93b0-84639c7ab0b8.jpg?im_w=720', 46);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7a3a0cc3-d1a9-4cc3-a297-aa4d299a764a.jpg?im_w=720', 46);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c0b74ebb-6b2f-45ca-ab0c-72b0b270e802.jpg?im_w=720', 46);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8e742611-1e01-44b1-ad2d-07f74c72f267.jpg?im_w=720', 46);
insert into location(id, latitude, longitude, city_name)
values (47, 37.557, 126.941, '서울');
insert into review (id, star, review)
values (47, 4.5, 17);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (47, '韩国 서울 신촌역연속극 촬영지 1인실 202首尔浪漫满屋宿舍别馆', 'Sinchon-dong,
        Seodaemun - gu의 집 전체', 100000, '집 전체', 1, 1, 1, 47, 47, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/50047b00-8d00-44d5-89c3-d2f2f122a8ee.jpg?im_w=720', 47);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f42535df-cd07-4403-9264-22907e75f240.jpg?im_w=720', 47);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0e3c96a6-f609-4b93-bafe-1b1b764be523.jpg?im_w=720', 47);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/15af3286-65ea-482c-9810-f3b10318ed96.jpg?im_w=720', 47);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/537c3860-8240-40c4-8edb-7a38ad6e7a8e.jpg?im_w=720', 47);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dab411b1-84c6-4c58-9145-f5212c536cae.jpg?im_w=720', 47);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7c49a94d-9d35-4c53-9331-f62447929527.jpg?im_w=720', 47);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2a17cb83-f536-4bec-b160-a2605f0fc2e5.jpg?im_w=720', 47);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ea8fbfa6-89c4-4747-a765-338c7724ab1a.jpg?im_w=720', 47);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0ef48f42-f30a-42e1-b26c-5f25c4575ba2.jpg?im_w=720', 47);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c7f0679c-c4a2-4a9c-a2b3-1fe9e37dbc72.jpg?im_w=720', 47);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/66062739-1ed5-4b2a-9343-3f56fa45115e.jpg?im_w=720', 47);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/afa4a45a-89bb-4ec6-8f86-80676c04c48b.jpg?im_w=720', 47);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/560462b2-afcf-454d-9fe2-7cd3413d6cac.jpg?im_w=720', 47);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4135197c-0b63-4a85-9c36-74ec1f3b54df.jpg?im_w=720', 47);
insert into location(id, latitude, longitude, city_name)
values (48, 37.576, 126.992, '서울');
insert into review (id, star, review)
values (48, 4.5, 19);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (48, '익선동의 깨끗한 신축 감성 숙소', 'Jongno 1(il).2(i).3(sam).4(sa),
        Jongno - gu의 부티크 호텔의 객실', 100000, '개인실', 1, 2, 1, 48, 48, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/c6e9fbc1-b362-4c22-bbf3-b2d1bef42444.jpg?im_w=720', 48);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/94902fc1-88ba-4701-bc96-f157e798173c.jpg?im_w=720', 48);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c845ca8e-a4ac-48f8-8946-d85b26e1e052.jpg?im_w=720', 48);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/49fafce6-3826-4b5c-a399-e0320d4c1166.jpg?im_w=720', 48);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/250b53f6-4ae7-4c53-b433-b5eab3604d39.jpg?im_w=720', 48);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2f2cf5dc-07d3-449d-ab26-cf77b335b68d.jpg?im_w=720', 48);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ee4b00dc-4550-4f9d-b56e-0474c3e7e026.jpg?im_w=720', 48);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9dfa1a1c-a5c4-4d3e-9f15-b920630f84b1.jpg?im_w=720', 48);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c2c5bf92-a860-4145-a9e9-6a74631b7f01.jpg?im_w=720', 48);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/311dfed4-2ff6-4a62-9dc5-623727ccf6b0.jpg?im_w=720', 48);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/720e12a9-4afe-4dad-aaab-052915c62e6f.jpg?im_w=720', 48);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5424b5b8-bf81-4fe8-975c-570bc8a06de1.jpg?im_w=720', 48);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1149c380-1192-4826-87e4-8cf82c7c3800.jpg?im_w=720', 48);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/65c339ae-cf12-4570-87a3-d9edd4e3df7a.jpg?im_w=720', 48);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2eccb41e-d495-4a02-ac26-21f17147c136.jpg?im_w=720', 48);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/592b702e-518e-4fc7-8b70-15cce7046dca.jpg?im_w=720', 48);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5b372d1e-91ed-48e3-99b2-7fa9f9e17b8b.jpg?im_w=720', 48);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c5e82579-627c-45e2-aa59-8c0eeebc3a15.jpg?im_w=720', 48);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/99458c7b-2ed4-44d6-a17c-718553550585.jpg?im_w=720', 48);
insert into location(id, latitude, longitude, city_name)
values (49, 37.558, 126.941, '서울');
insert into review (id, star, review)
values (49, 0, 0);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (49, 'Near airport Seoul Sinchon 413 alicehouse', 'Daehyeon-dong,
        Seodaemun - gu의 개인실', 95000, '개인실', 1, 1, 1, 49, 49, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41674735/original/6449a4de-bb31-4f66-98cc-455953a75ede.jpeg?im_w=720',
        49);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bd399dd3-be95-42f6-bd36-e386d6e16227.jpg?im_w=720', 49);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/10e57bd4-7e9d-4da3-a793-84c106bee776.jpg?im_w=720', 49);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/40f83002-5e3d-4267-a8a8-7bc682e489d8.jpg?im_w=720', 49);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6af3a648-e42f-4d8f-bbf1-27f70db76c6a.jpg?im_w=720', 49);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7c67d500-5af1-41c6-8b99-858c94b09649.jpg?im_w=720', 49);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dba81218-6391-4aa7-a24f-6f08946383eb.jpg?im_w=720', 49);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/07e30211-6956-4f51-a08b-f8f8372d254e.jpg?im_w=720', 49);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/56e5f2e7-c81b-49a7-9841-05a969776cec.jpg?im_w=720', 49);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ca5964dd-863b-43fb-89d3-fcf341d4dc95.jpg?im_w=720', 49);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8e78edd4-103c-4ed2-a0a4-8ed50796ddc5.jpg?im_w=720', 49);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/27ece589-d948-46d7-8caf-ddfe27da4e57.jpg?im_w=720', 49);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b62f1e3b-1311-437c-a070-46171de83b00.jpg?im_w=720', 49);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41674735/original/9ca6f3c8-3512-4c01-aeee-44a9c39000f0.jpeg?im_w=720',
        49);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41674735/original/2be3a968-eae7-423e-8e7a-e2c8adf31315.jpeg?im_w=720',
        49);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41674735/original/6fe88516-5910-4b09-8df5-0cccb72e1dce.jpeg?im_w=720',
        49);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41674735/original/a5955f1d-f56b-4e9e-84e2-fdd4a1616205.jpeg?im_w=720',
        49);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41674735/original/24dd0511-4c35-4110-85ab-4ea791a5d21f.jpeg?im_w=720',
        49);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41674735/original/a7f372f0-39af-415b-bebf-a11071855d74.jpeg?im_w=720',
        49);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41674735/original/302ec59b-bd70-4128-b30c-5d51441cf638.jpeg?im_w=720',
        49);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41674735/original/9f07a9fc-312f-4530-a209-0e1dab8dc8ff.jpeg?im_w=720',
        49);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41674735/original/647ed07b-9609-4ae6-9730-a93cb455b718.jpeg?im_w=720',
        49);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41674735/original/03a23871-e7d9-419b-aeb3-acf4da7ad7b4.jpeg?im_w=720',
        49);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41674735/original/a0d200ca-0f06-4f21-9709-83976154ea93.jpeg?im_w=720',
        49);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41674735/original/37382ddf-841f-4814-837a-583ea6af376d.jpeg?im_w=720',
        49);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41674735/original/fa1b3516-2fc2-449a-8f4e-c8501c64684f.jpeg?im_w=720',
        49);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41674735/original/4426f0eb-1233-4b92-82ad-c95e687425b8.jpeg?im_w=720',
        49);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41674735/original/1b50af8c-fe91-46d8-8235-c98c7903a2a2.jpeg?im_w=720',
        49);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41674735/original/f0dac2e3-d430-4ac1-aba4-9b587a9f1ca2.jpeg?im_w=720',
        49);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41674735/original/b4eb0d89-6882-4827-b90b-89afe0ff8273.jpeg?im_w=720',
        49);
insert into location(id, latitude, longitude, city_name)
values (50, 37.501, 126.952, '서울');
insert into review (id, star, review)
values (50, 5, 3);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (50, '아티스트 작업실 파티 스튜디오 숙박 Artistic place for travellers', 'Sangdo 1(il)-dong,
        Dongjak - gu의 초소형 주택', 90000, '집 전체', 1, 2, 1, 50, 50, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/fe6f3e56-b5a1-45f4-b163-2acd1ef15fa2.jpg?im_w=720', 50);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9927251b-613f-4243-962b-aaed961cf53f.jpg?im_w=720', 50);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1132f045-a34b-450e-b1ca-3c67a0df7786.jpg?im_w=720', 50);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dc18bc2d-b2a1-40b6-892c-f5cc022f841c.jpg?im_w=720', 50);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e92f2e30-bf81-47e3-8a3a-0c64efd67a3f.jpg?im_w=720', 50);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0219e14c-2785-4398-b588-ac941888d306.jpg?im_w=720', 50);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/df6554bd-a6d6-4b97-bd3e-0b7391c4c4ed.jpg?im_w=720', 50);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a5d0ce3c-8201-43b3-b85b-2008a893bc62.jpg?im_w=720', 50);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/45104600-532c-4f2a-90e1-13bbcd762e51.jpg?im_w=720', 50);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0f03ea4f-7f28-4223-8182-5b41377966c6.jpg?im_w=720', 50);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0dac6592-a41e-4882-a023-f990b39d360c.jpg?im_w=720', 50);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/23c484f9-045d-49aa-9bbd-f7eb3f85592c.jpg?im_w=720', 50);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bb75a6a3-bb98-4a14-8f81-55d5597a0153.jpg?im_w=720', 50);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/63bf1174-10e7-4917-be57-510d01eb6498.jpg?im_w=720', 50);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6a9a8fd2-fe9c-493b-b6f6-4771aee55695.jpg?im_w=720', 50);
insert into location(id, latitude, longitude, city_name)
values (51, 37.711, 126.932, '경기');
insert into review (id, star, review)
values (51, 5, 310);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (51, '일영댁 1층  서울근교에서 전원을 느낄수있는 곳  ♪♪', 'Yangju-si의 게스트용 별채 전체', 90000, '집 전체', 2, 4, 1, 51, 51, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/d583afe8-6540-4fa6-8cf2-58cd2d71bebf.jpg?im_w=720', 51);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2c9e1756-3e46-4fe7-9c97-3e8ee8e45b55.jpg?im_w=720', 51);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/82d16429-77b6-4436-bed7-6275f0116228.jpg?im_w=720', 51);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cf8cc7af-fb80-4d04-88ba-d44a7c90dab5.jpg?im_w=720', 51);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/24347da9-edac-4501-9438-45fcb43674ed.jpg?im_w=720', 51);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cca02cd3-591d-4541-83e0-e33deb84a545.jpg?im_w=720', 51);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0eb94903-9913-4e44-8afd-7290adc8bea4.jpg?im_w=720', 51);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ed166805-dc55-4eab-bae8-74bde2fb6d7b.jpg?im_w=720', 51);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/16f7d1f5-eb4e-4113-9164-2c9898645389.jpg?im_w=720', 51);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/36338047-cd1f-4d64-8186-13e562f5a92b.jpg?im_w=720', 51);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f3c5455e-ecce-4253-aaef-4fef39ea1266.jpg?im_w=720', 51);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5aaa6dfc-a876-4c48-a5d7-4ce8e769a2f9.jpg?im_w=720', 51);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8d5e69b8-749c-4c55-8bf1-6413edaf6ae5.jpg?im_w=720', 51);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/874d0d30-1cd6-447f-88e8-79a5555759cf.jpg?im_w=720', 51);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f1f0abf6-8a3d-4661-848a-ebbe2ef1ead9.jpg?im_w=720', 51);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4e371d28-960b-4068-a00a-fbc5962cdf31.jpg?im_w=720', 51);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/159759f4-1f49-4417-b24c-19738834a61c.jpg?im_w=720', 51);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/98a736e1-538b-446a-b521-b402bd5a5d59.jpg?im_w=720', 51);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7c162db2-5993-4dce-bed1-f03708cb594c.jpg?im_w=720', 51);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/39793b50-8c27-49be-9a09-ef36442e9f7e.jpg?im_w=720', 51);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/84f4c5a5-3afc-4e3f-b15e-ec0deeda7823.jpg?im_w=720', 51);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ccbae13b-6c17-4b0c-a4b5-b2c2d1b043b9.jpg?im_w=720', 51);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bf9b6961-bbb6-436b-880a-842549f39562.jpg?im_w=720', 51);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bc59c509-af6c-475d-97ce-75233220682d.jpg?im_w=720', 51);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4bb2a9ab-6c7e-463c-b411-04a5ab8f149f.jpg?im_w=720', 51);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/99936f07-7503-4143-ac22-d498122e88e0.jpg?im_w=720', 51);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/095c96cd-c4ca-4700-a41f-45f36cb20985.jpg?im_w=720', 51);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2f3aa767-f063-4d01-aa7b-7cf223134315.jpg?im_w=720', 51);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/23abf5a6-0c5a-493f-aa2e-fec1c717162b.jpg?im_w=720', 51);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/848095ab-5a9e-40ec-bc2f-bc348ccf81f1.jpg?im_w=720', 51);
insert into location(id, latitude, longitude, city_name)
values (52, 37.834, 127.594, '경기');
insert into review (id, star, review)
values (52, 5, 15);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (52, '춘천 유유자적 삼동_yuyujajeok,
        편히쉬어가는곳', 'Seo-myeon, Chuncheon - si의 집 전체', 100000, '집 전체', 1, 2, 1, 52, 52, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/a3c8be8b-764f-4ce4-9c1d-3c5191f52323.jpg?im_w=720', 52);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6c7811d0-d8d1-40fb-849f-116f5fb52e1b.jpg?im_w=720', 52);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c09ac227-30eb-4b46-8c4e-e2938e980a81.jpg?im_w=720', 52);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b1b65205-ea9f-4943-8aea-9ec4ba6782d4.jpg?im_w=720', 52);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9fdddcc3-acc4-445b-b736-6c003ce3623f.jpg?im_w=720', 52);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/14b3ed5b-b7a0-4c01-ba39-bece72f303d7.jpg?im_w=720', 52);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49336798/original/86bb9561-752a-456b-9c24-05462092f640.jpeg?im_w=720',
        52);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49336798/original/3bdd4b89-1f55-4cde-bc47-3516a15ef10e.jpeg?im_w=720',
        52);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2beaad39-0c2e-4fee-9764-0b1bb2dfb2d3.jpg?im_w=720', 52);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f1a24e56-78e9-4b91-8440-e9da81c9f3a0.jpg?im_w=720', 52);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5f9917bc-5656-4908-9870-3f18a62299d3.jpg?im_w=720', 52);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49336798/original/f4fcd93c-0991-49d6-b39a-2e54122c0818.jpeg?im_w=720',
        52);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49336798/original/ee2818cf-05df-42cd-820c-8c8c43dea1aa.jpeg?im_w=720',
        52);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3784e8bf-c815-497c-a3ca-f5e6269f9d20.jpg?im_w=720', 52);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d6a0b210-2e22-4a03-9b33-0b4376305562.jpg?im_w=720', 52);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fbbab78f-d066-4f3e-bf74-3763ca09ba13.jpg?im_w=720', 52);
insert into location(id, latitude, longitude, city_name)
values (53, 37.526, 127.458, '경기');
insert into review (id, star, review)
values (53, 5, 30);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (53, '소곤소곤', 'Okcheon-myeon,
        Yangpyeong의 게스트 스위트 전체', 95000, '집 전체', 1, 3, 1, 53, 53, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47279544/original/b7fb2e99-9cbf-4162-b7c7-ec135cd5c6d0.jpeg?im_w=720',
        53);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47279544/original/bd655995-86d4-4153-948c-b9eac4e678bc.jpeg?im_w=720',
        53);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47279544/original/30025df2-f98e-41f7-8e38-6860d20b1d19.jpeg?im_w=720',
        53);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/945bbf42-46bb-45db-9d01-14681ed67d8f.jpg?im_w=720', 53);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ca376048-f034-4d88-a49d-061c951a4d2e.jpg?im_w=720', 53);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4714cd6d-5df9-4010-84ac-3498305d1469.jpg?im_w=720', 53);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/29ae7fc8-32b0-4d8f-8215-2e81856a0310.jpg?im_w=720', 53);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/64f8e874-7f46-4a04-90ee-d2d798570ed7.jpg?im_w=720', 53);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/27103a65-1bda-49cc-bb04-0dcac53e8aa4.jpg?im_w=720', 53);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ace7634d-b1ff-4732-8576-8564a3d64f9f.jpg?im_w=720', 53);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e1f6ed68-04f7-4800-b653-082f831b33ee.jpg?im_w=720', 53);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/25a2786b-d378-41a2-8ed4-d5bca0e99db6.jpg?im_w=720', 53);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9dd45a1e-6d25-4218-8101-c48889dc2e7e.jpg?im_w=720', 53);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/909f8061-1c62-4f73-ab70-ee9f96e52403.jpg?im_w=720', 53);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/98388467-7e0a-4a28-93ba-0cd0d7af76e1.jpg?im_w=720', 53);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ae57dfd8-a6c2-4d8f-9a08-a88bf636faf0.jpg?im_w=720', 53);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47279544/original/c1862698-d467-49fb-be02-d0d49f8c654c.png?im_w=720',
        53);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d60636a2-21a7-48ad-b6b0-7d9ce9cf06a9.jpg?im_w=720', 53);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/69094d29-9441-46d0-9839-aaf5d64bd115.jpg?im_w=720', 53);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/94aa9440-c898-41de-9eca-a6d77cdd52b9.jpg?im_w=720', 53);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47279544/original/77a222fe-ad5a-4dc7-a0dd-5973309ccf6b.jpeg?im_w=720',
        53);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8c1693ad-17f4-4e50-8f2a-4e2127b7f8df.jpg?im_w=720', 53);
insert into location(id, latitude, longitude, city_name)
values (54, 37.834, 127.594, '경기');
insert into review (id, star, review)
values (54, 5, 9);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (54, '춘천 유유자적 일동_yuyujajeok,
        편히쉬어가는곳', 'Seo-myeon, Chuncheon - si의 집 전체', 100000, '집 전체', 1, 4, 1, 54, 54, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/2840943e-c8bd-4a56-ab32-05ffd425fa6d.jpg?im_w=720', 54);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2f0d1708-3394-4cd7-abed-25d221dea411.jpg?im_w=720', 54);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ce5bfc2b-323c-42bb-8abc-1ab8d9d254e8.jpg?im_w=720', 54);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/001c54c6-3453-4d77-8110-985e5e7e909c.jpg?im_w=720', 54);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/70133f03-a459-45fb-9ce3-34d47f8aeb40.jpg?im_w=720', 54);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c6d1d8aa-0084-4e84-8eb1-7d29a76e151a.jpg?im_w=720', 54);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0213bbb4-936f-453a-95e2-62a15ec2bc8a.jpg?im_w=720', 54);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8a2cef16-5e8c-4c67-b377-f98b063d45d2.jpg?im_w=720', 54);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f77aaef3-7be7-423c-80ff-be7421c12662.jpg?im_w=720', 54);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fab8e698-f96e-4fc3-be40-1c8398f72275.jpg?im_w=720', 54);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7ccc3ecc-4884-4911-8bf8-9193c403ee7f.jpg?im_w=720', 54);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/79ad82bf-e7d4-43e2-acbd-dfeccfca907e.jpg?im_w=720', 54);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3b68af76-12d0-411e-8536-8722be7a5246.jpg?im_w=720', 54);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c8f8de05-f241-4c74-b422-dc5ff2c7c8aa.jpg?im_w=720', 54);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9d151edd-21ea-4075-b56c-7712d871f218.jpg?im_w=720', 54);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/79e522eb-acb7-417e-ba16-e300f1b74873.jpg?im_w=720', 54);
insert into location(id, latitude, longitude, city_name)
values (55, 37.638, 127.397, '경기');
insert into review (id, star, review)
values (55, 5, 45);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (55, '고즈넉한 한옥스테이 "희담재 (喜湛齋)"  조용하고 평안한 분위기로 행복과 힐링이 되는 집', 'Seojong-myeon,
        Yangpyeong의 집 전체', 100000, '집 전체', 2, 6, 3, 55, 55, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/4faf53de-3b74-443c-8f50-30da1b4cc8ba.jpg?im_w=720', 55);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5e98b611-eecb-4fc2-9236-ab1187ef5f41.jpg?im_w=720', 55);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/44942089-c703-46d1-94a1-22c010addd3f.jpg?im_w=720', 55);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/250c4c33-495c-46a5-a6e2-711b5d208704.jpg?im_w=720', 55);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3ee45b8e-f53c-4076-99b2-596109c2e790.jpg?im_w=720', 55);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/406b2865-6189-47f8-ba1f-1fc90b8fd2c8.jpg?im_w=720', 55);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/61babd7e-c604-4374-86c9-287992244d06.jpg?im_w=720', 55);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0a3e731f-21c9-4f9d-9b8f-d31ad76de48c.jpg?im_w=720', 55);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3b08479d-9dae-42d5-b83a-623c4c7796b3.jpg?im_w=720', 55);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4ba8443f-2d2f-4425-bbba-368b706f8215.jpg?im_w=720', 55);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0be2e310-e200-479e-9d11-94c1d48e5e65.jpg?im_w=720', 55);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6739abbb-2ae6-427f-b327-d53ddf093629.jpg?im_w=720', 55);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/92d95b36-1222-46e3-ae6d-3db4b21e2895.jpg?im_w=720', 55);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/52fab22c-13d8-4c49-81d8-f07d12beb89d.jpg?im_w=720', 55);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/10b409c3-423b-4920-b672-c91f27b87889.jpg?im_w=720', 55);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c8f6671e-446b-4079-9ace-1157f6c90840.jpg?im_w=720', 55);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/14fdc8f1-ad90-4faa-b714-e6e1ea664381.jpg?im_w=720', 55);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b017812d-ff1a-4f06-95e7-1807169c7b70.jpg?im_w=720', 55);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9bc62db0-1bfc-4574-879a-f4e697979990.jpg?im_w=720', 55);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/62333eae-54f4-40ea-a502-fe1bbfa8fa9e.jpg?im_w=720', 55);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7c53dfd7-2825-4976-9e81-ef850913fa77.jpg?im_w=720', 55);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2d7e573f-e136-4743-872a-2bf420563a34.jpg?im_w=720', 55);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2515c235-5bf9-4d8a-95c6-4de3b522eec4.jpg?im_w=720', 55);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/76fb866b-83e6-4964-8c61-c6eb5062b707.jpg?im_w=720', 55);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9491cc8d-2164-413d-85f4-538c1b347ac5.jpg?im_w=720', 55);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0a1f109a-0df6-4522-b4a9-7578a2f79e9f.jpg?im_w=720', 55);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d9a373be-a8f2-4cf4-b506-6d740941ff8d.jpg?im_w=720', 55);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d3e783fa-786e-44ab-a0a9-538384d823ab.jpg?im_w=720', 55);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e51c98f4-fb89-4eb9-94ac-c4e4dd7424d7.jpg?im_w=720', 55);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a20e7e90-dd9f-457f-92e6-68c62673c000.jpg?im_w=720', 55);
insert into location(id, latitude, longitude, city_name)
values (56, 37.54, 126.946, '경기');
insert into review (id, star, review)
values (56, 5, 244);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (56, 'Micasa@Seoul: Home away from home', 'Mapo의 아파트 전체', 95000, '집 전체', 3, 4, 1, 56, 56, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/78858561/7e858201_original.jpg?im_w=720', 56);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/eb40b64f-dad0-4094-ac15-b81cef1939db.jpg?im_w=720', 56);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/79887980/1e6ee76f_original.jpg?im_w=720', 56);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/77851713/ef772bf0_original.jpg?im_w=720', 56);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/79535047/62ef9d08_original.jpg?im_w=720', 56);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f63e92a7-fea4-4418-beb1-bef46a108887.jpg?im_w=720', 56);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e842fd34-64da-41d8-9460-6af2ad8869a5.jpg?im_w=720', 56);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/77851662/c1f032ce_original.jpg?im_w=720', 56);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/77851675/3f687a93_original.jpg?im_w=720', 56);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/77851699/fe05c67c_original.jpg?im_w=720', 56);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/79888938/cb87ea62_original.jpg?im_w=720', 56);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/79890213/3503f9f7_original.jpg?im_w=720', 56);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/79889881/26a0e5d8_original.jpg?im_w=720', 56);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/77851693/253e1cad_original.jpg?im_w=720', 56);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/78862822/a9adaf31_original.jpg?im_w=720', 56);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/78862842/3501c493_original.jpg?im_w=720', 56);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/78862879/32627773_original.jpg?im_w=720', 56);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/78862900/4b41f47b_original.jpg?im_w=720', 56);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/77851707/3939d7fe_original.jpg?im_w=720', 56);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/77851753/01e89745_original.jpg?im_w=720', 56);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/77851711/77ccccf3_original.jpg?im_w=720', 56);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/77851745/4936901f_original.jpg?im_w=720', 56);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fa518a19-28eb-48ab-978d-979e932a882c.jpg?im_w=720', 56);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/77851741/d1153828_original.jpg?im_w=720', 56);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/78863275/b50fc636_original.jpg?im_w=720', 56);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/79898978/6dc85b3a_original.jpg?im_w=720', 56);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/79908948/7b34192a_original.jpg?im_w=720', 56);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/79908673/6707acd4_original.jpg?im_w=720', 56);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/79909192/02924cf8_original.jpg?im_w=720', 56);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/78863601/2191c878_original.jpg?im_w=720', 56);
insert into location(id, latitude, longitude, city_name)
values (57, 37.781, 126.71, '경기');
insert into review (id, star, review)
values (57, 5, 221);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (57, '단독 테라스가 있는 스테이소프트(stay.soft) 입니다.', 'Tanhyeon-myeon,
        Paju - si의 집 전체', 95000, '집 전체', 1, 2, 1, 57, 57, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/d1b282f3-597f-4d25-a36a-d8696ef0e722.jpg?im_w=720', 57);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3025f84e-3c08-4eab-8a1b-da2739d1d16c.jpg?im_w=720', 57);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cf14c0d0-127a-4992-8b0d-1bbcb3d80283.jpg?im_w=720', 57);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bbe68762-3fe1-4f0a-81f3-e9654905c221.jpg?im_w=720', 57);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cc29ff42-bcb5-48cd-8e56-5e22fba3df3e.jpg?im_w=720', 57);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/022a88c7-cbc2-413c-9e53-9338a4ccf7a2.jpg?im_w=720', 57);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b7a53c24-3c1b-484d-8c15-03ffff214990.jpg?im_w=720', 57);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/35f56047-4348-474d-bc52-35e3669f2e59.jpg?im_w=720', 57);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a501fc87-cc14-43ab-8344-a812526c34ca.jpg?im_w=720', 57);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bb57f90a-4beb-4117-bb80-be0428ccac94.jpg?im_w=720', 57);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/091e58df-7cc9-4f8d-a7ec-7957b5557278.jpg?im_w=720', 57);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/eebc77a7-4020-4007-b0a5-ecefc458e509.jpg?im_w=720', 57);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7347f133-3cfd-415d-8ff6-ad899231c05e.jpg?im_w=720', 57);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7cd49812-b1ce-40d3-9349-859f3db288e2.jpg?im_w=720', 57);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2d81154e-8fb7-4c4f-ad43-9fcc4ed09d6a.jpg?im_w=720', 57);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dbb9e095-18c5-40b5-a4d3-4f889b54647c.jpg?im_w=720', 57);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ff043720-0b87-497f-9dcb-844d6c3924fb.jpg?im_w=720', 57);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0dd2d916-528a-4406-94c4-c08e7ecd84f5.jpg?im_w=720', 57);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0b4686ff-008f-4ab4-8d5f-907979f30283.jpg?im_w=720', 57);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b71163c2-3beb-4bb4-b5cc-e68fb8b4da28.jpg?im_w=720', 57);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/131ec74c-7220-4e12-ae6e-f3df8e3769d6.jpg?im_w=720', 57);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/273a04fe-1653-4fd9-b343-933e3bea6c38.jpg?im_w=720', 57);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ffd35abf-d933-4d61-b894-c8a80e06ee7e.jpg?im_w=720', 57);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/94b6b6e3-53a0-4c88-9128-1688dca7b211.jpg?im_w=720', 57);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f9485b21-8dfb-40b5-8d86-be09bc1cb222.jpg?im_w=720', 57);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bd0269fb-c10a-4945-a57f-b1479720da6b.jpg?im_w=720', 57);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/98e357b2-303a-469c-ba1f-73c1d476b8e9.jpg?im_w=720', 57);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1d620347-4c39-4ae3-a4de-c3158d5d961e.jpg?im_w=720', 57);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8d993371-c36e-4cc2-a6db-e87c9915370b.jpg?im_w=720', 57);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6923dca6-1249-4c8f-bd11-e9019b18430f.jpg?im_w=720', 57);
insert into location(id, latitude, longitude, city_name)
values (58, 37.579, 127.682, '경기');
insert into review (id, star, review)
values (58, 5, 8);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (58, 'A. 아름다운 자연경관과 야외자쿠지가 잘 어우러진 객실 홍천 대명비발디파크 15분거리', 'Danwol-myeon,
        Yangpyeong의 펜션', 100000, '집 전체', 0, 3, 1, 58, 58, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/7fa5f743-51db-4306-a81d-d2c15f6ce726.jpg?im_w=720', 58);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/76a16ff2-2e70-4967-9f50-586a615be366.jpg?im_w=720', 58);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e3050844-3340-42ce-a3ab-ec56dd1d220e.jpg?im_w=720', 58);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/14ed4f6e-f1aa-4e70-be1c-0932648cd474.jpg?im_w=720', 58);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ef44d3b0-4522-4685-9721-ac530ae589d3.jpg?im_w=720', 58);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/38d79daa-b78c-4055-aabe-aab007557ae0.jpg?im_w=720', 58);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a1fb222b-1c19-48e4-933d-acbd3dc9a993.jpg?im_w=720', 58);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1d35debf-0a89-44ec-bf38-c8b0630fa2e7.jpg?im_w=720', 58);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/43585556-c877-41c9-8f17-b845ca9206d4.jpg?im_w=720', 58);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/edf4839a-18c1-4d60-94da-dc70f8a31c94.jpg?im_w=720', 58);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fac6334a-3a06-4d4e-b755-0f553b29f868.jpg?im_w=720', 58);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d96dd2b6-5193-4feb-aaf6-81b91eacdbf0.jpg?im_w=720', 58);
insert into location(id, latitude, longitude, city_name)
values (59, 37.885, 127.755, '경기');
insert into review (id, star, review)
values (59, 5, 17);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (59, '벨라루나W♡   도심속 휴양지 ♡ 노천스파 즐기러 오세요♡', 'Hupyeong-dong,
        Chuncheon의 집 전체', 90000, '집 전체', 1, 2, 1, 59, 59, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/b2e3b21c-68c5-4fab-a546-b9f776103e58.jpg?im_w=720', 59);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a629a164-0026-409c-8ce7-72fb85fc78c9.jpg?im_w=720', 59);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3758073d-cfe4-4ff1-aad5-c0a506dc540a.jpg?im_w=720', 59);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e13bb492-eb4c-4f7b-be92-135621696eb9.jpg?im_w=720', 59);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e101d197-17cb-4cae-81ed-a128b8442d7c.jpg?im_w=720', 59);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e3e36132-4b76-4711-82a1-130ae3013822.jpg?im_w=720', 59);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d2acf5c8-42b2-427d-b14c-e3bc8d809bfd.jpg?im_w=720', 59);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/36b9426b-fe17-4077-b539-b1ca2b12d9b7.jpg?im_w=720', 59);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6f206001-e944-4c51-a608-20e589b0358b.jpg?im_w=720', 59);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2c4973e3-47f8-403d-a0a4-9378becef561.jpg?im_w=720', 59);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/66ffc28f-3739-4931-9cc0-e85a17ff4af1.jpg?im_w=720', 59);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/837fa64f-9dbe-4bfa-a31e-4b9ffe07d8f9.jpg?im_w=720', 59);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ec995ad9-73c7-4550-ba96-4a11a7f2f7e3.jpg?im_w=720', 59);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/33f7ebf1-6b79-49e4-b31a-d47717a1ee04.jpg?im_w=720', 59);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0dc4df97-4d1f-4e37-a9f8-a1e28d26baf6.jpg?im_w=720', 59);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ef75ea3e-0c4a-4fdc-acd9-20498f378c99.jpg?im_w=720', 59);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c3433fae-a140-44f1-bd60-e66e80a9d697.jpg?im_w=720', 59);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/48aa5007-ca48-476d-9a1e-5f6823386db2.jpg?im_w=720', 59);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f9b12367-8e80-40f1-9dc5-e43b484286c5.jpg?im_w=720', 59);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a713ecba-7143-4d0c-805a-b99efb96ea2e.jpg?im_w=720', 59);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/837fa04a-7e7e-403b-8c4e-cc3028b34f4c.jpg?im_w=720', 59);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1a3d238c-baca-4eca-a991-0a79092ae153.jpg?im_w=720', 59);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4765b515-e177-4af0-a621-0862e2ad59ca.jpg?im_w=720', 59);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d36ee4d0-9ea7-4361-8a1c-20f0c4ebc88e.jpg?im_w=720', 59);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/61ba3b23-7319-4153-b50a-3e7bd75b7b07.jpg?im_w=720', 59);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f2199284-89d3-4efc-a2ba-d64c725bb100.jpg?im_w=720', 59);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6c0f6a2f-babb-4a35-9de7-502ee9105846.jpg?im_w=720', 59);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bc6bcd3d-66d7-45fd-b9e3-94e29303c388.jpg?im_w=720', 59);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c816e305-ae44-4b79-98ee-b4c2513412d3.jpg?im_w=720', 59);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/839f346b-6e0f-42e9-96bd-b5cb1c8a3d4a.jpg?im_w=720', 59);
insert into location(id, latitude, longitude, city_name)
values (60, 37.686, 127.237, '경기');
insert into review (id, star, review)
values (60, 5, 97);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (60, '그랜마 하우스#2', 'Onam-eup,
        Namyangju - si의 통나무집 전체', 97000, '집 전체', 1, 4, 1, 60, 60, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/cd63d697-b3ae-4b09-a282-499a47e50f7b.jpg?im_w=720', 60);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6c9f10b5-f275-4f9a-a680-c8b6270163c9.jpg?im_w=720', 60);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cbe42184-dd7a-484a-b04e-ddd4ba379b28.jpg?im_w=720', 60);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6cb1e926-9565-45e9-81b7-5b3603725372.jpg?im_w=720', 60);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/18aa35f6-8c62-49c3-9a19-5a096d5b8405.jpg?im_w=720', 60);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4066ed82-5ce2-449d-94b3-8edc6c208463.jpg?im_w=720', 60);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a9f167c8-6d5b-4300-b542-b917adab9d41.jpg?im_w=720', 60);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/decc44dc-6a64-4c84-a58d-2eecb3dcdbe3.jpg?im_w=720', 60);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/59606335-c36d-4f0b-8a6f-a767d943eb38.jpg?im_w=720', 60);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ad83912b-78ed-4f3c-8887-ec78c1c7df43.jpg?im_w=720', 60);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/30da6f39-704a-4c78-a4a2-ace698a279ca.jpg?im_w=720', 60);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8b6d04ae-7e36-48cd-9e3c-8a919b88f28f.jpg?im_w=720', 60);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ff6315f8-8669-49e4-a11b-7c6b70a4503c.jpg?im_w=720', 60);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bd25513d-2458-450d-a646-0186e332a812.jpg?im_w=720', 60);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ca28cd22-740d-45c7-b85e-9a060fd831e1.jpg?im_w=720', 60);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/655e905d-6a44-4f5d-919e-bd8394658570.jpg?im_w=720', 60);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0c556be4-ad6c-4d7a-8ee4-1efcdd0338bb.jpg?im_w=720', 60);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9b1ec072-21ec-47e5-bad9-efb899dcbf36.jpg?im_w=720', 60);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/843f8161-92b4-436c-9202-9517ae268081.jpg?im_w=720', 60);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/25a9b0c7-d970-4c72-a486-8b7970f2ca23.jpg?im_w=720', 60);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d0c1af4e-a4f1-4f9b-83e6-0c7a95b31fec.jpg?im_w=720', 60);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d7c30cfd-e62e-486b-9ee4-045d3a9a4730.jpg?im_w=720', 60);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cededac0-bf70-4308-a532-ff2a08201a06.jpg?im_w=720', 60);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/85e22e3b-ac9b-43b8-9074-53e458b8b83a.jpg?im_w=720', 60);
insert into location(id, latitude, longitude, city_name)
values (61, 37.481, 127.473, '경기');
insert into review (id, star, review)
values (61, 5, 26);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (61, '전망좋은 단지내 게스트하우스,
        양평시내와 가까운 강상면 숙소 ‘휴가’', 'Gangsang-myeon, Yangpyeong - gun의 전원주택 전체', 90000, '집 전체', 2, 2, 1, 61, 61, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/57e41b94-36b9-4a59-b665-6121fb415d7a.jpg?im_w=720', 61);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8d653c86-fb0e-43dd-95e8-be1a71e7cfa5.jpg?im_w=720', 61);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bbed66b0-d3e5-4007-b467-21fbfc8cfa0f.jpg?im_w=720', 61);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3e92bb7a-232a-4d0d-b1e8-75335257186d.jpg?im_w=720', 61);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-45557437/original/76a3800d-2601-4ae3-8f71-3d6e7960d80a.jpeg?im_w=720',
        61);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-45557437/original/26d7930b-f6d9-4104-bfb2-7291d8d3cd65.jpeg?im_w=720',
        61);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-45557437/original/165f984a-513b-4707-be1d-c7a7dff7ba5a.jpeg?im_w=720',
        61);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-45557437/original/c4253a2e-b855-41c9-81ca-141a288b5f60.jpeg?im_w=720',
        61);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-45557437/original/0066ed9f-a025-4394-9ca1-7d38652cabae.jpeg?im_w=720',
        61);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-45557437/original/1742d2a5-f812-487c-88a9-b186545de57c.jpeg?im_w=720',
        61);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-45557437/original/83a28c95-6932-4b15-9898-31cdd7ee5c73.jpeg?im_w=720',
        61);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-45557437/original/df9ad5d6-d3e2-497f-95c1-09a285c96d44.jpeg?im_w=720',
        61);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-45557437/original/f47ee84f-82ff-4599-8e9e-efe8eed36d0c.jpeg?im_w=720',
        61);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/807a138c-b020-4cce-a753-b858f297de19.jpg?im_w=720', 61);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f6ca50da-9073-4e1a-87bb-56f675dad8fb.jpg?im_w=720', 61);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3ab13007-ad5c-4fd0-a843-628c3c6f0f00.jpg?im_w=720', 61);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/eb8ca70f-f533-4358-851a-4e8cca0718a4.jpg?im_w=720', 61);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1d6e3603-5a0f-474d-af03-4e1625cf061e.jpg?im_w=720', 61);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/29982584-2626-4144-af90-0988b51dda49.jpg?im_w=720', 61);
insert into location(id, latitude, longitude, city_name)
values (62, 37.743, 127.307, '경기');
insert into review (id, star, review)
values (62, 5, 122);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (62, '자연과 함께,
        가족과 함께, 채이네로 오세요', 'Sudong-myeon, Namyangju - si의 전원주택 전체', 85000, '집 전체', 1, 7, 2, 62, 62, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/1722768f-59ff-45a1-a1f6-c7bb19e0562b.jpg?im_w=720', 62);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/99a8bad3-2509-4723-8a39-aaa15936e888.jpg?im_w=720', 62);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b6db1ad8-0fed-47f8-ae4e-f7ff2a6c57a6.jpg?im_w=720', 62);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2880946f-d497-4692-a485-c54f99e7b61f.jpg?im_w=720', 62);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e9bdc3a6-8305-4719-bd1c-30d1984a7d26.jpg?im_w=720', 62);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e9e304c6-c95b-46d1-87a5-c8a28066314d.jpg?im_w=720', 62);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/33357308-3507-49e5-aaaf-0b5b9fe234fc.jpg?im_w=720', 62);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8a3bc3fd-efbf-4c6f-a08d-0110ac672d39.jpg?im_w=720', 62);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/87ef06f4-6a78-43f1-b03c-0734de4e3a36.jpg?im_w=720', 62);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3de2cfe4-475f-40d7-8f58-702db2abbbf5.jpg?im_w=720', 62);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2021f072-0d3d-4588-9f12-1d87523168e9.jpg?im_w=720', 62);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/82461627-1135-49d0-aff0-26151f177c29.jpg?im_w=720', 62);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fd105324-e50d-49d4-ada2-a04b54f818ee.jpg?im_w=720', 62);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/112daabd-3507-4095-b662-4c87990ad0ed.jpg?im_w=720', 62);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8171bcf4-2796-4be1-bbe6-cc7de103e7c3.jpg?im_w=720', 62);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/47310f91-100d-4d7a-a48e-2e3816d73002.jpg?im_w=720', 62);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ee7f3c40-390a-42f3-825b-7be454e7ba57.jpg?im_w=720', 62);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0cee6b9a-f85d-43c0-8175-14b0b6a4d86d.jpg?im_w=720', 62);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/56a019ab-7387-4cca-beab-8247f705ebf5.jpg?im_w=720', 62);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6b590acd-2617-4959-96c6-7fb3c709f7d8.jpg?im_w=720', 62);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a0b69d06-005f-4547-90d4-f3eeabfb4ae1.jpg?im_w=720', 62);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ca86bf35-93cc-47b3-8345-209334bbf731.jpg?im_w=720', 62);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d120391d-0aeb-4720-acd5-5a35e6907e25.jpg?im_w=720', 62);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a42a5d6e-40c8-4b77-8303-2e65263d1cc7.jpg?im_w=720', 62);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/312d8ea5-c0c6-4190-b7e8-6fc9ffc19467.jpg?im_w=720', 62);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c9557ca3-df6d-4125-8098-b26ea14c34d3.jpg?im_w=720', 62);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0faa6b46-69ee-4784-8c60-3d4de07ff220.jpg?im_w=720', 62);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9e06864d-e5f3-4e58-b2df-ce48b0307644.jpg?im_w=720', 62);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5d269e8a-eddd-4069-a987-d502ebcb387a.jpg?im_w=720', 62);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/087f711c-ae64-43aa-86d8-f6c46003ecfa.jpg?im_w=720', 62);
insert into location(id, latitude, longitude, city_name)
values (63, 37.597, 127.331, '경기');
insert into review (id, star, review)
values (63, 5, 130);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (63, '느리고 가벼운 스테이,
        소형 독채 오동재', 'Namyangju-si, Gyeonggi - do의 전원주택 전체', 100000, '집 전체', 1, 3, 1, 63, 63, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/faf5aa3c-4659-4117-a3c3-997277ca0bb2.jpg?im_w=720', 63);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7e525895-b8a3-4023-abcb-0d0b9d2b531a.jpg?im_w=720', 63);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5d381444-8d35-41c7-a5d4-bd0deeec081a.jpg?im_w=720', 63);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d363359e-1547-4c6f-9630-79688c137dd3.jpg?im_w=720', 63);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/06b83a2c-625c-4387-ae93-e72d92cc9e6f.jpg?im_w=720', 63);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f4239463-be87-4835-90d7-2968ca49f143.jpg?im_w=720', 63);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cabe775b-be0f-45d6-ab5b-77350b52c96c.jpg?im_w=720', 63);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/207985fd-f736-474d-87a3-fc163e2437a5.jpg?im_w=720', 63);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/915c5697-6f6c-4efd-a673-b44324b6dd4f.jpg?im_w=720', 63);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/96a90c54-4fc2-4a38-859f-7c369bc32807.jpg?im_w=720', 63);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/19a1535b-42b0-4150-863b-3b46d776eafb.jpg?im_w=720', 63);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7e09cec3-387a-49c2-8e37-7c54431f9e54.jpg?im_w=720', 63);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a7300b63-4e3f-4d87-a1db-33fda0a0243a.jpg?im_w=720', 63);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c579fda6-13d2-492b-a723-09fee9275f3f.jpg?im_w=720', 63);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/892e2781-8c52-4a83-8a74-e5aae8fd0552.jpg?im_w=720', 63);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f02985c4-6bd9-4c7b-a8d1-d5e47e23e593.jpg?im_w=720', 63);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bf8506ca-9b51-4016-86ec-ad0622e02cff.jpg?im_w=720', 63);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ba566f4d-dacb-4cf0-9c85-721be2d969db.jpg?im_w=720', 63);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/89196b34-15c6-4dc2-92a8-607f495615cc.jpg?im_w=720', 63);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5758f315-7fb0-4308-9719-64481dbe732a.jpg?im_w=720', 63);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/282727c8-656c-47f8-bd09-a525f9761bc1.jpg?im_w=720', 63);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/98e921e4-3fdf-4204-9560-40e5cd678991.jpg?im_w=720', 63);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/67de2d46-b8ab-4f17-8c87-90b049f21136.jpg?im_w=720', 63);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b4b891c4-06fc-450c-bb53-1ac68bf94da4.jpg?im_w=720', 63);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/505ea94e-b6d5-477a-b70d-7045629b5c16.jpg?im_w=720', 63);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/de2c73e9-16b7-410d-9c07-8f43490b3d52.jpg?im_w=720', 63);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5b3269ad-a327-45de-b914-9c2c337a0740.jpg?im_w=720', 63);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2e0aa4af-1018-464b-b6d3-03f3a0d2182a.jpg?im_w=720', 63);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4f93681b-2b3b-4755-9f8a-7e9ee1bc4332.jpg?im_w=720', 63);
insert into location(id, latitude, longitude, city_name)
values (64, 37.836, 127.368, '경기');
insert into review (id, star, review)
values (64, 5, 267);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (64, '조용한 마을 속 아늑한 한옥 독채(모원당)', 'Ha-myeon,
        Gapyeong - gun의 집 전체', 80000, '집 전체', 1, 4, 1, 64, 64, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/c23aa486-829a-4388-8272-00bdbb5fa6f6.jpg?im_w=720', 64);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/087f177d-082c-4161-999e-cfe709bdec9d.jpg?im_w=720', 64);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/00f1238b-de39-49c5-ab37-b26ae3ef879a.jpg?im_w=720', 64);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/86ac514a-e86d-4233-a9b1-5a4358ac2dd4.jpg?im_w=720', 64);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/91aa1bf9-0ecf-4a39-8326-00511237e88d.jpg?im_w=720', 64);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/697a421e-ce74-4689-aa85-1d40b1b57459.jpg?im_w=720', 64);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/891afb79-432e-49ba-b2e4-97d412e1e7f1.jpg?im_w=720', 64);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8137c246-acbd-48d7-b94d-f6b0f37a906c.jpg?im_w=720', 64);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/781b803d-2276-4d87-8966-c33c78e430a3.jpg?im_w=720', 64);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6a55d9e7-573f-452a-b499-4aba32a2d13e.jpg?im_w=720', 64);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/89fdb9dc-b102-4890-86bb-be38cb8204fe.jpg?im_w=720', 64);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0a32c493-b889-488a-8eab-9830d3f042eb.jpg?im_w=720', 64);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4f5bdc44-0233-4316-abfb-b0e872df59cb.jpg?im_w=720', 64);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/651104df-65f5-4909-a6de-4565b64bdce6.jpg?im_w=720', 64);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/925375b7-76dc-43a5-882a-cf35358bb847.jpg?im_w=720', 64);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dfcd19a4-5746-4fdb-ab8b-072a8d92818e.jpg?im_w=720', 64);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c35b4f16-6c03-4f23-9f49-e858821ddd19.jpg?im_w=720', 64);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/73d614fd-b09c-41ee-ab07-c12eadce78ab.jpg?im_w=720', 64);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/118e4e38-a686-4620-abf3-fd5040e0d7dc.jpg?im_w=720', 64);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c6ff5164-87d7-4703-a1b4-56737abe6632.jpg?im_w=720', 64);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/04a1e590-2d31-481d-b119-bb83d145c8a3.jpg?im_w=720', 64);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/599ee2da-3e5b-425e-9ca0-98888b95d0ae.jpg?im_w=720', 64);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e233626b-3d56-4056-84b8-5ab554ec69a5.jpg?im_w=720', 64);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1b8727e6-d4b6-4d9f-8ff8-7b82bc2700de.jpg?im_w=720', 64);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6c9fd132-58ab-41a9-b818-84d40c95d92f.jpg?im_w=720', 64);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1dd15b8c-dc73-4595-bfd4-eb02ec2d4bbc.jpg?im_w=720', 64);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/32ab4d03-8543-4c30-96e1-d97b2d89a8d1.jpg?im_w=720', 64);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d78c5109-9493-4502-afba-553d20905b4e.jpg?im_w=720', 64);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7c07b545-40b2-4cd5-a49c-7b2d116d8bfe.jpg?im_w=720', 64);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a1cf171a-5abf-4846-b133-7697d550fbca.jpg?im_w=720', 64);
insert into location(id, latitude, longitude, city_name)
values (65, 37.776, 126.794, '경기');
insert into review (id, star, review)
values (65, 5, 12);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (65, '사인웨이브 _별채예약', 'Wollong-myeon,
        Paju - si의 게스트용 별채 전체', 100000, '집 전체', 1, 2, 1, 65, 65, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47417062/original/645acd11-bd59-48bd-8875-9a39bd417a2f.jpeg?im_w=720',
        65);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/74ee1529-c816-4f73-876b-b383774e0cb3.jpg?im_w=720', 65);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0125929a-a0b1-405b-9eec-7904318d59fc.jpg?im_w=720', 65);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47417062/original/38530e40-da62-4da6-b66a-227c1ad04109.jpeg?im_w=720',
        65);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2cae97ee-763b-43cc-bba8-ca955def0fb4.jpg?im_w=720', 65);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47417062/original/20d69103-b49e-4c40-b65b-fd169df36fd2.jpeg?im_w=720',
        65);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/113105c2-7cf7-4996-b08f-9d55901bd87a.jpg?im_w=720', 65);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/15c3168e-013a-4a7e-adb8-d17c5a004833.jpg?im_w=720', 65);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2e9b449c-150a-4e9c-8f0f-7c4dec55e076.jpg?im_w=720', 65);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/79d030d4-9665-45e6-b2af-74200bbb48c1.jpg?im_w=720', 65);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47417062/original/dd9577bf-755d-4798-b47d-ca87bf028994.jpeg?im_w=720',
        65);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d57f4d09-7c0e-41f9-ba18-950a2d3dd86b.jpg?im_w=720', 65);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47417062/original/ec167770-b056-44f8-a1a3-702691eb6cea.jpeg?im_w=720',
        65);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47417062/original/eeeaeb00-621a-4a7f-b738-7fbc046602ab.jpeg?im_w=720',
        65);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47417062/original/928b9566-eaf0-4777-b259-c636443f5e86.jpeg?im_w=720',
        65);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47417062/original/64bf6acc-a257-4598-920b-818857f31f78.jpeg?im_w=720',
        65);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3eea5c07-0de0-4081-9e92-266e15b52422.jpg?im_w=720', 65);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47417062/original/bdd441a7-5830-49da-a77d-2626fff93562.jpeg?im_w=720',
        65);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f50ed409-bdec-434e-9da0-1e165c94e7da.jpg?im_w=720', 65);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e34b2cee-7db1-4ee4-b827-0c047da03f7a.jpg?im_w=720', 65);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cfcf28bb-8646-40a1-8b0d-b75ef5d3af06.jpg?im_w=720', 65);
insert into location(id, latitude, longitude, city_name)
values (66, 37.578, 126.973, '경기');
insert into review (id, star, review)
values (66, 5, 133);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (66, '[독채] 효자스테이: 고즈넉한 동네에서 즐기는 모던한옥스테이', 'Tongui-dong,
        Jongno - gu의 집 전체', 80000, '집 전체', 5, 4, 1, 66, 66, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/115629cf-baa7-484a-90a9-3cd7042fe3ba.jpg?im_w=720', 66);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/54a85345-6a27-4baf-9cce-827a6728b8fa.jpg?im_w=720', 66);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ead418dc-4147-4c85-81bd-3c16e7fc952a.jpg?im_w=720', 66);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5e974518-d226-43ce-b217-5b44895587a4.jpg?im_w=720', 66);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8435bfb2-514d-4b45-ba19-5246bc7fb278.jpg?im_w=720', 66);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f445481f-642f-48c3-a732-b80d8830fa23.jpg?im_w=720', 66);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/03a71923-e18a-445e-9521-bac81ab81341.jpg?im_w=720', 66);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/aa2157c2-5e09-4739-9287-6f9708ba3aaf.jpg?im_w=720', 66);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f3e83058-f542-4172-86bf-b96be01365cd.jpg?im_w=720', 66);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4fa680ea-c94e-4c56-8638-b8d81ee75fb4.jpg?im_w=720', 66);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4cf16111-c94f-40ed-a112-179f951fb970.jpg?im_w=720', 66);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5b4c72b5-7f7d-4673-b065-972971fe986e.jpg?im_w=720', 66);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5b8687f2-81d5-4dad-a988-8f2058a6e727.jpg?im_w=720', 66);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c26b0678-41cc-4aea-8015-cd0288ef2a3c.jpg?im_w=720', 66);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d87fc44f-81b9-45cc-8090-05b462c105e0.jpg?im_w=720', 66);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/18d62036-77a2-4b7f-8d63-d0bc1c175db3.jpg?im_w=720', 66);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/439be968-c062-44e9-aa92-e0d6436fbdb9.jpg?im_w=720', 66);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ed6992fd-9a06-41e2-ba32-23680e1b7f76.jpg?im_w=720', 66);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7fd2ba6a-0b34-44d1-89fc-96974e3796c6.jpg?im_w=720', 66);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e324f9f4-a501-4153-b96d-9935dd7a98fb.jpg?im_w=720', 66);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/01a340e6-363c-4fc9-90f5-bfd35e6299f5.jpg?im_w=720', 66);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a1d5771d-9f79-4efa-8276-399638a5a3ab.jpg?im_w=720', 66);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/02c5d850-0b7c-4872-bd53-a9b5b4abc1aa.jpg?im_w=720', 66);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d21ed5b5-fbbe-4286-8e22-b5a201a4b719.jpg?im_w=720', 66);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c7476906-47a4-4069-9489-7432e4d2c0a8.jpg?im_w=720', 66);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6967f081-100f-4b03-b875-1e369e295fca.jpg?im_w=720', 66);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fa1668fc-d92d-42c3-aee1-6bba5fd1d7f5.jpg?im_w=720', 66);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/df700212-7c15-4541-a12e-3f76f6fa8780.jpg?im_w=720', 66);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f0051ac3-d95d-466a-9714-4cae94872b70.jpg?im_w=720', 66);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/13e7e711-5594-489a-bbbd-1a6a765f51cf.jpg?im_w=720', 66);
insert into location(id, latitude, longitude, city_name)
values (67, 37.448, 127.397, '경기');
insert into review (id, star, review)
values (67, 5, 25);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (67, '애견동반독채(전체울타리)', 'Gangha-myeon,
        Yangpyeong - gun의 전원주택 전체', 100000, '집 전체', 1, 6, 2, 67, 67, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/4ff47e6a-24d7-4a38-92ba-11b105df394c.jpg?im_w=720', 67);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/737125ff-30c1-465f-ae6b-196ec4381b9e.jpg?im_w=720', 67);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d6c91923-e39e-40ac-a53f-a5468cf6224b.jpg?im_w=720', 67);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/678364e0-9783-47f8-ba6d-2e015ffa0687.jpg?im_w=720', 67);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/722b097a-ac4e-48a6-8ec5-6c60d0335192.jpg?im_w=720', 67);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4f76e4c3-24bc-4ccd-8661-5464db113b43.jpg?im_w=720', 67);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ed62b8a1-8185-453e-8dfb-d7d721b6a609.jpg?im_w=720', 67);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e08f5d75-b328-4c1f-98f1-abf2d76e9faa.jpg?im_w=720', 67);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b058cfe5-939f-4d75-84cb-a6c0edd42657.jpg?im_w=720', 67);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/03d831e2-5220-454e-92e9-7f3c4e603e25.jpg?im_w=720', 67);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cde7c7ad-4dd2-46b8-acaa-1bc714c0b996.jpg?im_w=720', 67);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f072cc42-fa16-43e3-a27e-1d0a35be4b7b.jpg?im_w=720', 67);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0a85a388-404f-4857-9ea4-91d45b2440a3.jpg?im_w=720', 67);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9e3f5639-a12a-4d1d-9715-5eea381b495a.jpg?im_w=720', 67);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/08b21099-d072-4362-9f65-e077e2b8f494.jpg?im_w=720', 67);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3f295eb7-ec66-4989-90e2-5f54b6870476.jpg?im_w=720', 67);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f045eb6c-03aa-49d5-9374-fc08bd2f1c86.jpg?im_w=720', 67);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/656cf802-9a91-408a-b037-9e75802180a7.jpg?im_w=720', 67);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/034181fc-f227-4bfd-8d3a-5b0f8085d68d.jpg?im_w=720', 67);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cdbfea38-5d62-4fee-80a8-5af6cdff6a83.jpg?im_w=720', 67);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c5247009-5e98-453d-be61-0e646a4ded04.jpg?im_w=720', 67);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1b944b23-8e39-45ea-ad13-f4c35c062b09.jpg?im_w=720', 67);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4aaa7bcb-2997-4fb3-b0aa-9d8febd8968a.jpg?im_w=720', 67);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3e53e8ce-70d6-4761-aff0-0dcc701f1c21.jpg?im_w=720', 67);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0a5d2526-dfcd-490b-a40b-b0f9564ffffe.jpg?im_w=720', 67);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/285aee77-dca3-4658-8996-ea38786ff13e.jpg?im_w=720', 67);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/43367637-7c45-4e4c-b549-b97230a015fb.jpg?im_w=720', 67);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7aa2d249-1ca4-43bf-97fc-b1279e68943f.jpg?im_w=720', 67);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b7b2b00f-8727-4338-babb-fcbba7f803a3.jpg?im_w=720', 67);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fe9631ad-aea9-464a-b396-768aa494e7c7.jpg?im_w=720', 67);
insert into location(id, latitude, longitude, city_name)
values (68, 37.54, 126.642, '경기');
insert into review (id, star, review)
values (68, 5, 156);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (68, '햇살 가득한 테라스가 있는 감성 공간 GRU1763', 'Gyeongseo-dong,
        Seo - gu의 집 전체', 95000, '집 전체', 1, 2, 1, 68, 68, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/4ed1e076-fa50-4363-b95c-fc8f46b8dbbf.jpg?im_w=720', 68);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d98fe3b8-89e7-4e67-a296-ff6975d4d0c8.jpg?im_w=720', 68);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0874fdfe-a9d4-4ec5-92e4-80e568176d11.jpg?im_w=720', 68);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3b6fad36-2899-4713-986a-f7a27b1a256a.jpg?im_w=720', 68);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/64130c8e-abde-4a23-a36f-3b26ca4b719f.jpg?im_w=720', 68);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7eca8f12-d249-4049-b1fa-d7189b5dd1d2.jpg?im_w=720', 68);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ffce2429-a442-47f6-9988-99b03c11ad08.jpg?im_w=720', 68);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f67e54b5-4eef-4922-8463-cb562ca01a0b.jpg?im_w=720', 68);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a1f3f5ae-bbae-4aba-a86d-d623bb890efd.jpg?im_w=720', 68);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1d9cb2ef-0ba9-4d12-8eac-66fc2d778cd3.jpg?im_w=720', 68);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/73701c7c-ffa3-4eef-be07-1c25530f96fa.jpg?im_w=720', 68);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1924284c-b47f-4297-86e7-11f54b6d5a9d.jpg?im_w=720', 68);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9b65d08b-8e1d-4bc1-978b-75c93ac05273.jpg?im_w=720', 68);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a1841414-8cf8-4bfa-8e29-b7cf0c10ba4b.jpg?im_w=720', 68);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ef028ea6-3d93-4b71-9f4c-048f8cba669a.jpg?im_w=720', 68);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c4f59402-5a79-4baf-84a9-4475acd05cf9.jpg?im_w=720', 68);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/452bfed9-ee11-4d6a-b85c-c804e0f86853.jpg?im_w=720', 68);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/59f3480b-e9eb-4e3f-91e8-90ef1a9d1634.jpg?im_w=720', 68);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a55d6a50-7405-40ea-b586-4639fef6c1c4.jpg?im_w=720', 68);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2b5c1919-e1af-4052-8161-95a7f1a37555.jpg?im_w=720', 68);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c3f8f28b-29f2-4676-9ff4-ed90a2ba9883.jpg?im_w=720', 68);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/833d218d-9d6c-4ad5-a310-0acd8db54250.jpg?im_w=720', 68);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3e0e9b7a-ec45-44db-a91e-86b7840831fe.jpg?im_w=720', 68);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cdb793d8-660d-4a53-ae6d-ab8df4aba613.jpg?im_w=720', 68);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/993deeea-a7ee-4dd5-b29c-c422b7cfe746.jpg?im_w=720', 68);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0ea5e7ea-e05f-4344-8e49-a4c49ff1878e.jpg?im_w=720', 68);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1ac3cc9b-dbe8-48d6-abbc-cf19575ffe73.jpg?im_w=720', 68);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/44f65c98-d6e4-461a-a9e0-4abb39cb7339.jpg?im_w=720', 68);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/29382c7b-b6ac-4089-85cb-3b080de1ee28.jpg?im_w=720', 68);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/81334687-127b-4356-bf13-2474451d7ed1.jpg?im_w=720', 68);
insert into location(id, latitude, longitude, city_name)
values (69, 37.445, 127.559, '경기');
insert into review (id, star, review)
values (69, 5, 111);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (69, '양평 산수유마을 별채', 'Gaegun-myeon,
        Yangpyeong - gun의 게스트용 별채 전체', 85000, '집 전체', 0, 2, 1, 69, 69, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/d50ec0bc-250d-4ed5-9e91-411060f423c0.jpg?im_w=720', 69);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/78c6e12c-28ad-460e-833b-2b6b7a89074c.jpg?im_w=720', 69);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4a8fa3f1-ee1f-482c-aed3-18725c1754f0.jpg?im_w=720', 69);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/eb63e443-9e97-49c7-baba-3692740e99e2.jpg?im_w=720', 69);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/986a29c7-cb08-4c0e-a14e-aaffaac9d625.jpg?im_w=720', 69);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/861dcff8-5d7f-4259-b30b-f1e9da326bbb.jpg?im_w=720', 69);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0e92b561-357e-40e4-8204-7ea863b1ec69.jpg?im_w=720', 69);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d734e522-d3a5-42c6-9cd5-41b14df591dd.jpg?im_w=720', 69);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d4275d4c-859b-4273-92e7-d0c95d708e9e.jpg?im_w=720', 69);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b8c81624-9ac7-43fd-b6fa-d2121ae0b138.jpg?im_w=720', 69);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/75f7a40c-b290-4bbc-85cb-56712095c647.jpg?im_w=720', 69);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7f8eeb44-7898-4d84-8411-31d8b5f262a5.jpg?im_w=720', 69);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/40881751-fe18-4358-a7f6-807cf7d2e6bc.jpg?im_w=720', 69);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/85d5801f-38f2-4eaf-baa1-a4163775b2f9.jpg?im_w=720', 69);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ef2fc451-7c41-4a88-ae0b-e1844646e5a6.jpg?im_w=720', 69);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9f13dc0f-28a8-4dcf-89d2-7b0c05afc949.jpg?im_w=720', 69);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a9bf3d9b-2eeb-4631-9084-1b6594d152df.jpg?im_w=720', 69);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/49472fd3-62f6-45cf-838c-09bcaf9011a2.jpg?im_w=720', 69);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d9a65aaa-f084-44b2-99c9-beda7e3945d3.jpg?im_w=720', 69);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/38178dc4-11ed-48c9-a0ee-7dbf8727b4f5.jpg?im_w=720', 69);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6d559a18-9795-42c8-998f-c8d41ae1b416.jpg?im_w=720', 69);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9fb3a449-db66-4f5d-84a7-0887fa89143d.jpg?im_w=720', 69);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3c6a0fdd-9d1c-45c8-8ae3-76507f301c2c.jpg?im_w=720', 69);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7b9e764c-94ea-43c6-b34c-52e960f54fcb.jpg?im_w=720', 69);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2dd31e25-4b5e-4bb9-b5b5-45f8e26a3340.jpg?im_w=720', 69);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5cfd0a72-35ee-4532-a104-71c5c515cd33.jpg?im_w=720', 69);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dc7f971f-00db-481e-af22-b89d2a70255a.jpg?im_w=720', 69);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/21c31599-826e-46da-a4cc-941085da91ee.jpg?im_w=720', 69);
insert into location(id, latitude, longitude, city_name)
values (70, 37.581, 126.984, '경기');
insert into review (id, star, review)
values (70, 5, 19);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (70, '[독채] 루민북촌: 북촌한옥마을에서 즐기는 모던 한옥 스테이', 'Gahoe-dong,
        Jongno - gu의 집 전체', 80000, '집 전체', 1, 2, 1, 70, 70, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47866338/original/02261370-9338-4600-b427-6b968019203c.jpeg?im_w=720',
        70);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47866338/original/95a1d708-dbf8-421a-b6f8-a5541bc03316.jpeg?im_w=720',
        70);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47866338/original/cd39205b-fe64-4ad6-a2e0-5b9fb0e263ec.jpeg?im_w=720',
        70);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47866338/original/8e6678bf-67e8-4b50-8ce3-335f61ea5cf4.jpeg?im_w=720',
        70);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47866338/original/3e4df327-2d6a-46c0-972f-49885fcd6fe8.jpeg?im_w=720',
        70);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47866338/original/bf155049-e262-460f-8187-a1d4e793d9a1.jpeg?im_w=720',
        70);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47866338/original/21e0d7b2-6ca8-416c-9ec7-d9abe86c44ab.jpeg?im_w=720',
        70);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47866338/original/3c078e0d-bece-48ad-aad3-720f7feca975.jpeg?im_w=720',
        70);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47866338/original/a07c7351-82c1-4bdf-a225-3fca9bfbeb24.jpeg?im_w=720',
        70);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47866338/original/e43c8be7-2936-46eb-b671-6067e151028d.jpeg?im_w=720',
        70);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47866338/original/e2cfae1d-6d10-477c-8203-dba4ed007c36.jpeg?im_w=720',
        70);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47866338/original/9b77a1e0-ad8b-4fb4-bfb6-fe0bb09e4cd5.jpeg?im_w=720',
        70);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47866338/original/89a07e7e-1f81-4a68-a400-6293c79b1a32.jpeg?im_w=720',
        70);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47866338/original/dcd0a6b3-c9a0-4b13-ac1b-9a40056bb070.jpeg?im_w=720',
        70);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47866338/original/ba1b7d60-16be-4a1e-aa8b-169c7832851a.jpeg?im_w=720',
        70);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47866338/original/30285648-a53a-46b1-8b27-a9936dcbdd27.jpeg?im_w=720',
        70);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47866338/original/c084f606-ff6c-4e64-9c90-72b3dc4ea920.jpeg?im_w=720',
        70);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47866338/original/4fdb96f3-b50d-4f52-bf43-89935a98945e.jpeg?im_w=720',
        70);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47866338/original/9b8187de-8ce0-40b9-b289-dcee63060026.jpeg?im_w=720',
        70);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47866338/original/2ecbeb85-24a6-4867-9516-b28e7ac15c91.jpeg?im_w=720',
        70);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47866338/original/6bddb872-eec7-4c26-b634-b500f6deed9e.jpeg?im_w=720',
        70);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47866338/original/8321671d-7fe8-4790-97c0-571d47d4d8ee.jpeg?im_w=720',
        70);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47866338/original/0caead09-db71-464b-9d49-38bad62b16c4.jpeg?im_w=720',
        70);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47866338/original/e45562f2-857c-4e3a-a85d-4793d1a53047.jpeg?im_w=720',
        70);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47866338/original/61465797-8d9d-4587-8d15-a35ab8462a63.jpeg?im_w=720',
        70);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47866338/original/834767cc-4694-4377-902f-efee24245d98.jpeg?im_w=720',
        70);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47866338/original/74f757b4-7163-4547-8c1d-2cdc40c69cee.jpeg?im_w=720',
        70);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47866338/original/026e8d83-d340-472e-a663-dab683b26aa1.jpeg?im_w=720',
        70);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47866338/original/0980691c-7d66-4093-a178-2eb91a935b24.jpeg?im_w=720',
        70);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47866338/original/2b9e7da5-fa01-4ebd-82d6-0a24c0ca5548.jpeg?im_w=720',
        70);
insert into location(id, latitude, longitude, city_name)
values (71, 37.614, 127.44, '경기');
insert into review (id, star, review)
values (71, 5, 43);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (71, '"아그니민속방"저녁+아침식사 제공/다예/옛날오디오세트/참나무 불멍/민속놀이기구', 'Seojong-myeon,
        Yangpyeong의 게스트용 별채 전체', 100000, '집 전체', 0, 4, 1, 71, 71, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46931040/original/dc1af53f-f128-4f7a-86e3-7dbccf5e8ab3.jpeg?im_w=720',
        71);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46931040/original/00a250b1-100a-4c33-a2b4-60ef555f34ba.jpeg?im_w=720',
        71);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46931040/original/fc24d0e1-d67e-4db0-8a79-be43247ea473.jpeg?im_w=720',
        71);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46931040/original/6fa0433c-af77-4ad6-bb3d-7d15e52d8b1e.jpeg?im_w=720',
        71);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46931040/original/d6429c4f-fc10-43a9-b70b-9b74ad7fb1b1.jpeg?im_w=720',
        71);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46931040/original/a46c9173-fb74-4695-9a1a-66098dfa04c1.jpeg?im_w=720',
        71);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46931040/original/73a25966-294e-4315-be2c-5859b60fec57.jpeg?im_w=720',
        71);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46931040/original/7200d6e5-a9b2-43d0-899b-171d3285db51.jpeg?im_w=720',
        71);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46931040/original/7ceea771-9989-4966-958c-6a1a4c729c2a.jpeg?im_w=720',
        71);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46931040/original/b17cea02-8133-4691-8ce9-20de8763fe07.jpeg?im_w=720',
        71);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46931040/original/c5d721d2-ca96-42db-88f4-ca51d7700d01.jpeg?im_w=720',
        71);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46931040/original/d737756f-453a-4ff8-84ad-ccc97e90de3b.jpeg?im_w=720',
        71);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46931040/original/567874c8-f6cd-4880-8b09-82a31595aefb.jpeg?im_w=720',
        71);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46931040/original/ec5a3072-ec16-4ae4-b0ed-12c47024ba15.jpeg?im_w=720',
        71);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46931040/original/2707fc44-dec8-42b3-a46e-83629918349c.jpeg?im_w=720',
        71);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46931040/original/4a58ef06-f17c-4e43-bc7b-a2f251022b4f.jpeg?im_w=720',
        71);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46931040/original/56520085-d88d-4941-9f1e-6ebe528cbe1f.jpeg?im_w=720',
        71);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46931040/original/4e8877c8-b52e-489c-a1aa-7f2b0c1a27cd.jpeg?im_w=720',
        71);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46931040/original/518c38fb-e0f5-459f-ab11-5a106761f4cd.jpeg?im_w=720',
        71);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46931040/original/4c6ed8bb-2df4-4406-a815-9ec8965ed196.jpeg?im_w=720',
        71);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46931040/original/2d03c7f0-c3df-4a77-af98-b73cf4136e06.jpeg?im_w=720',
        71);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46931040/original/11537f70-efc9-4115-a127-3bf438f6f5da.jpeg?im_w=720',
        71);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46931040/original/00a67bdf-fc37-44f6-93c4-595ac13d2996.jpeg?im_w=720',
        71);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46931040/original/2082e1fd-3645-456a-a43d-518263ff02c1.jpeg?im_w=720',
        71);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46931040/original/d02eda2d-44cb-4e7e-9894-376f4ca48e56.jpeg?im_w=720',
        71);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46931040/original/2be1638b-7fd8-4ca1-b831-05fb4f87a314.jpeg?im_w=720',
        71);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46931040/original/c2cc5739-ee83-4a18-b20d-99f4df356b8b.jpeg?im_w=720',
        71);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46931040/original/bd9d4239-7b18-481d-b620-f941ebe81981.jpeg?im_w=720',
        71);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46931040/original/c7c6d14e-7ea6-4cae-82cb-b4a284229e74.jpeg?im_w=720',
        71);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46931040/original/0b35f3d7-da20-4fed-8d0b-53223e7e4b60.jpeg?im_w=720',
        71);
insert into location(id, latitude, longitude, city_name)
values (72, 37.71, 126.933, '경기');
insert into review (id, star, review)
values (72, 5, 68);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (72, '일영댁의 루프탑', 'Jangheung-myeon,
        Yangju - si의 게스트용 별채 전체', 90000, '집 전체', 2, 4, 1, 72, 72, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/a317fbfd-e121-4bcb-ac8b-f5720aaa016d.jpg?im_w=720', 72);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8a518449-1d87-4f5b-91db-e40e759db974.jpg?im_w=720', 72);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4725d94b-3f3b-4567-b5d1-bb08a3a131a0.jpg?im_w=720', 72);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cd05cf09-c7cf-4058-b6eb-f030bd4b76f4.jpg?im_w=720', 72);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9273d0a4-a6de-422f-a33b-ea7f78c36504.jpg?im_w=720', 72);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b6922083-d261-4a3b-a094-091c1e278e25.jpg?im_w=720', 72);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/791a9bc1-af5a-46b1-960e-181075bcb1ba.jpg?im_w=720', 72);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ff8e60de-017b-4071-a389-eb556b80655f.jpg?im_w=720', 72);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c6548f52-dbd9-4985-9773-674451262c24.jpg?im_w=720', 72);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bd108df7-a740-47f2-8803-f7660e24ede3.jpg?im_w=720', 72);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7a8813fb-84d4-44af-a0a1-3968691e928f.jpg?im_w=720', 72);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f49f39cb-6316-46bb-a515-bee1d98117f0.jpg?im_w=720', 72);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ef784fe9-1a56-4f81-9768-0d32cc05be6d.jpg?im_w=720', 72);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/81d04dd9-19f5-449c-9f52-8457dd8ef6ba.jpg?im_w=720', 72);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fee68c25-360a-46e7-b16e-4d43a24e7de0.jpg?im_w=720', 72);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8c7bf879-7c10-4bae-8109-ff1a06b20e00.jpg?im_w=720', 72);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0092d470-b19f-4790-9c88-b35e128f7ca8.jpg?im_w=720', 72);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/29e5e2dc-9d36-4b66-a0cf-1a2b42bacc67.jpg?im_w=720', 72);
insert into location(id, latitude, longitude, city_name)
values (73, 37.872, 127.733, '경기');
insert into review (id, star, review)
values (73, 5, 136);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (73, '[소형 단독 주택 / 3층 전체 사용] 푸택맨션 - 빔프로젝터,
        턴테이블, 넷플릭스, 왓챠', 'Chuncheon의 초소형 주택', 90000, '집 전체', 2, 3, 2, 73, 73, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/846a6840-98e4-4f69-b1b1-667833c37dc6.jpg?im_w=720', 73);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7be646b2-6826-4ebc-bf95-6ee1e6d522c5.jpg?im_w=720', 73);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/98e3e3c9-cf67-4739-90cb-b3dd99c2a8c7.jpg?im_w=720', 73);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7f4c2678-c1c4-4424-b846-b7858f9c2db4.jpg?im_w=720', 73);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d6de5597-4a71-4cf6-ad97-b1c4f18e50df.jpg?im_w=720', 73);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9fb590aa-2813-4f27-a9c9-f3cbd6a99560.jpg?im_w=720', 73);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/043920d7-fc50-43ed-8a66-2e4ade56134d.jpg?im_w=720', 73);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/63492ba0-f626-4c5d-a785-b83885eeefd3.jpg?im_w=720', 73);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b5c918bd-52aa-4aba-b456-52a68b595aef.jpg?im_w=720', 73);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e112ae0c-6366-430c-8cb9-b98942763624.jpg?im_w=720', 73);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f799ae56-3b77-4c2d-b9be-41511f390199.jpg?im_w=720', 73);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/36da9932-c8f7-4e1b-b1dc-09f103830dbb.jpg?im_w=720', 73);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9b15a6de-e3b1-4f7d-b42f-89eafafaa208.jpg?im_w=720', 73);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ca8b5f88-aea8-40e6-8016-6e1bf66d3306.jpg?im_w=720', 73);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7722914d-b483-4c5d-b8f7-7e404e529362.jpg?im_w=720', 73);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e9768565-8ee0-42ff-b0e2-a1ed2cb753dd.jpg?im_w=720', 73);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9921b5ea-8bac-4158-86f6-332335ddaf76.jpg?im_w=720', 73);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7b59b3d3-53af-4569-9b22-c5c160fc3fc0.jpg?im_w=720', 73);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/66db203c-c387-4ffa-b16a-ab3078c693a2.jpg?im_w=720', 73);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d3fb4fff-7ace-4b85-9a70-63576c67ac00.jpg?im_w=720', 73);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3667d4ff-ea87-456f-a9cc-fe86464813c2.jpg?im_w=720', 73);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/49728843-e18c-4c8a-80d2-0ad2082cb7f8.jpg?im_w=720', 73);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/81711818-3c3b-4e4c-b7ec-4474f777e4fe.jpg?im_w=720', 73);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/21755048-90d6-4e80-8f06-86e31a75101d.jpg?im_w=720', 73);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8eaf9034-4046-46f3-aba8-5c329f3bedca.jpg?im_w=720', 73);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/46bc78fd-f2cb-4943-9a27-7f6d3d2415b9.jpg?im_w=720', 73);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9a786913-289c-4d5a-a67c-4fb79a734c65.jpg?im_w=720', 73);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/19cf378a-cc8e-4d8b-9e0e-fb1e6a929a22.jpg?im_w=720', 73);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fd3d5e98-7da1-40bb-9f50-0e49503172d8.jpg?im_w=720', 73);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/47ef21ae-2647-47cb-baa5-4cbd84e26eac.jpg?im_w=720', 73);
insert into location(id, latitude, longitude, city_name)
values (74, 37.55, 127.188, '경기');
insert into review (id, star, review)
values (74, 5, 123);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (74, '@Netflix de Airbnb@ 프라이빗 영화관', '하남시의 로프트 전체', 100000, '집 전체', 1, 2, 1, 74, 74, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/b048ea66-485f-4d37-bd1e-f66c1589a8e0.jpg?im_w=720', 74);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44298361/original/aeec1a9c-28fe-4846-bced-69f5cc9b2933.jpeg?im_w=720',
        74);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44298361/original/122a7fbc-d066-485e-a54e-0b764cc748b8.jpeg?im_w=720',
        74);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44298361/original/a8fe195c-8e76-400a-97f1-11a5c7bd76fe.jpeg?im_w=720',
        74);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44298361/original/dd872973-a38a-4b84-8240-245d3dfe41aa.jpeg?im_w=720',
        74);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44298361/original/c14798ba-3c39-4103-a128-0c008b523fc2.jpeg?im_w=720',
        74);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44298361/original/3271fc9e-9b0d-4e7c-ab7d-d7ec6c11077a.jpeg?im_w=720',
        74);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44298361/original/e904e20b-5c37-4749-b4da-eb3e11add5eb.jpeg?im_w=720',
        74);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44298361/original/97d3b10f-0741-4b1d-b574-e0d64172fb16.jpeg?im_w=720',
        74);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44298361/original/5bcd55d0-8912-4302-8ce7-a7daad2031c3.jpeg?im_w=720',
        74);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44298361/original/ebc513dd-8a0e-4016-973b-0ea11e39a029.jpeg?im_w=720',
        74);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44298361/original/57c7c633-e7c8-4b2b-889a-9c34ee8fd693.jpeg?im_w=720',
        74);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44298361/original/d1415c4e-8341-4bb2-aea4-0230a7398ca4.jpeg?im_w=720',
        74);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44298361/original/cfb407a5-d380-4779-b96a-049f5f866e32.jpeg?im_w=720',
        74);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44298361/original/4664e1ff-09a3-48a3-b8e5-eacde7ccb1d2.jpeg?im_w=720',
        74);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44298361/original/284cb14e-0039-4986-8785-3339c7bf6bdd.jpeg?im_w=720',
        74);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44298361/original/3bdf240e-8799-4b2c-afe0-5839f3cf2b9c.jpeg?im_w=720',
        74);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44298361/original/020e006b-46e1-44ab-a9c5-2c4468a5990e.jpeg?im_w=720',
        74);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44298361/original/30c074d0-bdf0-4ce2-8051-be901ffd0260.jpeg?im_w=720',
        74);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44298361/original/4403b6c0-fa6d-4daf-8620-97c69faa2002.jpeg?im_w=720',
        74);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44298361/original/5d932e0a-cb91-4d7f-bf8b-51feba264e7b.jpeg?im_w=720',
        74);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44298361/original/449d6654-6ae6-496b-84a7-f42674949303.jpeg?im_w=720',
        74);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44298361/original/9ec062ab-70c3-4b08-8f6a-dbf662305b16.jpeg?im_w=720',
        74);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44298361/original/f4d892a0-2a28-495a-b623-3251a764e1da.jpeg?im_w=720',
        74);
insert into location(id, latitude, longitude, city_name)
values (75, 37.538, 127.616, '경기');
insert into review (id, star, review)
values (75, 5, 116);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (75, '#아이엠포레스트 #호텔침구 #요가 #명상 #보이차 #온전한 나를 위한 시간#소독', 'Yongmun-myeon,
        Yangpyeong - gun의 전원주택 전체', 80000, '집 전체', 1, 4, 1, 75, 75, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/175794e8-792b-4719-bdff-341ae1adf7d1.jpg?im_w=720', 75);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c8ca0ff7-b162-4d96-8ae1-43bde3116c64.jpg?im_w=720', 75);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bcaa53eb-8f7f-45f7-9b7d-01411d2c70ca.jpg?im_w=720', 75);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2f861b9b-0a1a-4144-9ade-4afcbaa863c7.jpg?im_w=720', 75);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b808eb4b-4206-4ec3-aa81-8c85925d7476.jpg?im_w=720', 75);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ff56aab1-6b38-4bc9-b8c8-e5fa4e8a3300.jpg?im_w=720', 75);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c3a6692c-a7c6-4508-bbcf-938fc554a621.jpg?im_w=720', 75);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a6c26f10-8dac-43bf-a414-1a4645af89d0.jpg?im_w=720', 75);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d6162c05-2e29-4967-ad9d-12eab11c2a4a.jpg?im_w=720', 75);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/28def973-6c2a-4d75-ad8a-b5a9aaafd6a6.jpg?im_w=720', 75);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a5d4b8c2-d4e5-4cdf-94cd-8979b3230c50.jpg?im_w=720', 75);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cd4487cc-bac0-45d4-b6e4-44801969f657.jpg?im_w=720', 75);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3066ed5e-e817-4b99-b163-744239b94100.jpg?im_w=720', 75);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e00235fd-9bfa-4291-9ceb-9985285decd7.jpg?im_w=720', 75);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/16d8ab1b-4444-4805-b255-9d98724a9108.jpg?im_w=720', 75);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9d026bf0-a4fc-42e3-a750-34cd07f468dd.jpg?im_w=720', 75);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7d0a4583-0a5d-4d88-bf9f-a738e6e5cc6a.jpg?im_w=720', 75);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/df336377-d59d-4d3d-b5ec-e5918d25ee2f.jpg?im_w=720', 75);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7f92eb3a-3c2a-42d7-8717-277221f8f136.jpg?im_w=720', 75);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/43c856a2-3b97-42b4-b421-fd802cbd2e6b.jpg?im_w=720', 75);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/aa36e325-b6da-4a66-a2e4-e7e1fa5881a1.jpg?im_w=720', 75);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/956b367c-0af5-4953-9984-2a7b5ca2cbf8.jpg?im_w=720', 75);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4e189ff2-c426-4986-b1a3-a9ec2f2c0f7b.jpg?im_w=720', 75);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6b7e32d8-cf43-411b-a85e-147fc976b597.jpg?im_w=720', 75);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/96844d76-5e05-40ef-a53b-0564f3e4ed68.jpg?im_w=720', 75);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d317716d-5ba8-4da2-b45a-20dfd08948ab.jpg?im_w=720', 75);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/98b3c34c-7d06-493c-8397-2f6351efc156.jpg?im_w=720', 75);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5157f40d-b5a5-4e8a-b275-5f1b288f4071.jpg?im_w=720', 75);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2654f716-59af-47dd-aab2-d330d85e95da.jpg?im_w=720', 75);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1e9daecc-74c7-4870-971d-9b54f6057324.jpg?im_w=720', 75);
insert into location(id, latitude, longitude, city_name)
values (76, 37.984, 127.356, '경기');
insert into review (id, star, review)
values (76, 5, 94);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (76, '동물들과 보내는 별이 빛나는 밤(라일락방)', 'Ildong-myeon,
        Pocheon - si의 돔하우스', 95000, '집 전체', 1, 2, 1, 76, 76, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/bb4f945a-32f4-40e9-8d2d-9f6fd2cb3604.jpg?im_w=720', 76);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7cbd0f3d-ed8e-4bca-aa1e-e3be8edb87b8.jpg?im_w=720', 76);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a1745b94-b467-4868-9275-c9c1c1ca1c75.jpg?im_w=720', 76);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a02d00e4-feff-4c3e-9e5a-cde9a60a5b2f.jpg?im_w=720', 76);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dcb192e5-8798-468a-b3ea-c41bfbadd130.jpg?im_w=720', 76);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8fadf47a-6021-4ac0-a91c-b6ca15d1ef7d.jpg?im_w=720', 76);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/13543297-e26b-418f-8f6a-4830cd44c535.jpg?im_w=720', 76);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f7e65eac-d929-47af-88bd-6ce8da06f3b4.jpg?im_w=720', 76);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8626e565-6994-4623-828e-267edb34c259.jpg?im_w=720', 76);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9503687e-62a4-49ff-8939-f43c5c6a746a.jpg?im_w=720', 76);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7d572503-44ab-4afa-bdd4-eb5cee93193a.jpg?im_w=720', 76);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/99d6e7d0-4802-4dae-8978-61cd80be30e6.jpg?im_w=720', 76);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1292467b-4c62-44dd-ae40-246745082de0.jpg?im_w=720', 76);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/91a1bc53-76da-4dba-bfa5-57384fd4b73a.jpg?im_w=720', 76);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1dfacea1-d4dc-4a88-83b5-8c06a7e0efc8.jpg?im_w=720', 76);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f680b7e0-4360-4bf2-ba1d-a8e2ec79c646.jpg?im_w=720', 76);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/db9629a8-356d-4bc6-b6b3-289c8c9a57e9.jpg?im_w=720', 76);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dd40e477-39b4-4569-8bd4-dcc05b431b2c.jpg?im_w=720', 76);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/35b06c80-4bc2-4d7c-b343-93fdb485d478.jpg?im_w=720', 76);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/409c2585-faab-46f6-aa3c-ca3f3d6366bf.jpg?im_w=720', 76);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3fab733c-37af-46aa-90c0-8eeccb20e8de.jpg?im_w=720', 76);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bdc00f9c-f70a-4120-9faf-2cd34de2a982.jpg?im_w=720', 76);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cdb70677-73ee-4f58-93c6-964b499ba5b3.jpg?im_w=720', 76);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c8bddec0-c5ce-4169-843e-b4f2daaeacbd.jpg?im_w=720', 76);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5aaf0840-78d5-4cc6-824a-492a9d7ee949.jpg?im_w=720', 76);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/65f7f08c-1d9f-4d08-8bc2-5b78128e4784.jpg?im_w=720', 76);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dc7b5481-0a72-475c-8e52-9e480a8eda65.jpg?im_w=720', 76);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bba5a786-8e95-4de6-8503-03769db611cc.jpg?im_w=720', 76);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cba793ab-16e4-4b8c-9678-edf2c995b54d.jpg?im_w=720', 76);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9a4b9dd7-9db1-42d1-b712-2d9c813b17a5.jpg?im_w=720', 76);
insert into location(id, latitude, longitude, city_name)
values (77, 37.506, 127.099, '경기');
insert into review (id, star, review)
values (77, 5, 161);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (77, '★COZY house1 x LAKE view★ 5min LOTTE world & tower', '송파구의 아파트 전체', 97000, '집 전체', 1, 2, 1, 77, 77, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/6f6ad978-aaad-4811-a681-d2594b91ecd6.jpg?im_w=720', 77);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c3a8a83d-8cf5-43bb-85d0-204399dd5691.jpg?im_w=720', 77);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/525bac80-ced8-4827-af92-97d1292c90ca.jpg?im_w=720', 77);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/005c48c4-d55f-4638-87eb-167cd681b9e0.jpg?im_w=720', 77);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/31f30cb6-9cdc-4ece-9a5b-eec388d44186.jpg?im_w=720', 77);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d61c21fa-87ac-403d-971e-4e4e64bd8cd5.jpg?im_w=720', 77);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2ee804c5-7102-465e-b1b7-01c23e906708.jpg?im_w=720', 77);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4559660b-d978-4010-85a5-2a40898a4406.jpg?im_w=720', 77);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3514de90-0095-443b-8e70-180c4e9fe95a.jpg?im_w=720', 77);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9b54eac3-0b6a-46c8-921f-974663ba3eca.jpg?im_w=720', 77);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9c2390ca-0afb-4b06-a434-5930c6025da6.jpg?im_w=720', 77);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/126c5e0c-f140-4dab-8d20-02dd0b5c3790.jpg?im_w=720', 77);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/28ac9791-91bd-46ee-b369-fd62173ffc88.jpg?im_w=720', 77);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/577b5675-2594-4948-afdb-cba6aa5bd85c.jpg?im_w=720', 77);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/99f8faa3-0bd3-4ee3-afbf-f13facb46405.jpg?im_w=720', 77);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ab010309-1a94-4500-899b-10524bc0b06e.jpg?im_w=720', 77);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0840bc8f-239b-4057-8447-f09b69b12b66.jpg?im_w=720', 77);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f558b90c-8983-467b-b9aa-b7861ff60ec9.jpg?im_w=720', 77);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/16c7a21b-e3d1-4ba8-bb56-64f5fc30a654.jpg?im_w=720', 77);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/21d464d3-2f24-4370-a8b2-5f207f18df79.jpg?im_w=720', 77);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e5314b46-98a8-4b44-bf83-690c5e962406.jpg?im_w=720', 77);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/58be218d-cc23-494e-aeca-3c4eae5b3554.jpg?im_w=720', 77);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/86602e25-5a6a-4179-a2a9-eda4bab1d166.jpg?im_w=720', 77);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4b6de5c3-ba78-414d-995d-40712da531ae.jpg?im_w=720', 77);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/23192b1c-3f09-4751-aafc-7383c78c767b.jpg?im_w=720', 77);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3046a26c-2c4b-4c6e-ade1-08e4afdeba8a.jpg?im_w=720', 77);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/291eb8b2-f833-44e8-b8e0-c86afb6060e9.jpg?im_w=720', 77);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7c378594-08fd-4e5a-9fca-217b6e01b0d8.jpg?im_w=720', 77);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0ec7ea5a-9aac-4493-b9a7-de4c2436bd8d.jpg?im_w=720', 77);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/49aec373-75c2-496d-a963-a4c70a679b81.jpg?im_w=720', 77);
insert into location(id, latitude, longitude, city_name)
values (78, 37.377, 127.189, '경기');
insert into review (id, star, review)
values (78, 5, 48);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (78, '* 금락헌 * - 서울.분당.판교 근교,
        경기도 광주 위치', 'Gwangnam-dong, Gwangju - si의 전원주택 전체', 100000, '집 전체', 1, 2, 1, 78, 78, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/7927fd1d-c148-42e4-9176-83a89c6a4233.jpg?im_w=720', 78);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7cf77fe6-ac35-4e6f-8e47-094b800cfc46.jpg?im_w=720', 78);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4909c572-8a0d-4460-842b-d90f8dc23951.jpg?im_w=720', 78);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0604229d-42de-47c7-b299-003696bdc173.jpg?im_w=720', 78);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f2158a51-cd48-4843-9ef5-e2836d9e679b.jpg?im_w=720', 78);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e3756383-4b7e-4310-ba9a-2de88ae58b4c.jpg?im_w=720', 78);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/99d7a9a9-e94f-43a2-b17e-7a6c1999019d.jpg?im_w=720', 78);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/356b4247-06ee-4ed9-809a-5950c75d5451.jpg?im_w=720', 78);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a7e169aa-e4bd-42e4-89a5-7e1861c08329.jpg?im_w=720', 78);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/43726fac-63e0-4eb0-9658-fbf76596f3ab.jpg?im_w=720', 78);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7fe1caf7-1543-44fa-ace9-8a79d085da23.jpg?im_w=720', 78);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9aa92cf0-ac0a-47d7-8355-d8a3a8837bc7.jpg?im_w=720', 78);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/472e3514-96be-49e3-a7e6-3cfc5184784b.jpg?im_w=720', 78);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0d4d1912-cc45-4dc6-9dc6-da8cf7b36d6b.jpg?im_w=720', 78);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e658d5c4-4b62-49d5-a901-1c878eecd19a.jpg?im_w=720', 78);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/21387a8b-9bb6-4359-884f-1b1de7e5b748.jpg?im_w=720', 78);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/95430a80-ff45-423c-80bc-5d8bd2dc862b.jpg?im_w=720', 78);
insert into location(id, latitude, longitude, city_name)
values (79, 37.762, 127.362, '경기');
insert into review (id, star, review)
values (79, 4.5, 195);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (79, '*아침방  #통나무집에서 커피한잔하면서 빔으로 영화 한 편..어떠세요?', 'Sang-myeon,
        Gapyeong - gun의 게스트용 별채 전체', 100000, '집 전체', 1, 2, 1, 79, 79, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/dbf45a01-a131-400c-862c-783a350a8399.jpg?im_w=720', 79);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6d7d3ccb-b0d6-432b-ba49-69f046000e48.jpg?im_w=720', 79);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d8c55801-09ee-46c0-b8d3-1fba2aa49844.jpg?im_w=720', 79);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/105d3f5b-a5bc-466c-9357-1307438bdec5.jpg?im_w=720', 79);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5f1aad97-e44c-4f3c-a651-97baad1a5cd4.jpg?im_w=720', 79);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ec8e7e03-65f2-4612-bbd7-36ab2eb5a4e0.jpg?im_w=720', 79);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e5ee6bf0-8081-475a-a3e3-ff45f4cf1f78.jpg?im_w=720', 79);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cd080696-9f50-45c5-8d01-f2d2c8a73154.jpg?im_w=720', 79);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/317037c2-2e6a-4bb3-aebb-c911df5b7bdd.jpg?im_w=720', 79);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7b8effec-8ad1-451b-9745-531465ce6f39.jpg?im_w=720', 79);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-23195109/original/a288ef9b-9a6f-45c3-b71d-b786b8d0385e.jpeg?im_w=720',
        79);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/53745121-5d75-4521-a554-73ddff6fc789.jpg?im_w=720', 79);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9b81894a-1be9-405d-a32d-1b69424c8fe0.jpg?im_w=720', 79);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/73077130-39ae-4143-a961-27c0234f64fb.jpg?im_w=720', 79);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9b448469-1ac6-4dff-893d-79487ad6c3fb.jpg?im_w=720', 79);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3a1cbf2d-317d-4e1b-b13b-f8789ed482c0.jpg?im_w=720', 79);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/31fd70df-f2ca-4d23-8ec7-facddb81c316.jpg?im_w=720', 79);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a1082fc9-f7b3-47c5-94c8-fa98f70ecb42.jpg?im_w=720', 79);
insert into location(id, latitude, longitude, city_name)
values (80, 37.38, 127.118, '경기');
insert into review (id, star, review)
values (80, 5, 305);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (80, '[BUNDANG][SUNAE] Designers Clean APT',
        'Bundang-gu, Seongnam-si의 아파트 전체', 95000, '집 전체', 1, 2, 1, 80, 80, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/0aa12c6a-0655-43f4-b070-6241398f202f.jpg?im_w=720', 80);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4945af88-72d4-4dd8-9900-21b2576f9a4d.jpg?im_w=720', 80);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a16e45a4-be00-4344-97ab-1bd3132cfa55.jpg?im_w=720', 80);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5cae0fa2-1003-4447-8cd8-9b7186e1a315.jpg?im_w=720', 80);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6878ad55-3efe-4aee-8e52-79d36c9feceb.jpg?im_w=720', 80);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fa5ead8d-e5eb-418b-940e-4dc4152309a4.jpg?im_w=720', 80);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e3ecabaa-4f3f-432d-9066-a745d34107e8.jpg?im_w=720', 80);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f42fd20a-1f08-48fa-afff-de311e5b511b.jpg?im_w=720', 80);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/84ee49eb-4af1-41f1-8c6c-f9c9d5418cef.jpg?im_w=720', 80);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2ad9e18a-f9b4-462d-bf4c-e926ac143734.jpg?im_w=720', 80);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/230d4fe6-cb2c-4e2a-9af7-deffae0dd067.jpg?im_w=720', 80);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b4312678-0038-4ab8-ac56-af1b3dbe0fe6.jpg?im_w=720', 80);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c6b8756e-bedd-4795-9488-c4878f0ef055.jpg?im_w=720', 80);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a79071aa-4496-4819-ac5d-929c95c06168.jpg?im_w=720', 80);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ba682097-c589-4d21-9424-6c801208091d.jpg?im_w=720', 80);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8f5e430b-f10e-4633-babf-2a290d639556.jpg?im_w=720', 80);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ac7867ee-bdcd-4c33-9b32-cf7f8d66a621.jpg?im_w=720', 80);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/57f63ceb-c087-47e6-a802-df723a6fd86d.jpg?im_w=720', 80);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/aa3d1c35-e214-4fcd-a23c-0e0f9dfcf79a.jpg?im_w=720', 80);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/12bce55c-66db-46b0-84a4-250ad3871e65.jpg?im_w=720', 80);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5b60c04a-6a8e-4cc5-aa59-2de141e9b907.jpg?im_w=720', 80);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b9291bf7-57c3-451c-80d1-2c7adad2da96.jpg?im_w=720', 80);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5f02ac26-e6c3-4b65-b226-e6141106bd03.jpg?im_w=720', 80);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9524b7e5-aee9-481a-9d6d-e00416516ec1.jpg?im_w=720', 80);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/13cb248f-e2bb-4766-878d-684772e8aecc.jpg?im_w=720', 80);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d9447389-67e4-42f7-964e-8fa08764524c.jpg?im_w=720', 80);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f0e21bcf-2486-4862-8387-36706fdf11c4.jpg?im_w=720', 80);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0d01f672-6b77-4b4b-a9e5-35f4799ec4ef.jpg?im_w=720', 80);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ca33fb1f-e3d1-4836-8083-7e0d2b44f4b9.jpg?im_w=720', 80);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a011597d-b820-40e0-86ac-c81c9fd35622.jpg?im_w=720', 80);
insert into location(id, latitude, longitude, city_name)
values (81, 37.285, 127.06, '경기');
insert into review (id, star, review)
values (81, 5, 24);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (81, '[comma stay]광교호수공원,42인치TV,NETFLIX,구스이불', 'Woncheon-dong, Yeongtong-gu, Suwon-si의 아파트 전체', 100000, '집 전체',
        1, 2, 1, 81, 81, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/23b46ecc-bd0f-498c-9348-cdeff74df605.jpg?im_w=720', 81);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46958334/original/3e979f6f-ff9e-46e4-bb43-832f1533635c.jpeg?im_w=720',
        81);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/95a62fd9-2b29-4da6-96de-7900d2faccbe.jpg?im_w=720', 81);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46958334/original/fdbe1d7d-5481-4ecb-9528-493ae2a5521e.jpeg?im_w=720',
        81);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/266a34ee-1041-4a1a-9ec8-27d2dbb8407d.jpg?im_w=720', 81);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46958334/original/b4ff670f-99e4-4aef-aa9b-3bc476951ba6.jpeg?im_w=720',
        81);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46958334/original/54bf1536-a375-412d-a150-c94066107f71.jpeg?im_w=720',
        81);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46958334/original/13d2d8b7-db58-42ef-9f0d-8fef6ffb5dd6.jpeg?im_w=720',
        81);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cb61ac13-fe15-4034-917c-931e3dc595f6.jpg?im_w=720', 81);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/00c1e3f4-9110-4a30-bc9e-baa001201b23.jpg?im_w=720', 81);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/10fb1543-304f-4d95-9f20-ad5882c23df9.jpg?im_w=720', 81);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46958334/original/34f53d8c-688e-4779-a980-d56b98aa40bd.jpeg?im_w=720',
        81);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46958334/original/1830b83e-b8e8-4e18-b2a0-ada0a563c6a2.jpeg?im_w=720',
        81);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46958334/original/3c466c24-6297-4ce3-ae3c-70a2a1837ab9.jpeg?im_w=720',
        81);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46958334/original/26e4c394-e741-4738-a539-4401503b74e6.jpeg?im_w=720',
        81);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46958334/original/b2e2e73c-d61c-4467-89b8-0d841de062e6.jpeg?im_w=720',
        81);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46958334/original/5f4d9bdd-5f68-4e1c-9e44-ea804e641b91.jpeg?im_w=720',
        81);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/429e75c6-04ca-4de9-83be-b7049e01b08d.jpg?im_w=720', 81);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2c3f8b2f-19f4-4aff-b9a2-208c13ac3c4c.jpg?im_w=720', 81);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46958334/original/f4287016-4521-4b34-8528-2610a0d33b93.jpeg?im_w=720',
        81);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46958334/original/463dc40d-5ea8-4150-a80f-069a43cbfcc2.jpeg?im_w=720',
        81);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46958334/original/1bb69c34-dfd3-496f-a21c-565bb9b663dc.jpeg?im_w=720',
        81);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46958334/original/a140ae8b-1c5e-4d51-8de5-ab19a9ac6dcf.jpeg?im_w=720',
        81);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46958334/original/d843262c-97b3-4559-9eb0-a3e35ef74885.jpeg?im_w=720',
        81);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46958334/original/7ed961a4-3860-4d1a-8ca6-16dbb9dc4ab5.jpeg?im_w=720',
        81);
insert into location(id, latitude, longitude, city_name)
values (82, 37.686, 127.237, '경기');
insert into review (id, star, review)
values (82, 5, 96);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (82, '그랜마 하우스#1', '남양주시의 통나무집 전체', 97000, '집 전체', 1, 2, 1, 82, 82, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/76f673c1-3270-490f-a1e8-0d454ea80362.jpg?im_w=720', 82);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cfe20412-ef12-4ee2-8646-15f33b27b8f5.jpg?im_w=720', 82);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3a4240d0-af57-403e-971b-bd240d22879b.jpg?im_w=720', 82);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/021b8c99-9f28-432d-9e47-4eccc3ce1058.jpg?im_w=720', 82);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a2542965-6afa-4b0c-be14-a86d7fbdac5c.jpg?im_w=720', 82);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/56a35a41-0414-490b-aeac-520f083fcc98.jpg?im_w=720', 82);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/db1adada-f1ed-44ae-87ab-e2e2b7d47be7.jpg?im_w=720', 82);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1d55fe9f-1338-4bac-966b-d6083da63636.jpg?im_w=720', 82);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/105366fe-bb40-45fc-84db-f7ea38ffc711.jpg?im_w=720', 82);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6382a513-47d6-4d70-a63b-0e62e4439b04.jpg?im_w=720', 82);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/150a3da1-2f76-4b42-a488-d86481b2ceb5.jpg?im_w=720', 82);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a06e1a5c-325e-4469-87eb-7339043d433c.jpg?im_w=720', 82);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bc7c9be3-9858-43d0-b4a0-5b36875c031c.jpg?im_w=720', 82);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cd0dc4f7-7ab0-4aa4-8c2f-b3059423d2c2.jpg?im_w=720', 82);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/67d5273f-35a2-4623-940f-01a4ae393c73.jpg?im_w=720', 82);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/258f2ae9-3aaf-4590-b656-db13e53e46f1.jpg?im_w=720', 82);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1d97c393-bf85-40a0-96cf-a42dccd9ece7.jpg?im_w=720', 82);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/38916d07-f191-4e5f-adb6-f1d7c85d2f80.jpg?im_w=720', 82);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f71acab5-d04a-408d-a237-63839e64378e.jpg?im_w=720', 82);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/89660406-83e8-4917-b3ca-0fac9c5c18ed.jpg?im_w=720', 82);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9d308b09-7d91-4ec5-9c59-75fc6cca8420.jpg?im_w=720', 82);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e434c694-2d34-45dd-824e-5875253fe221.jpg?im_w=720', 82);
insert into location(id, latitude, longitude, city_name)
values (83, 37.782, 126.709, '경기');
insert into review (id, star, review)
values (83, 5, 57);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (83, '#꿀모닝홈스#단독테라스.감성캠핑.바베큐.헤이리마을.프로방스.신세계첼시아울렛.파주일산출장', 'Tanhyeon-myeon, Paju-si의 게스트용 별채 전체', 90000, '집 전체', 1,
        3, 1, 83, 83, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/4e34c326-d97b-4869-be5c-29f1c8eaa701.jpg?im_w=720', 83);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4cdce1c5-e1eb-4f46-bf4a-0a16c7f42ea3.jpg?im_w=720', 83);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8421428e-f2b1-4680-afeb-606ab7eff2ea.jpg?im_w=720', 83);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9a5e9c7e-bc8b-406e-a514-ab1e1c2f7817.jpg?im_w=720', 83);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/91caaea1-99e2-4ec1-a7a3-c32836f088f0.jpg?im_w=720', 83);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8bcc75dc-85b1-437f-bb7f-813f77b8e45f.jpg?im_w=720', 83);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/14afc91f-bada-408e-bbac-c8514eb62f48.jpg?im_w=720', 83);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/11745196-d1e7-4fb7-ab4c-0fefc9bab26c.jpg?im_w=720', 83);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bd64b98b-a3cf-4eea-a12a-9daa15eca060.jpg?im_w=720', 83);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e420f5b6-b2c9-4327-a37a-d0a3ec480a19.jpg?im_w=720', 83);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bd089403-f280-467a-bdbb-7eeb23c98e43.jpg?im_w=720', 83);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d52ad325-f0ad-4935-890c-eabfd6d0abde.jpg?im_w=720', 83);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b172aa30-5aed-4c27-94fd-1cf683c31103.jpg?im_w=720', 83);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/500f5bbc-ba9c-4df8-871d-f637d685e9ff.jpg?im_w=720', 83);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9e59cf8a-8d0b-468d-ae9c-abfdc5f113dc.jpg?im_w=720', 83);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f469060d-3d6f-4b28-bceb-b510eef7498b.jpg?im_w=720', 83);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9ac190ee-a3bc-4f4c-97a5-e5ba2188eed9.jpg?im_w=720', 83);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/caf733f5-d8c8-4f33-ac44-3d754ecae0ae.jpg?im_w=720', 83);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c07d1aa5-8e71-43eb-8363-d1ce4d2c7d5b.jpg?im_w=720', 83);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/91a029ec-7b14-48d4-beb7-ee9c9c33d833.jpg?im_w=720', 83);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2db07942-18a1-46ab-8de3-39e8f59610fb.jpg?im_w=720', 83);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1f92aa27-0b3c-4077-b90a-aceb25c5f248.jpg?im_w=720', 83);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8ed3bc31-b871-407b-b61e-ea5a61ea24ae.jpg?im_w=720', 83);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/69e1b652-12c6-436c-aa2a-9d31d1eceb86.jpg?im_w=720', 83);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8a28d5c6-6cbb-43b1-8611-1deabc3222d8.jpg?im_w=720', 83);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ea7f67b6-8a6d-4096-9d86-f5e8d223b7a0.jpg?im_w=720', 83);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/232c639a-da25-4dfb-a9b1-16440f7a3668.jpg?im_w=720', 83);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/815d4a95-612a-4eba-a82c-743746b4316a.jpg?im_w=720', 83);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b8526e1c-083c-4c48-a41a-99186dee2c21.jpg?im_w=720', 83);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/27a08b37-e338-4207-babb-24b68244e97b.jpg?im_w=720', 83);
insert into location(id, latitude, longitude, city_name)
values (84, 37.995, 127.356, '경기');
insert into review (id, star, review)
values (84, 5, 80);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (84, '동물들과 보내는 별이 빛나는 밤(소나무방)', '포천시의 돔하우스', 95000, '집 전체', 1, 2, 1, 84, 84, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/dcb192e5-8798-468a-b3ea-c41bfbadd130.jpg?im_w=720', 84);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f99b7f83-ee8d-4407-824d-377d80990885.jpg?im_w=720', 84);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e6ff6eb2-0cea-4952-b0b5-6f20735af972.jpg?im_w=720', 84);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7c950a4d-b88e-4d06-8c12-33ed977d8a92.jpg?im_w=720', 84);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/28b0cd3c-dbb9-4195-b9f3-12acff41213e.jpg?im_w=720', 84);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/41ee0f10-e47c-4c67-a3fb-ab1ee90f5d88.jpg?im_w=720', 84);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0a115fa4-bdd3-44ed-a038-36f5d760fc1c.jpg?im_w=720', 84);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/46fa073c-06ab-4ded-863a-60cdf8da6b93.jpg?im_w=720', 84);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/28227445-5ce7-4716-96ef-8dbda5e98e6a.jpg?im_w=720', 84);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a9ea8656-8ab1-40be-8fcf-0ebd6de66c7a.jpg?im_w=720', 84);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/04205016-da00-4362-8ef0-521c3f33f55f.jpg?im_w=720', 84);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8a67bc1d-a483-437f-93ad-485b41c3bd3d.jpg?im_w=720', 84);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1c6f48af-7590-46ce-8d6f-310d65c89c7e.jpg?im_w=720', 84);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/919cf174-34c4-4298-816f-32219f4a6734.jpg?im_w=720', 84);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7cbd0f3d-ed8e-4bca-aa1e-e3be8edb87b8.jpg?im_w=720', 84);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/95055f12-3057-4d89-96c8-623bb5c49288.jpg?im_w=720', 84);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d1bb7a2b-f5f5-4fc1-8e37-ac08b9957d1f.jpg?im_w=720', 84);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ec8afa24-f7ba-4cc4-913e-7bc4fa5707ff.jpg?im_w=720', 84);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/df7afe58-d7a4-4ac0-af9b-60abbbbb3351.jpg?im_w=720', 84);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/94ce6cfa-7af1-4c76-8357-e45b0ec0df09.jpg?im_w=720', 84);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7889b2d6-4329-4325-afa9-6aa79abd6adf.jpg?im_w=720', 84);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1dfacea1-d4dc-4a88-83b5-8c06a7e0efc8.jpg?im_w=720', 84);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/26c46acc-b2da-4cdd-9e5f-51faa43d4eb4.jpg?im_w=720', 84);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/db9629a8-356d-4bc6-b6b3-289c8c9a57e9.jpg?im_w=720', 84);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bdc00f9c-f70a-4120-9faf-2cd34de2a982.jpg?im_w=720', 84);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c02deae4-3243-41e5-85d8-e5877274ef36.jpg?im_w=720', 84);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bb4f945a-32f4-40e9-8d2d-9f6fd2cb3604.jpg?im_w=720', 84);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9a4b9dd7-9db1-42d1-b712-2d9c813b17a5.jpg?im_w=720', 84);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f680b7e0-4360-4bf2-ba1d-a8e2ec79c646.jpg?im_w=720', 84);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/35b06c80-4bc2-4d7c-b343-93fdb485d478.jpg?im_w=720', 84);
insert into location(id, latitude, longitude, city_name)
values (85, 37.504, 127.395, '경기');
insert into review (id, star, review)
values (85, 0, 1);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (85, '양평하멜하우스', 'Yangseo-myeon, Yangpyeong-gun의 전원주택 전체', 95000, '집 전체', 3, 4, 1, 85, 85, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/abb1e85d-3fe4-424a-9750-072812df0eab.jpg?im_w=720', 85);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6a5e0b68-b2c6-4d9f-9497-fffaac0bb890.jpg?im_w=720', 85);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0aa73f3b-aed1-4326-8292-e8dbcf0116c2.jpg?im_w=720', 85);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a0789a9f-7028-47c8-a749-398a78faaf24.jpg?im_w=720', 85);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5c4fd100-b39c-4de4-9eca-69c3ae8bd08d.jpg?im_w=720', 85);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6d5c2e15-9968-490b-bb0a-36bea3a607c2.jpg?im_w=720', 85);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a256551a-875f-4f2a-bd73-313d858f7c49.jpg?im_w=720', 85);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b6a8c842-7886-4055-95bc-a4eeceaa80c3.jpg?im_w=720', 85);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1b79bf3a-c533-4b1c-a02d-cd37ab091328.jpg?im_w=720', 85);
insert into location(id, latitude, longitude, city_name)
values (86, 37.705, 127.571, '경기');
insert into review (id, star, review)
values (86, 5, 217);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (86, '#나를위한시간 - 별장전체단독사용', 'Seo-myeon, Hongcheon의 전원주택 전체', 100000, '집 전체', 2, 4, 1, 86, 86, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/5dcf8b18-5481-4785-917a-1c324f5205e9.jpg?im_w=720', 86);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/17b5cfcf-0166-476b-8eb8-32f6a942c138.jpg?im_w=720', 86);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a421a614-a1ce-475e-b8f2-d6ad3180e589.jpg?im_w=720', 86);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0376fbaa-fe40-4924-b6d0-78c40f9cbd76.jpg?im_w=720', 86);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/00e5b41d-8464-46bc-910c-82ce6e753f9c.jpg?im_w=720', 86);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/051806f9-8a96-4fb7-9b31-f2cb5cd68f2d.jpg?im_w=720', 86);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7c13bdec-4972-4f4b-be61-d7a41fbf3078.jpg?im_w=720', 86);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/20f21bff-c355-49b3-a498-a3c01d9403dd.jpg?im_w=720', 86);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d24d8d86-0713-47d2-89b5-e7288da8c494.jpg?im_w=720', 86);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/14d9b96b-4b19-4d91-9ba8-5887198d960b.jpg?im_w=720', 86);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e68f70a6-1aa1-471c-a92a-125560b8c462.jpg?im_w=720', 86);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/38ea0236-8131-4c6b-8d2a-4d9c4e2aa399.jpg?im_w=720', 86);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/34d62618-ac03-424f-9f93-7499469c9116.jpg?im_w=720', 86);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5d9b1ebe-5690-4f21-adbb-094d93a914bd.jpg?im_w=720', 86);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/edc66af0-be0d-40f8-9488-1461055318ef.jpg?im_w=720', 86);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3a4e41a8-d79f-4e5d-8752-400cb9037e12.jpg?im_w=720', 86);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9e80b954-d2d0-40d5-9bd0-09e5c6fedd63.jpg?im_w=720', 86);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a744a9f3-bedc-4561-9890-3b8e73db22a4.jpg?im_w=720', 86);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8b14c988-d985-4b10-99f4-f93846cd5b3b.jpg?im_w=720', 86);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2ec56f67-e7d0-44a3-ad98-8961380b971e.jpg?im_w=720', 86);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3b037db0-9936-4555-8464-c925988bc3ee.jpg?im_w=720', 86);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/12d66960-da46-48f1-a2a1-c4797c47bfa4.jpg?im_w=720', 86);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4a6b2a65-3eb3-472c-b1aa-bedcdf349448.jpg?im_w=720', 86);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c7cbf412-c589-4ae5-8c67-1b6282f54342.jpg?im_w=720', 86);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7150ff4f-7175-4ac4-9b85-8d8f4a6378cd.jpg?im_w=720', 86);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/36b3eda3-5235-48ec-a335-d7a26e6693f5.jpg?im_w=720', 86);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1aa945ee-2965-45b5-a062-010695bc6f2c.jpg?im_w=720', 86);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0c8f6015-6ab9-4cf7-beff-06b1743f1410.jpg?im_w=720', 86);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1f688f0c-fa88-4a04-8387-9500f24d0013.jpg?im_w=720', 86);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f51093b1-81ff-48ad-8410-a6b839be7636.jpg?im_w=720', 86);
insert into location(id, latitude, longitude, city_name)
values (87, 37.527, 126.907, '경기');
insert into review (id, star, review)
values (87, 5, 160);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (87, '나무, 구름, 하늘 [독채]', 'Yeongdeungpo-dong, Yeongdeungpo-gu의 집 전체', 95000, '집 전체', 1, 2, 1, 87, 87, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44627918/original/502b602e-b63b-425c-b521-79b532516aed.png?im_w=720',
        87);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44627918/original/9a2ec2eb-8090-47ee-9b53-61c075f3e729.png?im_w=720',
        87);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44627918/original/0a7bf89c-979d-43a5-b256-dcc6255a889d.png?im_w=720',
        87);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44627918/original/282ca6ec-db46-4cb3-bdb6-3ede549cb182.jpeg?im_w=720',
        87);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44627918/original/ebb95d3f-ba74-4cb6-81f7-ba5b6b27b417.png?im_w=720',
        87);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44627918/original/8c00bf6b-38e9-486e-b8ef-d2c858f440e7.png?im_w=720',
        87);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44627918/original/149f1445-cc1a-4e9b-ae1c-4e90fba2f9c2.png?im_w=720',
        87);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44627918/original/208c036a-5c08-4a71-b3f9-e12c9b88c9d8.png?im_w=720',
        87);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44627918/original/fdc71986-999b-4600-b4e9-c29b0fb325f0.png?im_w=720',
        87);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44627918/original/73bd916a-2253-4e22-b814-11b0685be0e7.png?im_w=720',
        87);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44627918/original/1598e357-48e7-4da3-8f68-04a9697cc18a.png?im_w=720',
        87);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44627918/original/fd64da86-2fbd-4612-b91c-7b4a8a973812.png?im_w=720',
        87);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44627918/original/581e6c1e-371a-42f0-b1a1-a0d07905ac16.png?im_w=720',
        87);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44627918/original/9738496e-6e37-4305-9e69-eebf40af03d2.png?im_w=720',
        87);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44627918/original/1a1db273-263f-4600-8a37-1235680de704.png?im_w=720',
        87);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44627918/original/b9f80c78-78e6-469f-9503-f75b28c5b912.png?im_w=720',
        87);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44627918/original/a014a4cc-75f1-49f8-88a0-df533a72bd85.png?im_w=720',
        87);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44627918/original/86025f59-c636-41a0-a907-3f5456bc7376.png?im_w=720',
        87);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44627918/original/cfaf78ee-7825-449c-aba1-7daf40fb1aa9.png?im_w=720',
        87);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44627918/original/46eaa539-3fb2-40b0-8825-8298cf9fed0a.png?im_w=720',
        87);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44627918/original/40572b1d-d938-4606-9fba-ea8b64a35753.png?im_w=720',
        87);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44627918/original/5ec0d2a7-dded-4411-aa95-03f15c1016f3.png?im_w=720',
        87);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44627918/original/369abbce-3c51-4e66-8aa8-ce1264bf020b.png?im_w=720',
        87);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44627918/original/90a436f4-36ce-43c0-9244-c58b5a82ee42.png?im_w=720',
        87);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44627918/original/9621939a-4cc4-4253-80c4-4392d86b2761.png?im_w=720',
        87);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44627918/original/c31b4d14-e748-45b2-9ffc-423761f35b3a.png?im_w=720',
        87);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44627918/original/ea154a93-8a80-42fe-b834-c6f35f437514.png?im_w=720',
        87);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44627918/original/b98c58d8-43b7-4872-9244-81bd6b10354d.png?im_w=720',
        87);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44627918/original/8b8d28bf-a04d-4fac-bf3b-dfb8f6d5e3c5.png?im_w=720',
        87);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44627918/original/116c8299-a2ca-4a00-b084-73a72585532b.png?im_w=720',
        87);
insert into location(id, latitude, longitude, city_name)
values (88, 37.863, 127.734, '경기');
insert into review (id, star, review)
values (88, 5, 304);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (88, '춘천 동주(WithStay) - 한옥 독채(노키즈)', 'Hyoja 2(i)-dong, Chuncheon-si의 집 전체', 85000, '집 전체', 4, 2, 1, 88, 88, 1,
        1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/5bb2858e-7276-4542-935e-a9af8d62e1ae.jpg?im_w=720', 88);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/348d0215-e840-4035-9b49-059960463a72.jpg?im_w=720', 88);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c92de0b3-60d0-4ca0-9551-a10bff278928.jpg?im_w=720', 88);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/55e3dae6-1208-4640-970b-74edf4a61dff.jpg?im_w=720', 88);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/59f27b9a-b5cf-4e79-add0-37d27781044e.jpg?im_w=720', 88);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/766f6fcb-8669-4cb4-b713-c1a5e0bd576e.jpg?im_w=720', 88);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/68383e18-7795-407a-a305-6383adb0f3c8.jpg?im_w=720', 88);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/44742023-5df1-4efb-a0a4-6647295c83fc.jpg?im_w=720', 88);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bba72d5e-ee59-4874-aea1-8f44bc14163c.jpg?im_w=720', 88);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d206dabb-ee10-4e7f-baab-9b85185a5e31.jpg?im_w=720', 88);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8062232a-c6d7-46ac-8a60-63854cfe2d05.jpg?im_w=720', 88);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4aa18d92-fd27-4f3b-8e69-f4f53c1c2be0.jpg?im_w=720', 88);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/adc1b503-9b1a-4c12-b737-996645c1d019.jpg?im_w=720', 88);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7d7399d9-6517-4725-befe-68afb37a55bf.jpg?im_w=720', 88);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6de78179-4827-47c2-8ae9-6d3822e08d1e.jpg?im_w=720', 88);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/84449b49-7652-49cd-9523-7321ca2e2c43.jpg?im_w=720', 88);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/87419e04-61fc-48f9-9569-e5cac82196fa.jpg?im_w=720', 88);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8dbc5545-9cae-400c-8c19-7f3265d2f315.jpg?im_w=720', 88);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cac1f4cb-9332-4bcc-83ed-a8c96ea41281.jpg?im_w=720', 88);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/65e0e121-7354-4ddd-9bc7-d215226af736.jpg?im_w=720', 88);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2e0736e8-da50-4189-99ec-caf0258a71ae.jpg?im_w=720', 88);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0f4a88d5-409c-40c7-b673-bd73e946fa42.jpg?im_w=720', 88);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/83d23915-2b64-454d-926b-c362d9a1a120.jpg?im_w=720', 88);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/afc4802f-d6cd-426e-bb50-b060a4365305.jpg?im_w=720', 88);
insert into location(id, latitude, longitude, city_name)
values (89, 37.871, 127.235, '경기');
insert into review (id, star, review)
values (89, 5, 127);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (89, '내집이려니(정원이 있는 별채)', 'Gunnae-myeon, Pocheon-si의 게스트용 별채 전체', 93000, '집 전체', 0, 4, 1, 89, 89, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/61b0d095-bd20-4d7f-b52b-ec6fee11b6fa.jpg?im_w=720', 89);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3643f4f2-8a40-457f-8240-9662f66e0278.jpg?im_w=720', 89);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fd43cccf-b145-46fb-8621-b4d4246ddc36.jpg?im_w=720', 89);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3b998b26-47dc-4087-b555-edadcf0e0b88.jpg?im_w=720', 89);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e9c3d966-505f-4972-9c81-89e8e889a3b6.jpg?im_w=720', 89);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/059905e0-bdd3-4362-88a0-74b776f60ea1.jpg?im_w=720', 89);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e414da06-2594-48c5-841e-523988425f44.jpg?im_w=720', 89);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d5ff7bae-7fa8-4fb7-95d4-42dad5fd5279.jpg?im_w=720', 89);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6eaaeef3-ee7b-4165-a1b7-85ac07786c24.jpg?im_w=720', 89);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/625d9b8a-97cb-4973-b046-d5b6785baaae.jpg?im_w=720', 89);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7c649873-1837-42b2-9acf-43101b2838b7.jpg?im_w=720', 89);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/46e0f824-4920-43e0-8a21-922415e5f306.jpg?im_w=720', 89);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/06f1272f-aaae-4239-adc2-a9ffb5848a76.jpg?im_w=720', 89);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6d929238-0b21-4589-ba80-965702d9b0d5.jpg?im_w=720', 89);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e29506d4-8795-4f56-9595-bb8679becb52.jpg?im_w=720', 89);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8baad320-3c6c-4f6b-9141-ee8f778194a0.jpg?im_w=720', 89);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/da5ded47-3129-400d-8c20-e2fc095587da.jpg?im_w=720', 89);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1a773cda-b86e-4989-bc1e-0477b587715b.jpg?im_w=720', 89);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5846d2c4-9a63-4ca0-9e30-92497af9521f.jpg?im_w=720', 89);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f67f7ffe-840a-47e1-bc95-f5531fff244c.jpg?im_w=720', 89);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6ac0bbf0-111e-4cee-8b84-68036877f125.jpg?im_w=720', 89);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b21dcf64-8e8e-41aa-ab7b-a3ba4fd30744.jpg?im_w=720', 89);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ba0fd348-dd03-4429-b3fa-a121d7d87207.jpg?im_w=720', 89);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c51ebd2a-60ad-46b2-9a50-7bc3b709fe9c.jpg?im_w=720', 89);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a0cd2a44-885a-429f-9b7c-5784443dab7b.jpg?im_w=720', 89);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c9a5d8b9-4fc9-45a5-9190-4b5bbe2ff420.jpg?im_w=720', 89);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/56655112-96ab-48f8-a4e0-84885b722719.jpg?im_w=720', 89);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/331a8321-28f6-4ef3-b224-c818b7c1eb9c.jpg?im_w=720', 89);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ddf9aa81-33f0-4aba-96f7-3e5d0f14939c.jpg?im_w=720', 89);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9c69022c-4c49-4c62-b7e1-330cd8fcdec4.jpg?im_w=720', 89);
insert into location(id, latitude, longitude, city_name)
values (90, 37.782, 126.707, '경기');
insert into review (id, star, review)
values (90, 4.5, 43);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (90, '헤이리 힐스 단독주택프로방스 킨텍스 파주 프리미엄 아울렛  영어마을 헤이리마을 파주출판단지', '파주시의 게스트용 별채 전체', 95000, '집 전체', 1, 4, 1, 90, 90, 1,
        1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/d035b621-6e89-4bed-9408-fdf78e2ab917.jpg?im_w=720', 90);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bdb755ae-9550-46e4-9d0d-5ed9fbe68261.jpg?im_w=720', 90);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5bdc0a77-1d33-4614-a489-d25ea3170d30.jpg?im_w=720', 90);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d3ac6f7a-cb09-49df-b8c5-c7ce68c2a4d0.jpg?im_w=720', 90);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3d7e5fca-74f7-4402-aede-8bc31a0ca3a0.jpg?im_w=720', 90);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4227e5dc-6232-4a39-b6f2-0e0ccfe5141b.jpg?im_w=720', 90);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c454467b-548a-495d-9075-39999a449d05.jpg?im_w=720', 90);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/23a7e646-c7e3-4447-b7b7-3b8cf65f77c9.jpg?im_w=720', 90);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/db7ed483-d3b7-4a99-a390-1826972702fc.jpg?im_w=720', 90);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0f74443d-1a4a-4ec8-b1dc-cf0c57497c4d.jpg?im_w=720', 90);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/694df171-c845-41b4-9c2a-3c07ddc8af3f.jpg?im_w=720', 90);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6c463df9-2e29-469e-8e74-ead834c26af3.jpg?im_w=720', 90);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8086a37a-53f8-4def-a09a-b82e026d31b2.jpg?im_w=720', 90);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b88429f5-3e24-437e-8015-937fa50abc7a.jpg?im_w=720', 90);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4eaed735-c7e3-44d1-b9a9-99184f17791c.jpg?im_w=720', 90);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3ee89267-e0c6-4286-8604-c6f4c9cdcd24.jpg?im_w=720', 90);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/30a589c6-283f-4893-994a-46281004242a.jpg?im_w=720', 90);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4c886494-67fc-42e5-932a-7c2ab5c44094.jpg?im_w=720', 90);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f4790c1c-d14e-46f4-85e3-b5f8fe0eb0d1.jpg?im_w=720', 90);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/12aabc7f-aa1f-4c8a-82f5-b07fc6ff455a.jpg?im_w=720', 90);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e59327c6-3031-4534-bd49-ae3be44fad89.jpg?im_w=720', 90);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d999748f-cedf-46b2-abbb-4db65495a9a7.jpg?im_w=720', 90);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8bc4b1cf-b580-455d-8c52-f7c302c836ed.jpg?im_w=720', 90);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3c13edfa-9308-43fd-ba9e-19a2e49ba8fa.jpg?im_w=720', 90);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a5de000d-86d0-4543-9485-d749f26ba9ae.jpg?im_w=720', 90);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8da3f833-6b5d-40a9-aceb-427051aa26d8.jpg?im_w=720', 90);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/78cca35a-cd5b-4002-bc7e-f6b4780add6b.jpg?im_w=720', 90);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/efeed921-470f-4da2-9116-400a747760c3.jpg?im_w=720', 90);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/30609fba-15a0-4001-8726-18b80ab7d4de.jpg?im_w=720', 90);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bd80e034-5ab8-4bfb-9c4f-1917ab9157c9.jpg?im_w=720', 90);
insert into location(id, latitude, longitude, city_name)
values (91, 37.507, 127.098, '경기');
insert into review (id, star, review)
values (91, 5, 163);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (91, '[20%할인 이벤트] 5 min to Lotteworld Lake View 뷰+조명맛집', 'Songpa-gu의 아파트 전체', 98000, '집 전체', 2, 3, 1, 91, 91, 1,
        1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/9b225485-0859-462d-993b-2afc437402e9.jpg?im_w=720', 91);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/549d7b91-27c8-4a69-899f-9c159e6f6594.jpg?im_w=720', 91);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/65517d42-a51b-4bae-86cf-9be47dff13c1.jpg?im_w=720', 91);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7dcd123c-9eae-4ce9-9243-30cac48c36c9.jpg?im_w=720', 91);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/63e39211-cd6b-44a7-82a2-4cb34fb2f1d2.jpg?im_w=720', 91);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ed8d7811-6e5c-48f0-ba31-5ebf256d597a.jpg?im_w=720', 91);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7e63e0fa-6e37-42b8-916a-429863be3b58.jpg?im_w=720', 91);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b7db99bc-77b5-40b3-9bac-6e465fcd9754.jpg?im_w=720', 91);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/06758261-b366-4fc2-81d6-0aa6e88a660f.jpg?im_w=720', 91);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/34ba7134-b682-4b73-82c2-45f65b385f02.jpg?im_w=720', 91);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e19fca6f-22fc-4fbe-9a1a-cd7bf16b0178.jpg?im_w=720', 91);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7605842a-dc64-4127-adb8-e715e4dd0509.jpg?im_w=720', 91);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2d2c9f2a-85ba-41c8-a9cf-47c38979c9f7.jpg?im_w=720', 91);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f1fb8337-6515-4966-ace8-aa1f0361e0d2.jpg?im_w=720', 91);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a4a3bb72-fff6-449f-857c-81301f6718b9.jpg?im_w=720', 91);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f6e08d81-ec09-4e59-8565-ae2312f02295.jpg?im_w=720', 91);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0579f56e-bf23-4dc5-819d-1bb09f825835.jpg?im_w=720', 91);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2fecf6c4-df95-46d8-88ea-111d406f83c2.jpg?im_w=720', 91);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/479ffb23-ce2d-44e8-9804-2089bf1984b5.jpg?im_w=720', 91);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/139f4ee6-9796-4a35-875f-ecd1194e8113.jpg?im_w=720', 91);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8b7f858a-db62-44d2-8e46-c01dc37b1cee.jpg?im_w=720', 91);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5c1f965a-5514-4061-8b5c-2b757798914f.jpg?im_w=720', 91);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/da78944c-34fd-4768-bee2-c69fa932ba05.jpg?im_w=720', 91);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c5a638f2-ba97-4fb7-8f1e-9d44eec8b84d.jpg?im_w=720', 91);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/83d01d5c-fc35-4e40-aa27-2340d34638c5.jpg?im_w=720', 91);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/09d17633-22e0-4134-b911-ee408a75811f.jpg?im_w=720', 91);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b3308261-6113-49b8-be47-54bd9c199588.jpg?im_w=720', 91);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/224ed3af-a834-43fb-b00c-2d7e76d0d829.jpg?im_w=720', 91);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/84e9e429-5f4d-4448-a869-bbbfa1394900.jpg?im_w=720', 91);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/df05f324-3681-422c-a17b-30292ea6cf89.jpg?im_w=720', 91);
insert into location(id, latitude, longitude, city_name)
values (92, 37.761, 127.363, '경기');
insert into review (id, star, review)
values (92, 5, 32);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (92, '*102호 #감성해먹 + 4K빔프로젝터 넷플릭스 완비', 'Sang-myeon, Gapyeong-gun의 게스트용 별채 전체', 100000, '집 전체', 1, 2, 1, 92, 92, 1,
        1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/98280fd4-6a97-47cf-bf02-6ae4c38584b2.jpg?im_w=720', 92);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/01fdf237-25e1-4e85-95aa-de0ee362bfad.jpg?im_w=720', 92);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-45573216/original/ad7eeab2-7fb7-4241-b6f2-7ac8b811ca5b.jpeg?im_w=720',
        92);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-45573216/original/2eca1b8b-7931-40ca-b17c-690e3dd4a814.jpeg?im_w=720',
        92);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8d7c159c-8682-47e2-8198-33839a35a7d6.jpg?im_w=720', 92);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3f49f404-f02f-4b79-b816-9c51d68f927b.jpg?im_w=720', 92);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0c54c586-b680-4a31-9b03-a2ff8a99cc03.jpg?im_w=720', 92);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4aa846ae-ec79-47bf-8f81-03df39003532.jpg?im_w=720', 92);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-45573216/original/2109943b-0c8c-4a41-81f7-a4df13dde50c.jpeg?im_w=720',
        92);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-45573216/original/a79a6172-be3b-46f8-b491-91e8c01f4717.jpeg?im_w=720',
        92);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-45573216/original/692b65bb-fe32-44cd-b34c-d2239be5c30e.jpeg?im_w=720',
        92);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/faa07b9c-441c-4eb6-ac8b-64a79479fb4b.jpg?im_w=720', 92);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0d964869-77c5-434e-a184-a6f22058e17e.jpg?im_w=720', 92);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dcadeff0-8f67-4816-bb2d-8bfde08d5fc6.jpg?im_w=720', 92);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-45573216/original/ebf8f8c6-58c6-424e-b5e1-581cd8802030.jpeg?im_w=720',
        92);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-45573216/original/8727177a-afcd-40e1-9652-1d63c0609439.jpeg?im_w=720',
        92);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b55feab0-9db2-4ab0-85f6-c27d79d1247d.jpg?im_w=720', 92);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-45573216/original/2a3a23c8-8479-4eb1-b3d0-f3b061ced9b6.jpeg?im_w=720',
        92);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-45573216/original/0bc4a9d3-5f6e-42dd-a9f4-6707500f4827.jpeg?im_w=720',
        92);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-45573216/original/5266a614-856c-4cf5-b06c-7e54b10d99ed.jpeg?im_w=720',
        92);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-45573216/original/fb5585b9-82d9-4169-bc95-2f963dbcd25a.jpeg?im_w=720',
        92);
insert into location(id, latitude, longitude, city_name)
values (93, 37.71, 126.759, '경기');
insert into review (id, star, review)
values (93, 5, 18);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (93, '[신축] 야당역 5분/헤이리마을/파주아울렛/퀸사이즈 배드, 파주 ‘행스테이’', '파주시의 레지던스 전체', 90000, '집 전체', 1, 2, 1, 93, 93, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/4792ff40-ca41-4d0b-98f6-ff053c0180a8.jpg?im_w=720', 93);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/383ebbd6-5acf-4511-a2d8-56b77334c0ec.jpg?im_w=720', 93);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e892f302-d775-4940-b277-bbd680399d71.jpg?im_w=720', 93);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/015fa243-2efc-42a6-9f20-05ac5cf740bc.jpg?im_w=720', 93);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/810403c4-2446-4b4e-8d11-935fb7db7ee7.jpg?im_w=720', 93);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fa1c5905-25db-4973-a15d-dd2a47ef7c1e.jpg?im_w=720', 93);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7314c0bb-30d7-4d48-a2b8-3822f232f5d1.jpg?im_w=720', 93);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1363f2f8-ad86-4368-95ae-cb556b183880.jpg?im_w=720', 93);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cdfa9085-bb45-4f75-bbdf-71e1093d86de.jpg?im_w=720', 93);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/906df9cc-911c-4981-816b-f1cfb9e103b5.jpg?im_w=720', 93);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2b07db2d-b17f-49cf-8943-e2210e9a1c69.jpg?im_w=720', 93);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/16d56a9d-b8ad-487c-8a9a-d42371792472.jpg?im_w=720', 93);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/060063a2-74cf-46ed-ba1c-b6fcaf65dd91.jpg?im_w=720', 93);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/178a7b74-0ec3-4a39-a1f8-c2e234b814fe.jpg?im_w=720', 93);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/12994dfd-5b77-4f7e-8aa4-7e6f3a8d2449.jpg?im_w=720', 93);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e8b6a5ce-e18c-4843-8104-ccf733291eee.jpg?im_w=720', 93);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ea78027b-7cab-4f62-87c6-502cfb377247.jpg?im_w=720', 93);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/528787d0-2a80-4d51-b3f4-b82a284de5cb.jpg?im_w=720', 93);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/47009b3c-638c-446e-9982-8107eca2c926.jpg?im_w=720', 93);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7420cf39-c6c7-4fae-9051-318f8724787c.jpg?im_w=720', 93);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/69fb8721-5325-4ef3-a570-35e16c477cfa.jpg?im_w=720', 93);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9d5f69b0-26e9-49e8-a708-011118781ee9.jpg?im_w=720', 93);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/665ad252-88d1-436a-9c66-f96829267017.jpg?im_w=720', 93);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e96e7e5a-1ec0-476b-81ca-df4c4a3d62ea.jpg?im_w=720', 93);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f9f80c02-61af-460d-a8cf-ed4cf36f1307.jpg?im_w=720', 93);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/54c8e64b-9307-4a32-a4dc-d2f11e861d6c.jpg?im_w=720', 93);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c56bb360-d753-4cc9-aa6d-73350b60d6bc.jpg?im_w=720', 93);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cc25d238-0c72-4fbf-aed8-59b97d0f853e.jpg?im_w=720', 93);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ca54de67-3191-442d-95fa-cd4dea5f3a9f.jpg?im_w=720', 93);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a2634695-150f-4cd8-b943-9baef56f6c46.jpg?im_w=720', 93);
insert into location(id, latitude, longitude, city_name)
values (94, 37.527, 126.907, '경기');
insert into review (id, star, review)
values (94, 5, 229);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (94, '나무, 새, 고양이 [독채]', 'Yeongdeungpo-dong, Yeongdeungpo-gu의 집 전체', 95000, '집 전체', 1, 2, 1, 94, 94, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/49fd87ac-bf86-4ea0-9375-b233e898e0dd.png?im_w=720',
        94);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/71636cee-5220-47b0-ad3c-feb5671cf7cb.png?im_w=720',
        94);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/39247db5-b9f7-4e30-b214-3572d38f26d4.png?im_w=720',
        94);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/545ebe46-875c-4edc-ba69-40f618284124.jpeg?im_w=720',
        94);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/4e1dc53a-fdfb-4abd-a6c1-42f914b6a1d8.png?im_w=720',
        94);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/718794d8-61d3-48b7-9c40-e94f27b0c4eb.png?im_w=720',
        94);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/c81a9c7d-577c-40ea-b7f0-1c0514e70b11.png?im_w=720',
        94);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/a66e53f0-c3ee-4199-a781-4d1859bfccea.png?im_w=720',
        94);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/4585b685-2ab7-485c-8cc5-d63c2c5c2696.png?im_w=720',
        94);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/55919b0d-2293-40a1-978a-f53438e56ac1.png?im_w=720',
        94);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/a1e664fb-596a-4858-ab8c-ce30344f4d5a.png?im_w=720',
        94);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/e6669eef-8814-43f7-88ab-eaf01ecedbeb.png?im_w=720',
        94);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/9d1fd822-a752-4904-9f89-7964e52e4053.png?im_w=720',
        94);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/89f4f92e-b31d-480c-a99b-833162fbc211.png?im_w=720',
        94);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/43dfb28c-717d-424b-8228-5bbf8fe31a17.png?im_w=720',
        94);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/5dd01249-5e32-4f7f-bf74-7a7511afc8aa.png?im_w=720',
        94);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/90fbb5dc-73bc-4345-866b-097ef3d0276f.png?im_w=720',
        94);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/6dc3f75a-dfe2-497c-a868-bfd5a97571af.png?im_w=720',
        94);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/e36113cc-b3c3-4e61-9269-7e92b247a1dc.png?im_w=720',
        94);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/37c1f9e1-c900-48b5-9bb1-567165ed5c51.png?im_w=720',
        94);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/43778e64-fbfd-4888-a66c-939d875f06fa.png?im_w=720',
        94);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/0b5e6d88-ca12-4fd8-b4db-45b18612f8e9.png?im_w=720',
        94);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/132b3532-194a-4190-b011-74b3ad0a6bc0.png?im_w=720',
        94);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/b622ba2d-1be7-4b72-9e74-0f675a59489e.png?im_w=720',
        94);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/46fe1857-53af-4fdc-8cf9-14b8837660df.png?im_w=720',
        94);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/ec064ac4-146d-4576-8356-2bb9d45c485d.png?im_w=720',
        94);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/f689fe35-ecb2-4647-afa1-fe709549dd52.png?im_w=720',
        94);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/02b831a3-4512-4ce9-92f4-2f4587a4e769.png?im_w=720',
        94);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/0f7f8c76-d0a2-4fca-abb9-372f3e37503e.png?im_w=720',
        94);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/fb0070e9-345e-4907-8caf-e68a1d0b434d.png?im_w=720',
        94);
insert into location(id, latitude, longitude, city_name)
values (95, 37.516, 127.437, '경기');
insert into review (id, star, review)
values (95, 5, 352);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (95, '조용한 힐링을 원하신다면 넓은 정원이 있는 안락한 양평', 'Okcheon-myeon, Yangpyeong-gun의 전원주택 전체', 100000, '집 전체', 3, 6, 2, 95, 95,
        1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/92143445/17703440_original.jpg?im_w=720', 95);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1951e7b5-bc20-4e7a-bd55-95453ea74f52.jpg?im_w=720', 95);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a92e52f8-0569-45aa-bd1c-f6194f95bd4c.jpg?im_w=720', 95);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cfb2dba9-730f-46cc-ac22-66f9b9cd82af.jpg?im_w=720', 95);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9b2867a1-22ac-4f0a-82a4-3e0a73fdc4fa.jpg?im_w=720', 95);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e826dbb4-f142-471f-86cf-cd375c4e2ec7.jpg?im_w=720', 95);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bdb7c55c-c275-42f1-9b3a-76e286591645.jpg?im_w=720', 95);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4934f0bd-ac2c-4236-ac87-c678b41db6dd.jpg?im_w=720', 95);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ea685a21-87ec-44c7-8856-236b6fe47bcc.jpg?im_w=720', 95);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/92143533/e996235e_original.jpg?im_w=720', 95);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/92143536/85bc6140_original.jpg?im_w=720', 95);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/92143482/b99f0499_original.jpg?im_w=720', 95);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/92143471/1eed617d_original.jpg?im_w=720', 95);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/92143496/c191f45e_original.jpg?im_w=720', 95);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/92143510/6b1abf9d_original.jpg?im_w=720', 95);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/92143547/9edeadf3_original.jpg?im_w=720', 95);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/92143545/29553189_original.jpg?im_w=720', 95);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/eaf88f3e-9a20-4dba-ab61-3c73d699bd81.jpg?im_w=720', 95);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/92143590/97851d5e_original.jpg?im_w=720', 95);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/92143649/b60b9b38_original.jpg?im_w=720', 95);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/92143702/ab700367_original.jpg?im_w=720', 95);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/92143712/d6c8e810_original.jpg?im_w=720', 95);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1948bd7a-095a-4ad6-92c7-d1974277bbd0.jpg?im_w=720', 95);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bed62cc9-3866-405f-96ba-d8e70c25a689.jpg?im_w=720', 95);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/92143750/5514e55f_original.jpg?im_w=720', 95);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/95669687/fb633515_original.jpg?im_w=720', 95);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/95669717/8d18b303_original.jpg?im_w=720', 95);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f2cec106-c06a-4bdf-b9d3-08c0a7c07242.jpg?im_w=720', 95);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5acedfc9-6dbd-409f-8870-50ca296fec8e.jpg?im_w=720', 95);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/60be9d63-f571-4b3a-a2ff-453fc6595048.jpg?im_w=720', 95);
insert into location(id, latitude, longitude, city_name)
values (96, 37.541, 126.952, '경기');
insert into review (id, star, review)
values (96, 5, 167);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (96, '세컨홈 : 작은테라스', 'Dohwa-dong, Mapo-gu의 콘도(아파트) 전체', 95000, '집 전체', 3, 3, 1, 96, 96, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/b33a797e-1a35-4de6-a963-4d4cec4b4e73.jpg?im_w=720', 96);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fa3cfefb-9010-4565-a9ac-b12c4a658c3a.jpg?im_w=720', 96);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1a3e1ae0-510b-41c5-a2de-89087574e008.jpg?im_w=720', 96);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/36eb050c-3aac-4b4f-8b15-885b326f0c7e.jpg?im_w=720', 96);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/da171def-a7ec-48ff-ad16-6166eb6b029b.jpg?im_w=720', 96);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9b06a57d-eec1-4b10-984e-4ed006a7bdc7.jpg?im_w=720', 96);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0570d8cb-a832-441a-8e87-386083b9536a.jpg?im_w=720', 96);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5b0ca335-ed7a-41bd-b4f5-1d1b276f6e32.jpg?im_w=720', 96);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e44c757b-778a-4fcd-bd73-856f2b83a649.jpg?im_w=720', 96);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/db9c4440-c281-4d3f-be88-dcb6e029eafc.jpg?im_w=720', 96);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/50df5a35-7c0d-4b05-b5e9-8390dd458505.jpg?im_w=720', 96);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d4e09850-acf3-48e3-9de4-cdb1d4febf8a.jpg?im_w=720', 96);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9bbb5041-2513-4a83-8d76-002b676da62b.jpg?im_w=720', 96);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bda770fb-4920-43ec-a75f-774e78fcf87f.jpg?im_w=720', 96);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2c3cd542-e7ea-408f-85d0-1ec7860d86c0.jpg?im_w=720', 96);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/18349a96-11b6-417d-8b2e-841e1523b06d.jpg?im_w=720', 96);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8d83bf9d-5053-4c4b-bc1f-24782e2dd3c6.jpg?im_w=720', 96);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1d622571-6a38-41b3-98be-8cd3f6170453.jpg?im_w=720', 96);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5d8ea727-8bab-4db6-b132-e76f6ea25967.jpg?im_w=720', 96);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/395970d6-c819-4d02-84c8-74484950d543.jpg?im_w=720', 96);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8a236f9e-dbb9-4ecd-96d3-adca0fe0846b.jpg?im_w=720', 96);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/24321091-0897-423a-8a54-d27575961cd7.jpg?im_w=720', 96);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d9daf66e-a1ee-455e-89d0-4721426f02c7.jpg?im_w=720', 96);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b9ede3f8-f94b-4ad7-b2f9-de0463d58a51.jpg?im_w=720', 96);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6ec15a55-5627-4424-803e-b243a07f520e.jpg?im_w=720', 96);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bf4e8a7f-eb69-4fb6-8855-020c4fb2b40b.jpg?im_w=720', 96);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7ad06a39-8681-4bc3-a979-b37265dbf9b7.jpg?im_w=720', 96);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/615a79ab-0527-41de-8f86-55f6ee844c50.jpg?im_w=720', 96);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/304c2ec1-261b-44b9-871d-cc45c6a11e16.jpg?im_w=720', 96);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/866f42f5-5990-4d20-974d-c92d5a21abf7.jpg?im_w=720', 96);
insert into location(id, latitude, longitude, city_name)
values (97, 37.285, 127.059, '경기');
insert into review (id, star, review)
values (97, 5, 115);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (97, '윤윤스테이 광교중앙역 :: 무료주차.티비.컨벤션.호수.갤러리아백화점', 'Woncheon-dong, Yeongtong-gu, Suwon-si의 아파트 전체', 100000, '집 전체', 1,
        2, 1, 97, 97, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/790b4640-9cfc-4d24-9b44-778d58bdd6d7.jpg?im_w=720', 97);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2cf1783e-4491-4fda-95e5-df9d8c1ee5a4.jpg?im_w=720', 97);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a787f5b5-05c6-4a47-9c31-2d5aa5a98a58.jpg?im_w=720', 97);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4ce0446e-af67-4ed0-b740-287de7561c5f.jpg?im_w=720', 97);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7cdc335c-5e11-4ddb-a53a-f40fb08ab2d9.jpg?im_w=720', 97);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1cf5e38b-f9a7-4f82-b50f-6ff5f1cf3d7e.jpg?im_w=720', 97);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dbf9e333-0ee4-4a2c-9db6-cdccebed7183.jpg?im_w=720', 97);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/889a869f-955e-4cbe-a749-e4c7c592b62b.jpg?im_w=720', 97);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3b87a613-023c-438e-9958-93e261326687.jpg?im_w=720', 97);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b6c1b789-a2c6-4ce8-b3b0-4089243a22e0.jpg?im_w=720', 97);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b91f6539-a91b-46e3-806c-7420e269bdd1.jpg?im_w=720', 97);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/64544029-0ea0-4f8f-9339-14a50eae3fa1.jpg?im_w=720', 97);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4f3159b6-58ec-469d-b24f-f39f68f78d09.jpg?im_w=720', 97);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4eb2868d-1c09-4f98-b309-49c46de9b06c.jpg?im_w=720', 97);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8450d297-eed9-4a4e-9725-eb019d102ade.jpg?im_w=720', 97);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/153b26ef-9e20-4297-8e7d-6e3afe9e4ae7.jpg?im_w=720', 97);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/418bdc8f-d638-45c0-a5cb-085d2c2803ee.jpg?im_w=720', 97);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6539d47d-8d26-4c9c-a487-33a9d34a5f0a.jpg?im_w=720', 97);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bd510cfa-3242-480f-b70e-8344e5f01135.jpg?im_w=720', 97);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/17152651-8776-4a4f-bbc7-9afcbc0975e4.jpg?im_w=720', 97);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2cfdde38-81dd-40ab-ab34-4271bbe5fd78.jpg?im_w=720', 97);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2082782e-2d11-4728-8efd-60a95a55d9a0.jpg?im_w=720', 97);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/21f3450c-564b-42cb-8312-6e2e0581fbae.jpg?im_w=720', 97);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1bdf7258-5044-4339-8876-837e4b91c79a.jpg?im_w=720', 97);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8e7d55ea-3761-42fa-a5a9-000fc1825d72.jpg?im_w=720', 97);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6f605022-f92b-441f-b0c5-ad878078d73e.jpg?im_w=720', 97);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/22560413-d2f2-4d9e-89d1-f631e92e3464.jpg?im_w=720', 97);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/10eaccab-c1e7-4a8d-9eb4-357a6c0921a2.jpg?im_w=720', 97);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1f2da972-6310-4a12-9ddd-eda80ae9068f.jpg?im_w=720', 97);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b5cf3d90-9a29-45a9-a6a6-253883f16d70.jpg?im_w=720', 97);
insert into location(id, latitude, longitude, city_name)
values (98, 37.58, 126.97, '경기');
insert into review (id, star, review)
values (98, 5, 13);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (98, '[독채한옥]경복궁역, 통인시장 인근의 아름다운 한옥', 'Cheongunhyoja-dong, Jongno-gu의 집 전체', 92000, '집 전체', 1, 2, 1, 98, 98, 1,
        1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48138255/original/051cebb5-fddd-4632-bd13-2b1f17909bbd.jpeg?im_w=720',
        98);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48138255/original/2171cf12-3e2d-4660-9f8b-c38a6fde7af5.jpeg?im_w=720',
        98);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48138255/original/7c14c6f7-347e-4fc5-8bd4-c863774d20a6.jpeg?im_w=720',
        98);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48138255/original/d86aa4f1-9a77-4160-95a6-e04932a740f2.jpeg?im_w=720',
        98);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48138255/original/96eaecf6-cc52-4f4c-857b-c099d7b17717.jpeg?im_w=720',
        98);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48138255/original/b02e63d0-3cae-4f20-a17b-f8823462dd3a.jpeg?im_w=720',
        98);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48138255/original/783dbf0e-0798-4a48-a346-8595dd84e2f9.jpeg?im_w=720',
        98);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48138255/original/f4b021e4-d48e-4ca5-b8d1-339a04a5ac8c.jpeg?im_w=720',
        98);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48138255/original/818904be-6b52-406e-be97-22c7d8518c1e.jpeg?im_w=720',
        98);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48138255/original/72468ebf-d597-4b13-a64f-5755efaffb34.jpeg?im_w=720',
        98);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48138255/original/228254bc-880d-421f-bbe3-9e59b2b962aa.jpeg?im_w=720',
        98);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48138255/original/bcfdc85b-716f-4853-b61b-b49191cb6c75.jpeg?im_w=720',
        98);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48138255/original/e0ed0095-9997-4c0c-9e29-f0613edf528a.jpeg?im_w=720',
        98);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48138255/original/ccbe943b-1a7f-4d79-89f6-5a5c0f690a3a.jpeg?im_w=720',
        98);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48138255/original/3bdfc78a-d2c3-476a-af99-6bac8367f84c.jpeg?im_w=720',
        98);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48138255/original/914d5ac9-1a31-4f0e-a859-35ca3824c2b9.jpeg?im_w=720',
        98);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48138255/original/113f51de-5401-4639-a8ec-eeaae5c568f7.jpeg?im_w=720',
        98);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48138255/original/a2f0e184-739f-4ece-a6aa-c5fa72ff0300.jpeg?im_w=720',
        98);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48138255/original/fb9753f6-828b-4069-8616-e144673101a5.jpeg?im_w=720',
        98);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48138255/original/16dccb40-00b8-4637-ab4c-bfb430a9c47d.jpeg?im_w=720',
        98);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48138255/original/5008bd91-5e4f-45b8-a1a6-dc2218fea5a5.jpeg?im_w=720',
        98);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48138255/original/a9baccc6-d4cc-4de3-9cbe-8c618060d4bf.jpeg?im_w=720',
        98);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48138255/original/9602f137-8411-45ad-842f-ccdecb4edb0f.jpeg?im_w=720',
        98);
insert into location(id, latitude, longitude, city_name)
values (99, 37.776, 126.793, '경기');
insert into review (id, star, review)
values (99, 5, 6);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (99, '사인웨이브_안채예약', 'Wollong-myeon, Paju-si의 전원주택 전체', 100000, '집 전체', 2, 4, 1, 99, 99, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47300507/original/4ccc27aa-fb83-475e-8da4-91989c948281.jpeg?im_w=720',
        99);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47300507/original/a20f2e10-01b6-46a7-b8df-7e17a4c52257.jpeg?im_w=720',
        99);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d6b9dbd9-31c9-4ac6-9d68-770b7df8d4e6.jpg?im_w=720', 99);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1a1d1e9d-14a4-446d-a1a6-aeb132a8f159.jpg?im_w=720', 99);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f7d62099-2daf-41a9-b2fb-bdfd8338fab9.jpg?im_w=720', 99);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47300507/original/16f8e2aa-ea2b-4d8a-adcc-b7b57ca776d6.jpeg?im_w=720',
        99);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ea16957d-8529-468a-beba-7c8d705a625c.jpg?im_w=720', 99);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a1803705-6319-4195-acd2-cea0a4dc4484.jpg?im_w=720', 99);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47300507/original/e83b4fe8-8818-42f2-b4d5-0c6a7f3d6c76.jpeg?im_w=720',
        99);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47300507/original/691204dd-86f9-49a6-abeb-c928415611f5.jpeg?im_w=720',
        99);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a3fcb23e-751f-4be5-bc51-d19a59769531.jpg?im_w=720', 99);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47300507/original/fe08332c-ee4e-417a-bce0-340ce9ec0081.jpeg?im_w=720',
        99);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47300507/original/46a10e36-6d64-473c-82b9-6ea30a2c49eb.jpeg?im_w=720',
        99);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47300507/original/9e55e892-c7d9-4765-a937-b137ad559f9c.jpeg?im_w=720',
        99);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5bd971e9-5557-4a1c-b4d8-eeb03b13c119.jpg?im_w=720', 99);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4a4e9505-e425-47c5-a102-68aad1200767.jpg?im_w=720', 99);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d44fdd16-a2d8-43c6-b543-ef838b676d0d.jpg?im_w=720', 99);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47300507/original/5f99c8b4-34e2-4565-a190-5ea1a698ae3e.jpeg?im_w=720',
        99);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/70a25c35-a489-4f2d-a511-14230d9652e4.jpg?im_w=720', 99);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/61d1be4f-feab-422b-b1f2-97a332e071ef.jpg?im_w=720', 99);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47300507/original/9ec28340-73b5-4887-971a-99576a147bf4.jpeg?im_w=720',
        99);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/772ee46c-af99-440a-af39-ac84c11bb175.jpg?im_w=720', 99);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/963ba5d0-b529-4a43-a085-6225abfef7c7.jpg?im_w=720', 99);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b896321a-d3ee-4430-8add-1cc233ee258c.jpg?im_w=720', 99);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bbe79874-8507-4771-a665-a226cb268a1f.jpg?im_w=720', 99);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/99ac3f84-96f0-4a1d-9746-d68f1d3d0cfc.jpg?im_w=720', 99);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47300507/original/8b2a6b59-4d83-4c5d-8d56-5b7950aae9b2.jpeg?im_w=720',
        99);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47300507/original/bc639b9c-6717-4ea7-b96c-a18c3667bbe4.jpeg?im_w=720',
        99);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47300507/original/c7be3e0a-c4ab-43b5-97a7-4d2a9ba29548.jpeg?im_w=720',
        99);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47300507/original/1bdad3b7-3a63-49fd-adb3-e84c1496cc0c.jpeg?im_w=720',
        99);
insert into location(id, latitude, longitude, city_name)
values (100, 37.536, 126.987, '경기');
insert into review (id, star, review)
values (100, 5, 250);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (100, '❤️Luxury Vintage Sunshine House', 'Itaewon-dong, Yongsan-gu의 집 전체', 95000, '집 전체', 3, 6, 1, 100, 100, 1,
        1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/4a8ff376-1b48-4667-8981-130615728a54.jpg?im_w=720', 100);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fc1e563c-27d6-4c14-aba5-6ac87bc0bf06.jpg?im_w=720', 100);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0e3f182e-853c-4e0d-bd65-efbd75ed9f52.jpg?im_w=720', 100);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e48a268b-f01a-4f18-a4b9-dfdc2d9f8c87.jpg?im_w=720', 100);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/631af1e0-9ad4-4430-957b-27ea5b30505f.jpg?im_w=720', 100);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2d976270-5b3a-4661-91a3-aac37362cade.jpg?im_w=720', 100);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0b913f12-8990-46bc-abc0-0cc0fd2e3f27.jpg?im_w=720', 100);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/866a3638-bdb4-4b7d-bbda-8f1caffbfae3.jpg?im_w=720', 100);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b8f9c561-7770-41ca-b349-de616374cfc2.jpg?im_w=720', 100);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/586b7581-ce04-45ef-9df1-37630e6bfa3f.jpg?im_w=720', 100);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8cd12101-fb56-4977-9987-971bb009da82.jpg?im_w=720', 100);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1e3760d4-9f8e-47de-93c3-9ee9f9b3f4ec.jpg?im_w=720', 100);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5e148792-add9-4fc8-b367-51be9edcd675.jpg?im_w=720', 100);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9b74ca2b-c3b8-49a2-ab6b-3c9c0fb7946c.jpg?im_w=720', 100);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e053676c-b0a6-49f9-bf23-2c8fc1880d04.jpg?im_w=720', 100);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8b6cd20e-3ae7-40f1-8dd6-b11aa21c4c72.jpg?im_w=720', 100);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e7864403-86bd-4d31-99b2-7f15807ebac9.jpg?im_w=720', 100);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f25fa028-e9bc-4899-b4a5-5d04ea84fd42.jpg?im_w=720', 100);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8d811387-fedf-4456-8699-07ea4ae0b7a8.jpg?im_w=720', 100);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/07827405-9240-45a4-b663-5a42bf0a214a.jpg?im_w=720', 100);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/870b76e4-f54a-4bc7-9283-6c456b6b73d5.jpg?im_w=720', 100);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8d0316f7-9627-4720-a1ae-9b5d52e1b1d0.jpg?im_w=720', 100);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/98cc6628-7c02-45ac-abb7-4bf2e56e724c.jpg?im_w=720', 100);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8d1cff86-d058-401a-80a3-1a571f55a70b.jpg?im_w=720', 100);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3771b515-b356-498e-b95d-389d560fdd57.jpg?im_w=720', 100);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0cdd6848-a15a-41de-b496-9c12ed1561fb.jpg?im_w=720', 100);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4073de9a-f9e1-4b11-b739-5a3599736698.jpg?im_w=720', 100);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5fafbd2d-722a-433e-abeb-0b630434967d.jpg?im_w=720', 100);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0e10585b-869c-4471-8cc8-4df4b88805d4.jpg?im_w=720', 100);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d2375edf-27dc-410e-9932-30db687ddace.jpg?im_w=720', 100);
insert into location(id, latitude, longitude, city_name)
values (101, 33.442, 126.279, '제주');
insert into review (id, star, review)
values (101, 0, 0);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (101, '독립된 공간에서 편하게 즐기는  제주  살이', 'Hallim-eub, Cheju의 전원주택 전체', 100000, '집 전체', 0, 4, 1, 101, 101, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/74f40c5d-f802-433a-97f7-e608d6576b09.jpg?im_w=720', 101);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/165fb3ec-69ce-40ef-b429-e741c792b348.jpg?im_w=720', 101);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ea002bb9-4d06-4b8f-9a09-c1feb012f638.jpg?im_w=720', 101);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49018587/original/0fa22bd2-d588-4374-a86e-7f43be9b08e7.jpeg?im_w=720',
        101);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/881f33cc-a57e-40f7-8179-bf70b97605b8.jpg?im_w=720', 101);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5033c515-7e0b-48b3-aaa0-bb5dcdd1df75.jpg?im_w=720', 101);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49018587/original/5901ebe8-8215-443c-8404-9011d8ea6a57.jpeg?im_w=720',
        101);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49018587/original/16645654-7338-44ea-8b68-4707940a9c75.jpeg?im_w=720',
        101);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49018587/original/01c632d2-876a-4e7e-a011-695eb0d7fd12.jpeg?im_w=720',
        101);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49018587/original/c1ce4344-6161-41b8-aa7d-071b10828900.jpeg?im_w=720',
        101);
insert into location(id, latitude, longitude, city_name)
values (102, 33.463, 126.933, '제주');
insert into review (id, star, review)
values (102, 5, 9);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (102, '성산일출봉 앞 바다뷰의 아늑한 한 달 살기 숙소', 'Seongsan-eup, Seogwipo-si의 콘도(아파트) 전체', 100000, '집 전체', 1, 2, 1, 102, 102,
        1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/a21db690-1b78-4937-ba4a-8ca18af26477.jpg?im_w=720', 102);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0a2b4e68-4174-42dc-852d-a308e820633d.jpg?im_w=720', 102);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/caaeeecf-9386-417a-8cca-7dd4ed363d29.jpg?im_w=720', 102);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e77ea3e2-fdd4-4e8d-9af0-23a75f72c32d.jpg?im_w=720', 102);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/698e9802-11f7-4660-ab79-1cc9d85c84ef.jpg?im_w=720', 102);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9b4c552c-38b6-43f8-94e4-58f6cf23ea90.jpg?im_w=720', 102);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/63f83130-88a3-4626-98ac-71691f9ae751.jpg?im_w=720', 102);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b9e8184b-c3cd-4048-81b6-ca285307498e.jpg?im_w=720', 102);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/452a9f77-1a6e-4261-b1b6-166c1d4ae2c7.jpg?im_w=720', 102);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/34564059-7fc0-4c5c-8112-dd71ff26eafa.jpg?im_w=720', 102);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/86e81752-cf0f-4d43-b6d2-6e4c559d3e5b.jpg?im_w=720', 102);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6acdedca-b880-48aa-b468-9df941b6fad8.jpg?im_w=720', 102);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0525b553-e9c1-4d65-85d9-0bec43d35ccf.jpg?im_w=720', 102);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9e466af4-9e44-4c6c-a688-e2e13ac4ed02.jpg?im_w=720', 102);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8cc2ff59-cf06-40fb-a2e2-63b4ce9defa0.jpg?im_w=720', 102);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/981b8752-4840-4898-9e86-41677761c8b4.jpg?im_w=720', 102);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/727503c8-c204-4234-90a9-be709f61d76e.jpg?im_w=720', 102);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d4ffd7e6-41dd-4846-b076-66f1ded13d5e.jpg?im_w=720', 102);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/40560956-efce-411f-8e71-54c8e613676f.jpg?im_w=720', 102);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9cb6d30d-085d-4bfb-9296-9de28760e203.jpg?im_w=720', 102);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0e3408cc-974c-49bd-8573-90f97e710f2f.jpg?im_w=720', 102);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/11f48ce0-0d0a-42eb-80fb-724bb0e2a57d.jpg?im_w=720', 102);
insert into location(id, latitude, longitude, city_name)
values (103, 33.345, 126.183, '제주');
insert into review (id, star, review)
values (103, 5, 64);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (103, '또시 인 제주<삼삼구옥> 별채', 'Hangyeong-myeon, Cheju의 게스트용 별채 전체', 90000, '집 전체', 1, 2, 1, 103, 103, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43964986/original/bf1d7592-66dd-440f-829c-118ae48bd947.jpeg?im_w=720',
        103);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43964986/original/b3f67156-0bae-47eb-854a-7e93ae6b6398.jpeg?im_w=720',
        103);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43964986/original/95ab94db-fb88-40eb-ab86-4c709a6ded79.jpeg?im_w=720',
        103);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43964986/original/f15077d5-f47d-4474-9a98-03f18742be32.jpeg?im_w=720',
        103);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43964986/original/2f7eb206-7283-44ec-ab31-d861966ed3d9.jpeg?im_w=720',
        103);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43964986/original/506e6de4-4323-4e53-8df8-51b317a93acf.jpeg?im_w=720',
        103);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43964986/original/71a1f7b7-d3f2-4de7-b93b-53f09c08bd8a.jpeg?im_w=720',
        103);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43964986/original/7ebe886c-69f7-4e05-a251-79b59e2c58d9.jpeg?im_w=720',
        103);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43964986/original/dd755ac0-5168-4dd3-b378-dcd7776e5dc1.jpeg?im_w=720',
        103);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43964986/original/1d79c97d-52cc-4083-b01f-b8c3bc07db33.jpeg?im_w=720',
        103);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43964986/original/4d1011b1-c275-4862-8375-6a7d2038a47e.jpeg?im_w=720',
        103);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43964986/original/2b5fedeb-9b25-417b-a769-6dc50b39c015.jpeg?im_w=720',
        103);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43964986/original/383032c9-5d87-4b5d-9cce-14158a2cb3e9.jpeg?im_w=720',
        103);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/de14a572-d10b-498d-8aa3-611c76443774.jpg?im_w=720', 103);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b33c0a82-51c0-4c9b-a8c0-cac5ba745899.jpg?im_w=720', 103);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9f452d1f-0fea-406c-b71d-d1b72551e2c9.jpg?im_w=720', 103);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/36cbd4bb-740b-4bcd-b2ca-904f82a6655e.jpg?im_w=720', 103);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3fd9d5a6-7cf1-4698-83c5-a70f2183cc1a.jpg?im_w=720', 103);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/10d2e126-6b02-4554-8456-61a77669b4b2.jpg?im_w=720', 103);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e6c3db99-7bf9-4118-89bc-8af263ab33c5.jpg?im_w=720', 103);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d95aee7e-9e07-440f-bf2d-6c20efd81c00.jpg?im_w=720', 103);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/82680581-31d7-4755-831e-4f6b700a54ad.jpg?im_w=720', 103);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a74253e5-90b6-462e-a1aa-32ff6ad57234.jpg?im_w=720', 103);
insert into location(id, latitude, longitude, city_name)
values (104, 33.462, 126.33, '제주');
insert into review (id, star, review)
values (104, 4.5, 50);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (104, '애월 노천탕 소길리 애월풀빌라신축', '제주시의 게스트 스위트 전체', 93000, '집 전체', 2, 2, 1, 104, 104, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/e43ceb4a-8228-4a3e-8330-dc5836eedd8f.jpg?im_w=720', 104);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/60f1b54f-9760-4209-9ac1-7889aea6c23a.jpg?im_w=720', 104);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/02177f58-0ba7-4597-9788-96c0fd39a880.jpg?im_w=720', 104);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/52d5a8c4-4396-4320-9fe2-14980cd68816.jpg?im_w=720', 104);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2172bf26-3d38-4678-a554-4a3549a0a3e6.jpg?im_w=720', 104);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2878b731-3e5d-4133-9811-860144669624.jpg?im_w=720', 104);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bd20f686-83df-40aa-b28b-9c587007fc21.jpg?im_w=720', 104);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d39c00ff-680d-48fd-99fc-2500ce1720d9.jpg?im_w=720', 104);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7eddb0bc-b505-41c4-bcef-503beb00c5c9.jpg?im_w=720', 104);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4d201ef1-fd2f-4961-bef1-4111ad95316d.jpg?im_w=720', 104);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4e9ea971-5abc-4dc0-a4a5-f6d3791ae150.jpg?im_w=720', 104);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9d3f2c97-b774-415f-bc80-e7ea8f8589c7.jpg?im_w=720', 104);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/651250ef-696f-4c5a-8e12-47feb8c8b347.jpg?im_w=720', 104);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6b6a5854-0576-4305-a82b-47436a33b7d2.jpg?im_w=720', 104);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ec8a1f9f-d6cc-410d-baca-b1e9d19630c4.jpg?im_w=720', 104);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a957c3ab-79e3-4349-bbf4-5a6c2660aaa9.jpg?im_w=720', 104);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d0549c19-54c8-47d9-a17d-13dd89b071cf.jpg?im_w=720', 104);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6a31e797-f80e-4336-9b63-9daf9e257ebb.jpg?im_w=720', 104);
insert into location(id, latitude, longitude, city_name)
values (105, 33.553, 126.808, '제주');
insert into review (id, star, review)
values (105, 5, 140);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (105, '"월정야小" 월정해변 근처 조용한 마을 돌집. 일출이 보이는 들판. (구)봄이네 작은집', 'Gujwa-eup, Cheju의 게스트용 별채 전체', 85000, '집 전체', 1, 2, 1,
        105, 105, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb',
        'https://a0.muscache.com/im/pictures/miso/Hosting-34028781/original/16d66abb-09f0-438f-93e4-820d4f156f01.jpeg?im_w=720',
        105);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a9be37f9-9406-4e58-a1f2-73eeda2cdf2f.jpg?im_w=720', 105);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3f26dc0e-4c42-436e-bd6b-728e56013e75.jpg?im_w=720', 105);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2e59a459-d9a4-4d7a-8493-a3d2e5f98282.jpg?im_w=720', 105);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0226f333-b257-4ea2-88a5-9674b106aaf4.jpg?im_w=720', 105);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9b3f9fb1-4f50-47f9-b21e-1948d7754e82.jpg?im_w=720', 105);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/31875178-be00-4362-b62a-8949bf866314.jpg?im_w=720', 105);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d1d36636-e9b7-4e46-888e-8cf028c7a9a8.jpg?im_w=720', 105);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0c7fa376-b2f8-4493-bd84-0bdda24a1b11.jpg?im_w=720', 105);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/75716ace-1680-4ce9-b00c-f8d4f5bfbda5.jpg?im_w=720', 105);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7c670eb0-6cf2-4b57-b61c-a88909155ad6.jpg?im_w=720', 105);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-34028781/original/11704b67-1b1e-4109-a655-1f586b56ef59.jpeg?im_w=720',
        105);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-34028781/original/2358603f-b708-42ce-ab29-bf69ffcdcd51.jpeg?im_w=720',
        105);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/af58a2dd-01de-4bb1-9ae8-d6cc84458068.jpg?im_w=720', 105);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/36d32f06-75d4-4094-a2c8-de907ba2cf72.jpg?im_w=720', 105);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-34028781/original/5fbe4052-08ce-4363-b06a-875e235c4e42.jpeg?im_w=720',
        105);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8dd1f5d6-c0ff-4c47-91db-228e9eb3d7f4.jpg?im_w=720', 105);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-34028781/original/a965ba88-a9ce-4338-bc1f-dae562f19ea5.jpeg?im_w=720',
        105);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-34028781/original/4dd498bb-613b-4c67-b68b-5ff615f62441.jpeg?im_w=720',
        105);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-34028781/original/4fcbc855-387d-482d-995b-6727e6d35f2c.jpeg?im_w=720',
        105);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-34028781/original/f5bde80e-2e54-4320-a437-a0c7a410d95e.jpeg?im_w=720',
        105);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-34028781/original/28818b66-dc18-4794-af8e-87480dcc056f.jpeg?im_w=720',
        105);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-34028781/original/6f63aea5-f402-4136-a150-2c9eb658466b.jpeg?im_w=720',
        105);
insert into location(id, latitude, longitude, city_name)
values (106, 33.452, 126.434, '제주');
insert into review (id, star, review)
values (106, 5, 58);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (106, '[NEW OPEN] 오소록 하우스💫 _나만의 안락하고 편안한 공간', 'Aewol-eup, Cheju의 집 전체', 95000, '집 전체', 1, 2, 1, 106, 106, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/4ff77f88-4110-4ed1-ada3-7fd2de5e45d2.jpg?im_w=720', 106);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c1ee5938-7308-41b9-8bca-913a87248526.jpg?im_w=720', 106);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/930cc2ac-829c-4365-a4b5-9e3f483915f0.jpg?im_w=720', 106);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/186fcdca-74cd-47ae-9283-9655c3cd7d03.jpg?im_w=720', 106);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/57062fae-fede-4041-8bbb-a1e99a9dd112.jpg?im_w=720', 106);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/57bf5470-c3ae-485f-914d-abaff924dd7c.jpg?im_w=720', 106);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/98f9fcab-51c2-445e-b92b-e1e23ac32ef0.jpg?im_w=720', 106);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f8fbd748-55f0-4fda-94fd-eebbcf5fcb3c.jpg?im_w=720', 106);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dc2aa510-d38f-4eb3-92a2-6a51785d8117.jpg?im_w=720', 106);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/05e473b1-13ca-49e9-b3d4-b032c02ebca4.jpg?im_w=720', 106);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/df511bc7-5733-441d-af20-8abc54221539.jpg?im_w=720', 106);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/652e1949-4a13-4ecf-9073-4220047b2dde.jpg?im_w=720', 106);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e2abe8d6-2c4a-4ff8-820c-40502f74d457.jpg?im_w=720', 106);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a5007d60-dc75-42be-b378-40580cf7dd88.jpg?im_w=720', 106);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/075a3977-2f88-4de8-9fea-b74439420b4e.jpg?im_w=720', 106);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7bbb1c4f-4592-4a4f-8b24-12415524a92c.jpg?im_w=720', 106);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1d3a3e2c-d22b-4b3f-8b49-800a5489e3e7.jpg?im_w=720', 106);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fa9493ab-05ac-4b4b-aeb7-43922d5d4a22.jpg?im_w=720', 106);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/32d95e3a-72b6-4656-8dce-f88709604b62.jpg?im_w=720', 106);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/85f4d43d-c8d2-48ef-be81-f2822909d8cb.jpg?im_w=720', 106);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/25454604-d7bd-4bd3-907d-0df6d1e03c16.jpg?im_w=720', 106);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/289216ea-3e5b-495d-80ce-c7a2c74d8c0f.jpg?im_w=720', 106);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/62ea35bf-bb4b-47fd-b767-1406bce911e4.jpg?im_w=720', 106);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d4f9c11b-8924-4965-a8ff-d2e613c02868.jpg?im_w=720', 106);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/53b3cae2-1a72-4d31-82ff-427df1bb4d22.jpg?im_w=720', 106);
insert into location(id, latitude, longitude, city_name)
values (107, 33.342, 126.193, '제주');
insert into review (id, star, review)
values (107, 5, 72);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (107, 'NEW 오픈!!  조용한 휴식을 즐기기 위해 여행을 계획 하시면.한달살기가능', 'Hangyeong-myeon, Jeju-si의 게스트용 별채 전체', 90000, '집 전체', 1, 2,
        1, 107, 107, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/d02c8bdb-e250-495f-a97d-110d5efa2adc.jpg?im_w=720', 107);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8f7e7b56-6a71-4369-bd28-1dc524d92de8.jpg?im_w=720', 107);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/51ec182e-ae37-4b76-8142-ff21b509d352.jpg?im_w=720', 107);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3f724bc2-4afc-4e52-9544-f2018d276486.jpg?im_w=720', 107);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ad842995-cacd-4056-9eed-81dfb9f6a484.jpg?im_w=720', 107);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e164a1cc-dea9-49ce-8ce8-448deff5e82d.jpg?im_w=720', 107);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4e59513f-8c79-4854-a240-b998af78f959.jpg?im_w=720', 107);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bb1aed0e-2bbd-4082-97c4-5eedf6493bcf.jpg?im_w=720', 107);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d00f4706-615d-4e7b-be23-beae00595044.jpg?im_w=720', 107);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3dee54ad-103e-4b5a-b3a3-b41df6dfa28a.jpg?im_w=720', 107);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/126dc5bd-7437-4b32-9767-85996aefb503.jpg?im_w=720', 107);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/537af653-83f2-4764-b942-4faa25043beb.jpg?im_w=720', 107);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/41ec7dd0-334e-4ada-b94a-5cac00be52d5.jpg?im_w=720', 107);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5e2c3add-9515-453c-b2be-b85c7c3732be.jpg?im_w=720', 107);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bb2c05bd-c294-4e0f-b060-3d3ab42c09cb.jpg?im_w=720', 107);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/df9679ae-5801-401e-b4d6-9a82b550a009.jpg?im_w=720', 107);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0c0f4df3-6c07-4572-914c-a019b38c6947.jpg?im_w=720', 107);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/da9bfab0-d601-48e0-8712-e81dddd69296.jpg?im_w=720', 107);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dfb06e89-8f9d-4fab-933a-8c21cb19317c.jpg?im_w=720', 107);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-33667883/original/9906aa29-0324-410d-b8ab-08681b4002f9.jpeg?im_w=720',
        107);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/361ac764-3fb3-457d-88c0-94383a78471b.jpg?im_w=720', 107);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9bfa6070-2d5c-42cb-abb8-3577e9a69759.jpg?im_w=720', 107);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6b1d50fc-ca44-4473-913e-94e42cbdf0ee.jpg?im_w=720', 107);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/19c2c005-7233-4bab-b465-1299998a3a2f.jpg?im_w=720', 107);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6b7984de-63d5-4911-9de3-a488cf350434.jpg?im_w=720', 107);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/aa68b3e8-3369-4e05-9957-9fb81e695017.jpg?im_w=720', 107);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/62068ae4-3dae-4008-8b6a-c90c759cc3ab.jpg?im_w=720', 107);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c9d2c29e-235a-44df-9f3f-74d10f1fa5f2.jpg?im_w=720', 107);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d39311ee-036f-42d6-a6c7-1af4bc63cbe6.jpg?im_w=720', 107);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9f357f7c-ce13-491f-8eee-6ea83cf81c83.jpg?im_w=720', 107);
insert into location(id, latitude, longitude, city_name)
values (108, 33.47, 126.383, '제주');
insert into review (id, star, review)
values (108, 5, 129);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (108, '슬로우리제주A, 애월펜션,테라스한라산뷰,아늑하고깨끗한실내,욕조', 'Aewol-eup, Cheju의 전원주택 전체', 97000, '집 전체', 1, 2, 1, 108, 108, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/017351de-c0c1-4e27-832f-1d00c08e38fd.jpg?im_w=720', 108);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a73e72f4-8f5b-45e6-ac82-ac7d5c80ec89.jpg?im_w=720', 108);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8afa63c0-af87-48e9-8cfd-757865e830eb.jpg?im_w=720', 108);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d5a5edde-6cdc-4c4b-bc6b-acb351773f2b.jpg?im_w=720', 108);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/03c19464-31b6-4fe5-9d66-7bb3bf96dbb3.jpg?im_w=720', 108);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2df0a53d-c857-41b1-953e-f4ebe1e4c893.jpg?im_w=720', 108);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/26bfaf8a-f0a0-4832-9857-fbf380a7a169.jpg?im_w=720', 108);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a99eb8ae-0e06-4101-af98-139defb8c152.jpg?im_w=720', 108);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4a72fc0a-b1ab-4954-892b-57dc41720f2d.jpg?im_w=720', 108);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/de82ed0e-7357-4638-8260-e9b28cf91427.jpg?im_w=720', 108);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a3551c6f-7bf8-496b-bf2b-4eab028d314e.jpg?im_w=720', 108);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/67118028-bd75-45ce-9b14-133e56926ded.jpg?im_w=720', 108);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/551ec3cf-97a0-43c1-85a2-7126de0963ce.jpg?im_w=720', 108);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4bebb9e3-fab5-4333-ad83-b1bf36d13f6e.jpg?im_w=720', 108);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d0c434a6-ec10-4fd9-9878-878c2ccdf9df.jpg?im_w=720', 108);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/eb313e68-8741-4a8b-b8ab-b90be9c43ba2.jpg?im_w=720', 108);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/33077a3d-11c3-4f6d-a12d-654ed49f4d5d.jpg?im_w=720', 108);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/eda5b1db-0ea0-4e52-a2af-9404348725c0.jpg?im_w=720', 108);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b73b73c4-2519-4c9a-ac99-144b6df3ce36.jpg?im_w=720', 108);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5486237f-c1ad-4d74-b07c-0684e28113a9.jpg?im_w=720', 108);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/00fae1e2-b499-42d8-9a1c-10f6806d3c4b.jpg?im_w=720', 108);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f4b6b905-c52f-4866-a2e4-f5902762a1c9.jpg?im_w=720', 108);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/67553e3f-9eba-4010-876c-35c9961baff1.jpg?im_w=720', 108);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/72c60d24-9cd7-4021-a61d-937075cf34fd.jpg?im_w=720', 108);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/23ecb407-7b3e-4acd-ab1c-99a0d64db76e.jpg?im_w=720', 108);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2e8b9ec9-bbec-40f5-9348-1a4d4a45c906.jpg?im_w=720', 108);
insert into location(id, latitude, longitude, city_name)
values (109, 33.373, 126.859, '제주');
insert into review (id, star, review)
values (109, 5, 84);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (109, '제주감성숙소 /넷플릭스/빔프로젝터/하트욕조//프라이빗정원/느리게가는구름
(취사×바베큐×)', 'Seongsan-eup, Seogwipo-si의 집 전체', 100000, '집 전체', 1, 2, 1, 109, 109, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/3590d9f3-5332-47ce-84aa-fbe12a2b19ee.jpg?im_w=720', 109);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/58ac1301-8614-4254-9613-175f086b2533.jpg?im_w=720', 109);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4cfe4da4-1988-40e2-a851-aff4192d3750.jpg?im_w=720', 109);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f5ffba61-b54d-488b-b985-9331088af8a0.jpg?im_w=720', 109);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dac2a7c5-46c7-4ff5-bc59-1d54ce36c0fe.jpg?im_w=720', 109);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/81ed71f1-8179-4ef2-843e-dd645d17e973.jpg?im_w=720', 109);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d6e2303f-b7e0-4287-9e30-81459f5920ba.jpg?im_w=720', 109);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/22405df8-6936-41a1-9fb1-e3d5c7ed1d39.jpg?im_w=720', 109);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/def5fe36-3353-4602-abaf-5816f50fafa4.jpg?im_w=720', 109);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/502856ed-c321-4676-a138-dc582eb96464.jpg?im_w=720', 109);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/99f809ed-4375-46e2-8858-19c6187d7573.jpg?im_w=720', 109);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/16333a36-52a8-48bd-9230-1cd42b5fce7f.jpg?im_w=720', 109);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/26fc671d-79fb-4b68-a87c-23a156d766d0.jpg?im_w=720', 109);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/81a66d1b-4ff7-48ca-915c-9e8d88fec1c4.jpg?im_w=720', 109);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5346475f-2263-426a-b9e5-6864f1904c63.jpg?im_w=720', 109);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dc915494-3cf6-4147-ba45-71263f9467f8.jpg?im_w=720', 109);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1c222db5-9745-4390-ae1d-600663a9eeb5.jpg?im_w=720', 109);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6d1ed22a-4265-4348-8631-49cf9d6d961e.jpg?im_w=720', 109);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8ba80430-ecc7-4fc0-9cae-cf8cadb1e6b6.jpg?im_w=720', 109);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2a8fbd4d-f06a-4e50-a26b-bbd0c66aeabe.jpg?im_w=720', 109);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/84416b36-6365-43d6-ae55-0bcaec17d2e1.jpg?im_w=720', 109);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d28b6455-9293-4ac7-a819-8426abf5e93f.jpg?im_w=720', 109);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5eb34e98-4b37-48d3-b266-959c0ed20331.jpg?im_w=720', 109);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/09c1c30e-2258-4b87-a477-86b6d1b88bbb.jpg?im_w=720', 109);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/da5d5638-f4f0-4c2e-ac2a-e21d16e6b016.jpg?im_w=720', 109);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4be56ada-47c4-4dac-b3a3-6c9626aa714c.jpg?im_w=720', 109);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/87ec696a-6e65-488b-8efe-ad40d1543639.jpg?im_w=720', 109);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/01aa26c1-d46b-43f1-89ec-5c8c57817a8e.jpg?im_w=720', 109);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/70c684aa-a20c-4e67-a105-8590dcf725c3.jpg?im_w=720', 109);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a396cf96-7e5e-4945-a762-476786851af1.jpg?im_w=720', 109);
insert into location(id, latitude, longitude, city_name)
values (110, 33.447, 126.301, '제주');
insert into review (id, star, review)
values (110, 5, 111);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (110, '제주 봉숙이네바닷가(봉이네)', 'Aewol-eup, Cheju의 전원주택 전체', 100000, '집 전체', 1, 4, 1, 110, 110, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/5f65d315-46e1-4d57-9769-f71ba76b09e2.jpg?im_w=720', 110);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/928c4282-103a-4825-8b84-14b8646c88e1.jpg?im_w=720', 110);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f1a61ac5-99f0-4d65-9ba0-1221e5df5a92.jpg?im_w=720', 110);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a6379cb5-f518-4844-99b6-f3090c2c70cf.jpg?im_w=720', 110);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dfdbaee8-6bcb-42b3-a752-5236379e6130.jpg?im_w=720', 110);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7aa32a3d-6bad-49cb-abab-9bc20cd7dc81.jpg?im_w=720', 110);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5391c730-44a2-438d-96b2-5abdb14140e1.jpg?im_w=720', 110);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9dc1d3f8-c671-4c4c-be40-74b3b18b4df3.jpg?im_w=720', 110);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/07ad123e-899e-4bce-8cd2-0c5aab4bb8f0.jpg?im_w=720', 110);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d8712e8d-2d1d-411f-86c9-6c8b86466ffc.jpg?im_w=720', 110);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/50ef8ec5-5968-475d-bdae-70008c82f296.jpg?im_w=720', 110);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5b683c06-2c06-4303-b090-6c5dc947d7a5.jpg?im_w=720', 110);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2846bf86-4a73-4b20-b512-c7e08382329f.jpg?im_w=720', 110);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f41eceb9-5030-485f-a739-6c3b475a3fa0.jpg?im_w=720', 110);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6e513ff3-d885-412c-837a-7a2d26b9e63c.jpg?im_w=720', 110);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cec2034e-de50-41d0-95f6-49a285f61a2a.jpg?im_w=720', 110);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b8ea9656-7098-4cd4-bf7e-a5ae8a3df3f4.jpg?im_w=720', 110);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/200a5d94-0e89-4095-b20f-58acc5371e7b.jpg?im_w=720', 110);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/07e9ae29-bc9b-44f3-ad19-52e48d8a4ee9.jpg?im_w=720', 110);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7436d217-42f2-4bf7-8cac-2a7629ff8e8a.jpg?im_w=720', 110);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a3842724-f815-4eb8-a34f-e1ae41c24bfa.jpg?im_w=720', 110);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/287a8431-543a-49f1-b384-7bddd6e9bcbd.jpg?im_w=720', 110);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7faa1538-6c8f-4ed6-96ed-6810f00b867a.jpg?im_w=720', 110);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1a470f89-f8a6-4096-8e81-b7fddea8033d.jpg?im_w=720', 110);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4eb71a45-7b2d-4eb4-9f07-3c327dce37ff.jpg?im_w=720', 110);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9a687f95-424c-4271-8970-4668aa711671.jpg?im_w=720', 110);
insert into location(id, latitude, longitude, city_name)
values (111, 33.383, 126.249, '제주');
insert into review (id, star, review)
values (111, 5, 24);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (111, '스테이 낭 "E"동 협재바다 신축 프라이빗 독채형 하우스((오픈할인))', 'Hallim-eub, Jeju-si의 집 전체', 95000, '집 전체', 1, 3, 1, 111, 111,
        1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/65979ef2-0787-431a-9cd0-d685f4a8e260.jpg?im_w=720', 111);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8d0d0564-5a01-47fb-abd4-49dc82ac63fc.jpg?im_w=720', 111);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9be9acf9-19d1-42f9-b0c2-abc18bd1531a.jpg?im_w=720', 111);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/59295211-716e-4ff4-af85-bbc823148625.jpg?im_w=720', 111);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b2988b0c-440a-4fdf-be8d-2331607cca59.jpg?im_w=720', 111);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a3d44c26-dcd3-4107-a9e1-6600e3df953f.jpg?im_w=720', 111);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6c016edb-5477-4a90-bd13-7c2c58ad3b7f.jpg?im_w=720', 111);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a8a582c5-a964-47b7-85bd-174db2086a9c.jpg?im_w=720', 111);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b2cfbe6e-4ffe-4b81-bc23-019c17f8c3cb.jpg?im_w=720', 111);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4e3c6fad-9c05-4f8c-b64c-e8191f7f6ccf.jpg?im_w=720', 111);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f669ebb4-d016-41d9-b3ea-9e7a763a70c3.jpg?im_w=720', 111);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/939cd928-0e98-4d64-a83d-03defd738e56.jpg?im_w=720', 111);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cf3a1c32-5bd4-4cd8-b540-a103c491c5c9.jpg?im_w=720', 111);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46661263/original/e9e3b122-fc66-4a71-9ecf-cbdafab6c376.jpeg?im_w=720',
        111);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/62bd364d-e895-4b26-b7e0-d6bd94c6628e.jpg?im_w=720', 111);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/236e7688-67de-4dda-9e2f-e8c13a12cc10.jpg?im_w=720', 111);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/83d66eaa-9eed-40eb-a049-1fb2ffe60d34.jpg?im_w=720', 111);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4c2b4729-cfe9-4c24-a4ff-7662241804a9.jpg?im_w=720', 111);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d293d298-0b9a-4735-8b00-a1c68a80b5b5.jpg?im_w=720', 111);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e5568326-8b9c-49f9-a92e-34206dbf7488.jpg?im_w=720', 111);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/601d0d34-715a-412c-bcfc-05ce1e3f7625.jpg?im_w=720', 111);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/caed7043-c773-4ec2-8367-645be672ad51.jpg?im_w=720', 111);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f39d4675-939b-48dc-8eae-4a3a0694d9d9.jpg?im_w=720', 111);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4294b917-7126-4d46-aa19-c786e3078916.jpg?im_w=720', 111);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1e4e87a5-a767-4082-b362-378182c1e5a6.jpg?im_w=720', 111);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b24c67f2-1f3f-44a1-8bf5-18205a26cf26.jpg?im_w=720', 111);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46661263/original/218335ae-4bc9-4ad0-ac75-92e9d8f7683c.jpeg?im_w=720',
        111);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46661263/original/da879bee-c609-48d3-adb1-73ae14495d81.jpeg?im_w=720',
        111);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/927f452d-e532-4d91-9667-4e5b08fb8cad.jpg?im_w=720', 111);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2d768e87-c9c3-4693-a275-858468d465d2.jpg?im_w=720', 111);
insert into location(id, latitude, longitude, city_name)
values (112, 33.376, 126.217, '제주');
insert into review (id, star, review)
values (112, 5, 75);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (112, '제주 협재 금능 독채(풀옵션) 제주 가옥 한달살기 (월세) 더월령 입니다', 'Hallim-eub, Cheju의 전원주택 전체', 100000, '집 전체', 2, 4, 1, 112,
        112, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-39848173-unapproved/original/fd328600-c025-4219-a21b-93aa34edffb3.JPEG?im_w=720',
        112);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-39848173-unapproved/original/7e6b23f6-aac0-4bb6-aa0c-b1eb49b44311.JPEG?im_w=720',
        112);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-39848173-unapproved/original/d6e1fc48-2e39-400e-bdd3-14edae614fad.JPEG?im_w=720',
        112);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-39848173-unapproved/original/c79015df-3434-43fc-a712-0b8bfe58bb4d.JPEG?im_w=720',
        112);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-39848173-unapproved/original/53792fc4-4ee1-46e3-907a-1f6e77f1ad3c.JPEG?im_w=720',
        112);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/895a94e3-d12f-40bc-826a-4def45dc357a.jpg?im_w=720', 112);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2a0bcd4f-1021-4437-938d-5e8330281423.jpg?im_w=720', 112);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/40416c13-873d-4997-94f2-9f14efa40d83.jpg?im_w=720', 112);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/16cf5420-b92d-48bd-97a6-09a39edc3269.jpg?im_w=720', 112);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-39848173-unapproved/original/30b0f438-fc98-4477-aeff-534c66544780.JPEG?im_w=720',
        112);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b06cf35c-92b1-4637-a496-9afd80dc309c.jpg?im_w=720', 112);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-39848173-unapproved/original/8db51b4e-d809-4997-a4dd-0ecbf20ae2f8.JPEG?im_w=720',
        112);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/474bc9e1-5065-4516-b2cf-5bab840b8320.jpg?im_w=720', 112);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-39848173-unapproved/original/23c89d02-f37f-401b-a55d-e1e76e7b8e6c.JPEG?im_w=720',
        112);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-39848173-unapproved/original/5eebbc18-c71d-4765-8877-1050c34111bd.JPEG?im_w=720',
        112);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3451b51f-87cc-44db-8c3f-34c956d43ef3.jpg?im_w=720', 112);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/76fd8572-4f84-45c3-a5d6-0a8b49be53bb.jpg?im_w=720', 112);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e5c247d1-e2aa-4f8e-a60a-73c1e0d26d50.jpg?im_w=720', 112);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c57e89fd-4e55-4cd4-8be8-45e3cfe32ccb.jpg?im_w=720', 112);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1d680aaa-6ac2-4ec4-b69b-7276eb283726.jpg?im_w=720', 112);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f85f5877-3919-4eca-9a7d-7e91120c4008.jpg?im_w=720', 112);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/79744712-37d6-406c-a9af-318b9cf21cb5.jpg?im_w=720', 112);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-39848173-unapproved/original/504deb04-12dc-44ed-b163-933b7ae82209.JPEG?im_w=720',
        112);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ce315c1b-2c73-4188-80c0-793286e35e6b.jpg?im_w=720', 112);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3c9b9d7f-1ce2-4871-b83e-1071ddb7ec75.jpg?im_w=720', 112);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9a5b5ae3-dcac-421f-9577-680740373691.jpg?im_w=720', 112);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-39848173-unapproved/original/fe21a4b4-710e-4d80-8411-459666b23a95.JPEG?im_w=720',
        112);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/75e48a2d-17e9-4da7-b25a-4cb9ea0b1d76.jpg?im_w=720', 112);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/79695a1b-d610-4d16-9be5-19a7d79c3969.jpg?im_w=720', 112);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-39848173-unapproved/original/ea8d0b4d-e69d-4e91-8ec4-e0c6585602a0.JPEG?im_w=720',
        112);
insert into location(id, latitude, longitude, city_name)
values (113, 33.54, 126.825, '제주');
insert into review (id, star, review)
values (113, 5, 41);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (113, '토끼굴 별채:작지만 확실한 쉼. 개인정원에서 차 한잔 해도 좋아요', 'Gujwa-eup, Cheju의 전원주택 전체', 90000, '집 전체', 1, 2, 1, 113, 113, 1,
        1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/a9700af9-1d82-44f2-b106-f1b44fb7e018.jpg?im_w=720', 113);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6a47e412-68a2-41ce-8221-addb78758364.jpg?im_w=720', 113);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a057443d-9a2a-4043-8aa5-b5367ee6660c.jpg?im_w=720', 113);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7e345380-5aa2-4583-ac98-680150c0a0a8.jpg?im_w=720', 113);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b064020a-2215-4ca1-ab8d-c327f35fe31e.jpg?im_w=720', 113);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/878b8fb4-75ab-4be9-ac38-d8144be7f759.jpg?im_w=720', 113);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a4e41a39-0197-4da3-a0ea-b2ca5e9528c6.jpg?im_w=720', 113);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3ce5b40b-bb08-4443-992b-1c09ab0799e5.jpg?im_w=720', 113);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3ba83896-790f-4351-b4f1-51fafae919f4.jpg?im_w=720', 113);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0332f844-8283-424a-bb7b-a38010276b1c.jpg?im_w=720', 113);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ee50d6a2-1fde-49bd-8315-62c5de5a0ef9.jpg?im_w=720', 113);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2cea2f55-0e6d-4614-9f25-71f3d1a37030.jpg?im_w=720', 113);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/674ad6d0-abad-4ffe-989f-0e0778d0ae8a.jpg?im_w=720', 113);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c609ff84-2384-479c-987d-b7f3d06cd23e.jpg?im_w=720', 113);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/328087ec-78e4-401d-a147-e01803de82e1.jpg?im_w=720', 113);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/05daf7c4-bb03-4a1f-8def-9d8d8e24620f.jpg?im_w=720', 113);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bf1568f0-a2bd-4803-a9b2-b631669a9078.jpg?im_w=720', 113);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e15aafa7-05ac-47b6-a789-ef8b0837f9fe.jpg?im_w=720', 113);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f1eab70f-0bae-46a7-af63-67e727ac0793.jpg?im_w=720', 113);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ddaf302b-97c6-4c52-be24-443c914474a5.jpg?im_w=720', 113);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4c97d41b-5ba6-4c53-8fbc-ae5188e64a38.jpg?im_w=720', 113);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/40b90db7-7b96-46ad-9aaf-5261b0fc581a.jpg?im_w=720', 113);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/95545a36-af3a-4308-8d57-799f8f7cd002.jpg?im_w=720', 113);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/04be903b-c129-4a18-af3d-265f72063196.jpg?im_w=720', 113);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ecc0d3b9-bc5f-4c4e-80bc-cd5cdfb1ba8a.jpg?im_w=720', 113);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1caff724-b53d-42ac-a522-e3faa316e5b8.jpg?im_w=720', 113);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1a644728-cb45-4159-a88e-67bc0d507793.jpg?im_w=720', 113);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8ad571a5-3160-4715-82a4-fdd1e56617e0.jpg?im_w=720', 113);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/810679ba-0473-426c-9a35-02dbc9d8d340.jpg?im_w=720', 113);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bcc150a6-6d74-4300-bbb3-6452cf5bf7f0.jpg?im_w=720', 113);
insert into location(id, latitude, longitude, city_name)
values (114, 33.483, 126.403, '제주');
insert into review (id, star, review)
values (114, 5, 93);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (114, '제주 애월 감성 공유 민박. 별채 2인실', 'Aewol-eup, Jeju-si의 게스트용 별채 전체', 85000, '집 전체', 0, 2, 1, 114, 114, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/eee837a9-c283-41f9-bfa4-1205963de2f9.jpg?im_w=720', 114);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bd6e8e32-490e-4a28-b3f1-d3a62fb3b527.jpg?im_w=720', 114);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1934a04c-a510-4f7f-bf41-b2ae2f11578a.jpg?im_w=720', 114);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b4d9b2e6-7c94-4349-a366-9f825c2c67a4.jpg?im_w=720', 114);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3ba06bd5-f766-43f5-a9bf-2156c57294fa.jpg?im_w=720', 114);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e8b45864-dc46-476f-839b-bc6b665a52cd.jpg?im_w=720', 114);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7b9d3d45-32b6-40ba-b376-279413fe9edc.jpg?im_w=720', 114);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6950aade-04a6-4327-8aac-e4a440d9addd.jpg?im_w=720', 114);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d8bea744-de94-4759-80a2-02ba63b288ea.jpg?im_w=720', 114);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b0faa1ce-b66a-4284-90d4-ce34654bed35.jpg?im_w=720', 114);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/945b3c8c-3953-4115-a7bb-50023708cd40.jpg?im_w=720', 114);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/866f6049-5b3d-471c-81a3-d10ee78de38d.jpg?im_w=720', 114);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0561e5f3-ab6f-40a0-a3f2-57bcdec9b0d8.jpg?im_w=720', 114);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7833a2c3-6fa1-4826-a53a-df2e683769eb.jpg?im_w=720', 114);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4a58450a-aa6f-4554-9d79-5f2d0438444a.jpg?im_w=720', 114);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3754aa75-9068-4f7a-a1c7-ddfaa709059d.jpg?im_w=720', 114);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/431bf153-9f94-4dbc-b547-880876f47e1b.jpg?im_w=720', 114);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dfcdfb8e-da3e-47ea-b189-405c3c06c12c.jpg?im_w=720', 114);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/66d1cba6-76d1-46b0-b5cf-1e57f24b021a.jpg?im_w=720', 114);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e77e504a-573b-4dd8-9ed8-80c0c7cf17ca.jpg?im_w=720', 114);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/894702c7-4ea9-4bbb-a738-30c339a61ff3.jpg?im_w=720', 114);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6b1c0a9e-aca0-4ea0-bc30-ba10762dd255.jpg?im_w=720', 114);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/28a1ee1a-4b3c-4d98-939e-6e81abe4e916.jpg?im_w=720', 114);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/92718916-8c73-480c-8fc4-83c24bb53b62.jpg?im_w=720', 114);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/abbd0c06-a714-4cc3-936c-b57bae332d3d.jpg?im_w=720', 114);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/21d86d87-e05d-49d6-b646-a2e0c2305859.jpg?im_w=720', 114);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/82b72e61-6163-4b89-9fe9-41b341874c12.jpg?im_w=720', 114);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/22c983fb-dddf-4682-aae2-6c8c8f1112eb.jpg?im_w=720', 114);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3f3354b0-12cf-4217-93e4-6da047a62ad4.jpg?im_w=720', 114);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8b8342e3-f354-4a2a-acb1-4ad2cfce8cb9.jpg?im_w=720', 114);
insert into location(id, latitude, longitude, city_name)
values (115, 33.525, 126.852, '제주');
insert into review (id, star, review)
values (115, 5, 72);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (115, '*오픈특가*푸릇푸릇초록뷰*제주돌담*평대,다옴-중간채', 'Gujwa-eup, Cheju의 게스트용 별채 전체', 100000, '집 전체', 1, 2, 1, 115, 115, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/9ca55b06-ab74-4183-baef-51fcb29b612b.jpg?im_w=720', 115);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e4ec7c6b-a9b3-4748-9e43-89de7c75c393.jpg?im_w=720', 115);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/24641418-a210-48ad-a49f-1cf6a4ec9592.jpg?im_w=720', 115);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/02be20b3-9d88-47ba-84f8-dd994016eb5d.jpg?im_w=720', 115);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ba0ec2fa-55a1-470e-909e-88ee8efee043.jpg?im_w=720', 115);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f45e4f17-0eb8-4f22-8599-db3e2ec084c7.jpg?im_w=720', 115);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2c575095-1779-4b29-ab2d-e81e59733083.jpg?im_w=720', 115);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/605e6559-50d7-4872-a480-0d2485f717ab.jpg?im_w=720', 115);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/747dd5aa-5b9c-4959-a773-116289dfb1a0.jpg?im_w=720', 115);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c65dbd4a-bcc5-4424-ae81-0df0fcb28aa1.jpg?im_w=720', 115);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fda0917c-7795-43f0-8073-974d9d8e51e5.jpg?im_w=720', 115);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cff440c5-c1d5-4813-a055-2225bd5a5e85.jpg?im_w=720', 115);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0e6494f4-c3d9-49fb-8f0f-34ee3377e2d1.jpg?im_w=720', 115);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b6659779-6cf6-4a92-824f-aaa92787c617.jpg?im_w=720', 115);
insert into location(id, latitude, longitude, city_name)
values (116, 33.452, 126.402, '제주');
insert into review (id, star, review)
values (116, 5, 8);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (116, '제주도 애월읍 공기좋은 숙소 Aewol Orange', 'Aewol-eup, Jeju-si의 전원주택 전체', 60000, '집 전체', 1, 2, 1, 116, 116, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/a14af3b8-5311-4661-869c-83df4133a632.jpg?im_w=720', 116);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7742739a-e448-4052-bdf4-72c3d0584904.jpg?im_w=720', 116);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/50c55ba8-ce62-43a9-ac57-dca7e9db568c.jpg?im_w=720', 116);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8b50159e-19e3-407e-a131-9791396b5b61.jpg?im_w=720', 116);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f7fdc8ae-5bd4-4178-b717-c7927cff6807.jpg?im_w=720', 116);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/382013d6-11fc-4e8f-b312-88ca06010d80.jpg?im_w=720', 116);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/06a383e9-7acd-4165-913a-a5cc0cf6eebf.jpg?im_w=720', 116);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/84692d48-8806-4e78-b677-bf9556705cf0.jpg?im_w=720', 116);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/df04b3f7-f7c1-4436-914e-6a15aef502e7.jpg?im_w=720', 116);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/498a5ef4-e208-41d7-9698-589294896d3b.jpg?im_w=720', 116);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/abb2fcdb-f338-4f3c-9b36-927d09937ebc.jpg?im_w=720', 116);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3ca34633-a658-4c82-8b7e-e988ee29d73c.jpg?im_w=720', 116);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d34e7390-c63f-4b40-a1ca-928fa53ea187.jpg?im_w=720', 116);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6faebff7-6c60-4fdd-bd3f-45ff7a850152.jpg?im_w=720', 116);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b5b5c668-73e9-4137-a799-99f34cb99026.jpg?im_w=720', 116);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9bf99a05-2dde-4f7c-98c9-85285b1ab1e4.jpg?im_w=720', 116);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/db44b6ed-ece8-4180-92a0-63e69e1bbea7.jpg?im_w=720', 116);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/06f6c520-e9e8-4932-9c60-86b36c1feb2f.jpg?im_w=720', 116);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e156a6b9-723c-4061-ba1d-b7e3693754d2.jpg?im_w=720', 116);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/74f65afb-5c6c-4f5d-bdca-0e5821c0ace9.jpg?im_w=720', 116);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/de3c99c2-925f-42c7-ba18-df38c3c8e190.jpg?im_w=720', 116);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/107f48e6-51a6-4702-bd3b-bb002f9b83aa.jpg?im_w=720', 116);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3f66b732-233a-497c-b6a6-a6bef1fbd770.jpg?im_w=720', 116);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a2b54b0c-63ae-4a6f-9d41-5b30f06bc709.jpg?im_w=720', 116);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/26f639c5-1dff-4231-9503-e2bef2dd5e58.jpg?im_w=720', 116);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/57f1181a-1012-4eed-9f5d-a36e7182a809.jpg?im_w=720', 116);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f35525fa-8c37-423d-bc42-1aec7ffa3c78.jpg?im_w=720', 116);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7060d975-8059-4e83-b83d-80d85c7be9ba.jpg?im_w=720', 116);
insert into location(id, latitude, longitude, city_name)
values (117, 33.437, 126.275, '제주');
insert into review (id, star, review)
values (117, 5, 396);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (117, '애아리in귀덕 - 바다를 담은 집 Private rental house', 'Hallim-eub, Jeju-si의 집 전체', 85000, '집 전체', 2, 6, 2, 117, 117,
        1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/c14f70bf-99fb-47cb-8224-2ee5eb29b32b.jpg?im_w=720', 117);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6ef50c90-bb06-400f-adcf-1e205f5bc140.jpg?im_w=720', 117);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/439de884-1265-4d22-9df5-46757053b337.jpg?im_w=720', 117);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5c75a228-e026-46c4-a792-b0b841d29ef5.jpg?im_w=720', 117);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/25b77fa8-7225-4498-9118-15c2c7abb564.jpg?im_w=720', 117);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3a5d9c18-9db6-4be5-8e28-11581295239d.jpg?im_w=720', 117);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ac32bcd9-2af9-403b-aeec-66f94b7794b3.jpg?im_w=720', 117);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/96dbc0f0-38f9-49f1-b3eb-c63e42b1aacd.jpg?im_w=720', 117);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/be6e3686-f892-44a4-8c9a-8322cc3be33f.jpg?im_w=720', 117);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e40ea2e3-940e-4540-9d90-69c8d03657a8.jpg?im_w=720', 117);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5275a5a6-ae66-4e05-bd99-7733b73d5969.jpg?im_w=720', 117);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ac61329a-92d0-4f97-ac87-dc898924841b.jpg?im_w=720', 117);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fe93c46b-e47d-407a-a8b7-d985959fa8e4.jpg?im_w=720', 117);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dd95b41d-3f48-4fa0-9583-47e5a335afba.jpg?im_w=720', 117);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c3c705ba-4741-47ec-8035-9d0c26a42d09.jpg?im_w=720', 117);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/76331ea5-4bd4-4b4c-ac9f-f76d03cc9150.jpg?im_w=720', 117);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0f567408-6e68-4315-9bb6-7a4ea30d9155.jpg?im_w=720', 117);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e4719acb-9e2e-43d8-b62d-bf3b9d2820fc.jpg?im_w=720', 117);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/557d0190-49c1-410a-9b3d-97c05f77686d.jpg?im_w=720', 117);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8e2bd8d5-3000-47ea-9f18-df40c326f6d2.jpg?im_w=720', 117);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7321f56f-a760-4fbd-ba3c-2da19c2bc551.jpg?im_w=720', 117);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f4b3d17b-cff6-4678-af34-533d9a91f102.jpg?im_w=720', 117);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0775d295-713e-4414-82ae-4bc8e3ca615f.jpg?im_w=720', 117);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cf472add-07a6-488e-9816-0b64802a3dad.jpg?im_w=720', 117);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d4b1f60f-0897-41e0-aa73-1570b12af1e3.jpg?im_w=720', 117);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/af13fbb6-27af-489f-bbe7-b4c87e3a7dde.jpg?im_w=720', 117);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c4efb533-ae63-4f93-bb57-000114f26357.jpg?im_w=720', 117);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/de5c025e-39d6-4bf7-8d25-b269eb210341.jpg?im_w=720', 117);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3af06b0c-346d-4c76-a0df-bfcaeaa3b50f.jpg?im_w=720', 117);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7cf99bf1-a299-4cc3-afba-70f89c289586.jpg?im_w=720', 117);
insert into location(id, latitude, longitude, city_name)
values (118, 33.451, 126.425, '제주');
insert into review (id, star, review)
values (118, 5, 254);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (118, '하음이네~애월 타운하우스 원룸 별채', '제주시의 게스트용 별채 전체', 95000, '집 전체', 1, 2, 1, 118, 118, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/26dc1ee5-fff3-43a7-9390-609e94d9c9ec.jpg?im_w=720', 118);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5ee3b875-9db1-4b4e-9d86-f0d2144d379c.jpg?im_w=720', 118);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/31c0674b-f123-4f89-9599-7a364744af1a.jpg?im_w=720', 118);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/07296622-a056-4a05-9355-572d4c29dddb.jpg?im_w=720', 118);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8ebae3b9-1482-4c8f-a1d6-239be4486681.jpg?im_w=720', 118);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bf9ed03c-29cf-4c7e-8dca-c860c1cface4.jpg?im_w=720', 118);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9875ab71-d9fc-42f7-ab3a-f51076e52b4c.jpg?im_w=720', 118);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/330e2a5c-8deb-4e4e-a403-0ab38b21343c.jpg?im_w=720', 118);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3a4bfe46-0496-4c52-be7c-9449dfb9f89c.jpg?im_w=720', 118);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/03cfe2f6-f7ea-449d-aef0-ecef4c2b8645.jpg?im_w=720', 118);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9930073f-6967-4583-973a-45ecd6d1b961.jpg?im_w=720', 118);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fbe08c0f-b0c8-49f1-8091-04db6acf32f6.jpg?im_w=720', 118);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c09c0078-bbca-430f-8e77-bf544485bb48.jpg?im_w=720', 118);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4730d5e2-d2ef-4667-aee8-1169c7d6b8a0.jpg?im_w=720', 118);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e9795417-8235-4e32-af4a-576607ad8969.jpg?im_w=720', 118);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/189222de-f6fc-4608-9b55-ab5f1e47b125.jpg?im_w=720', 118);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/30109999-ed5e-482d-919d-36213c76a2a5.jpg?im_w=720', 118);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c407d845-a858-4d1e-a019-8c1bc04b2383.jpg?im_w=720', 118);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dc0d4991-da84-4f8f-9bfb-9e4b07782cd1.jpg?im_w=720', 118);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/41306434-74a8-4763-ad69-46b016a15ac0.jpg?im_w=720', 118);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a51da9a1-34d0-428a-ac0b-29bfb10b11a2.jpg?im_w=720', 118);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f0edfd73-4e81-40cc-80fc-222b44b7cf71.jpg?im_w=720', 118);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f76d52b3-37b8-44ac-9eab-ec74291290a7.jpg?im_w=720', 118);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4c0f4f19-07ad-4220-91d8-3d19ad6543b2.jpg?im_w=720', 118);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7b012b01-db6b-4b27-8393-ca586ffac890.jpg?im_w=720', 118);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bcc10ae3-3fb5-417d-a10d-31c4676da1eb.jpg?im_w=720', 118);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/37f6faed-a762-43f1-938e-8018382ae19b.jpg?im_w=720', 118);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5fd68946-479c-43fd-8be6-58192b96528a.jpg?im_w=720', 118);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0228e65f-8e4e-49df-9330-e33288b3a68b.jpg?im_w=720', 118);
insert into location(id, latitude, longitude, city_name)
values (119, 33.397, 126.243, '제주');
insert into review (id, star, review)
values (119, 5, 212);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (119, '"비양도" "에메랄드빛 바다" "협재해수욕장"전망/3층,옥상, 독채하우스 "말깡거리 협재"', 'Hallim-eub, Cheju의 집 전체', 100000, '집 전체', 2, 6, 2,
        119, 119, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/5c7e6a93-b729-41a8-b138-464ebcbf56c4.jpg?im_w=720', 119);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e918c2e8-9041-433b-8ced-4e4f2fba9a8b.jpg?im_w=720', 119);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/373bdd2f-dcc2-43b5-8a77-88c3930f4ed7.jpg?im_w=720', 119);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ab07301f-c9af-4fa9-ae80-9fb7d04c1145.jpg?im_w=720', 119);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/236b3344-1ec3-4e6b-a8de-457ac5597e6c.jpg?im_w=720', 119);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3199d05d-b4c1-4764-98a1-80cb0fd5b849.jpg?im_w=720', 119);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e396bd83-1259-4a41-9a23-4ba5615351dd.jpg?im_w=720', 119);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e4bbf3f0-8739-4edc-9ae7-3c4bd76cb736.jpg?im_w=720', 119);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a51b637b-5476-478f-afcf-ce5e4901399b.jpg?im_w=720', 119);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a81ac188-c03f-4c7a-84fb-7d2d86669afa.jpg?im_w=720', 119);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/eb0ae7b1-d22d-433d-9fcc-68fcd24b593f.jpg?im_w=720', 119);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/37d8d284-a347-4b7a-a09b-5c23d27174e2.jpg?im_w=720', 119);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1ff6ee2b-0420-4993-ae71-f209fa0bff3d.jpg?im_w=720', 119);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/335168ca-502e-4cd0-9c57-fbca1fac002d.jpg?im_w=720', 119);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3473aea5-a992-4489-a71a-7dc52012d69c.jpg?im_w=720', 119);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/311efa24-b410-47f1-88c8-a2a9b672cd90.jpg?im_w=720', 119);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9a0d551c-4620-4cb6-a23d-91b3bfe41d7e.jpg?im_w=720', 119);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/69a8f384-0543-444c-aae0-e5f20066449c.jpg?im_w=720', 119);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d91ffc04-6140-404c-b4c1-8356142f8b03.jpg?im_w=720', 119);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1c4cb99c-f777-441d-86ee-3f19f3f9397d.jpg?im_w=720', 119);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/583b83b5-2de9-41bd-af68-1f8fbd76e6d1.jpg?im_w=720', 119);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4028c67f-26f1-4af5-b3f9-292e4414b54a.jpg?im_w=720', 119);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/28e1fdb7-4d66-4bbb-b40a-2ae85ed33261.jpg?im_w=720', 119);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ea22b1b6-2ca3-4145-85b0-eca67577fe15.jpg?im_w=720', 119);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f5463f5e-cde1-497b-a647-d7ecddec5d6b.jpg?im_w=720', 119);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c414821e-5005-476f-b6b2-2baa9ff94077.jpg?im_w=720', 119);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/768ab004-cbfb-40b9-82da-7d08b8be5315.jpg?im_w=720', 119);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d6b081db-5fdc-4830-bd7d-729ebe70e326.jpg?im_w=720', 119);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/72befde8-4328-44a4-a579-5ab1fd7dc32c.jpg?im_w=720', 119);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b7a32415-48b7-4447-8bca-61f11205132e.jpg?im_w=720', 119);
insert into location(id, latitude, longitude, city_name)
values (120, 33.4, 126.255, '제주');
insert into review (id, star, review)
values (120, 5, 63);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (120, 'stay_AHHA _01호', 'Hallim-eub, Jeju-si의 펜션', 100000, '집 전체', 2, 2, 1, 120, 120, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/7d0486c9-f75c-49b7-8a8a-7d2ec2bef3f4.jpg?im_w=720', 120);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/31c62e67-677d-45d6-8e75-5d2d36fc5b16.jpg?im_w=720', 120);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2fc6970e-f3f0-4cd1-9e0c-52172b50fa35.jpg?im_w=720', 120);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4f42e602-31a8-4d60-8391-d465b18076ae.jpg?im_w=720', 120);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3864f87e-1f3d-4893-b931-6ecee823d40a.jpg?im_w=720', 120);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1e59b44c-6604-4bca-9a5e-bf24a9be5984.jpg?im_w=720', 120);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/32f4f2d6-9184-4e06-8c8d-35cbdbc08533.jpg?im_w=720', 120);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4068b588-634a-4a21-b5f2-b61428cf6a3b.jpg?im_w=720', 120);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2f373d64-e85a-4bb9-ab5c-3b7f3770d63d.jpg?im_w=720', 120);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c2d46cd0-09cd-4a93-a108-9cb6a998241c.jpg?im_w=720', 120);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/74887678-5d84-4074-801f-584755f60ad6.jpg?im_w=720', 120);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/30e2c639-44fa-452a-8976-9d5988b7ec4b.jpg?im_w=720', 120);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c94146b9-9f58-4062-84f7-1a7ee87341c9.jpg?im_w=720', 120);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9ca4ce6c-7cb0-48ff-b8f6-ebf8a15f964a.jpg?im_w=720', 120);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ce8209c0-6cb3-41be-9ddb-6f5b9542759e.jpg?im_w=720', 120);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6c295cfc-03da-44e0-8599-19148973e9a7.jpg?im_w=720', 120);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/56f0e41d-855a-4e09-972f-282a3f81940e.jpg?im_w=720', 120);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1d7a4dd9-8250-4eb6-b5d5-f680201eed35.jpg?im_w=720', 120);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/821f22d4-f70a-4b73-8fc9-2d2460a6629c.jpg?im_w=720', 120);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3fd1c828-94ff-4419-bae1-f3859b4db3ae.jpg?im_w=720', 120);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/408e87ce-9fb5-4889-b5bd-53f7517fc940.jpg?im_w=720', 120);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/12d4fcc1-3f87-4fc1-8447-0c72f793ecfe.jpg?im_w=720', 120);
insert into location(id, latitude, longitude, city_name)
values (121, 33.423, 126.282, '제주');
insert into review (id, star, review)
values (121, 5, 64);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (121, '달안별채', 'Hallim-eub, Cheju의 게스트용 별채 전체', 91000, '집 전체', 1, 2, 1, 121, 121, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/34ab1696-3b0c-49f1-82cc-1e78eb5de8cd.jpg?im_w=720', 121);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c2dcf262-c90c-44c7-ad19-f959718cc1c4.jpg?im_w=720', 121);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c570f8d2-e0a8-44df-8ae3-6538abd73e61.jpg?im_w=720', 121);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/149c7962-1e8a-4386-aca1-7664fec41aaf.jpg?im_w=720', 121);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c7818cb7-54ba-4695-a0c3-ede774948310.jpg?im_w=720', 121);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a3ea73c4-fc94-45d5-920d-ebe571e2538d.jpg?im_w=720', 121);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/94735a31-bbd2-4a23-bd07-38d7f8f5ee1d.jpg?im_w=720', 121);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cb9e0522-ffb8-4dd0-9115-7bb69d5268ef.jpg?im_w=720', 121);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/54239dbe-24f3-4a7e-b5ff-a665e2c974ff.jpg?im_w=720', 121);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/34f533e4-91c7-4cfe-9c13-4c67e034ff59.jpg?im_w=720', 121);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1265d1f8-b11f-43a2-9939-b98b49f3afe3.jpg?im_w=720', 121);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4961006c-2105-42fe-917d-27d73fc0757e.jpg?im_w=720', 121);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/945b1a68-9d82-4f2e-a44c-7c1a4f7ff75e.jpg?im_w=720', 121);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/baac50c3-2960-458b-a4a1-a802f483ccfb.jpg?im_w=720', 121);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e59bcdcc-0505-486f-97fc-47048b84d90e.jpg?im_w=720', 121);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/807dbb97-8a05-44bb-abf1-57f51734f299.jpg?im_w=720', 121);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a51f2f2b-bfef-4c70-afc8-f39b67c4894a.jpg?im_w=720', 121);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e349631c-48ec-4749-b71a-ee577d28baa8.jpg?im_w=720', 121);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7b710477-8dbd-4913-bbc0-2bf00e0ed880.jpg?im_w=720', 121);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0edbfa88-3e49-4daa-b393-9fa52ba724ee.jpg?im_w=720', 121);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dcf593c7-74fe-41e5-8e64-cf2d53be8516.jpg?im_w=720', 121);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/06889732-8b79-46b7-8a82-578541487226.jpg?im_w=720', 121);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a6737d0c-c420-4f80-9193-7f81e142d401.jpg?im_w=720', 121);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/35844278-db47-4b53-b2d6-b8507d15330d.jpg?im_w=720', 121);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ac17c465-fbab-4aa9-a764-c04535796fe7.jpg?im_w=720', 121);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/776b9e76-1ede-4d15-ab75-9b7c1d0e386f.jpg?im_w=720', 121);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b0621d91-301a-4d13-bbe2-db03b22cb49b.jpg?im_w=720', 121);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ebcc6cf0-2b1b-4b3a-a824-c401a675858e.jpg?im_w=720', 121);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cbe0c35b-48bd-42bb-ac4a-68bbe8124f3b.jpg?im_w=720', 121);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/551a4e70-cedd-48fb-a765-1441754cc39b.jpg?im_w=720', 121);
insert into location(id, latitude, longitude, city_name)
values (122, 33.384, 126.251, '제주');
insert into review (id, star, review)
values (122, 5, 17);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (122, '스테이 낭 ''A''동 협재바다 신축 소곤소곤 우리들만의 특별한 밤~((오픈할인))', 'Hallim-eub, Jeju-si의 집 전체', 95000, '집 전체', 1, 3, 1, 122,
        122, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/7a7c4fbc-8771-4741-b14a-e5f09b187553.jpg?im_w=720', 122);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/80d763c2-67fe-4774-a5ad-d2b2e9fdcde1.jpg?im_w=720', 122);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b28f3529-558c-48e7-b6a1-eda9cf761ab9.jpg?im_w=720', 122);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2b5073cf-81fb-428b-bbed-1ffaf80571d6.jpg?im_w=720', 122);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1bc8001f-68e8-44f8-8652-79c48666c4b5.jpg?im_w=720', 122);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fb38055c-ef17-430c-a828-9c2eef40aea8.jpg?im_w=720', 122);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0dee272b-fdd7-42c7-8bb0-3fc0f1081b19.jpg?im_w=720', 122);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3e877df0-9591-4307-9f46-fd8ccce29138.jpg?im_w=720', 122);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/816d26cf-5691-447c-8fb1-c63c536ee656.jpg?im_w=720', 122);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cb9354c4-69bd-4666-8e8e-3b357de5bd4f.jpg?im_w=720', 122);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/db81390e-e977-4e55-9e25-544ba98fecb9.jpg?im_w=720', 122);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/29fa30ba-4a56-406d-a992-ae1b5f4d92f5.jpg?im_w=720', 122);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1aeb0e7e-2ad9-475c-9548-716d4853cfee.jpg?im_w=720', 122);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6140c637-0dbe-4157-9fc5-3a6938689f81.jpg?im_w=720', 122);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/60825727-9cba-405e-b26b-2a8aa6b1c762.jpg?im_w=720', 122);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9f8c38f2-bb6b-4016-8d2b-056f5cf430bf.jpg?im_w=720', 122);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d39ef74c-dc69-4e4b-a3f8-7c4f6f4f3560.jpg?im_w=720', 122);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c2b0b841-30f2-4a54-8465-c6b212134742.jpg?im_w=720', 122);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/224d6815-b874-4902-ab60-62f76d01e43f.jpg?im_w=720', 122);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46608548/original/8b8a812d-88a7-4dfe-8c1c-0e0689ce7e8f.jpeg?im_w=720',
        122);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46608548/original/900328d4-4c9b-4aaf-bf83-0be7b02928ef.jpeg?im_w=720',
        122);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/adac5a00-f9f2-42cf-8add-df2fac14c6a2.jpg?im_w=720', 122);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/633f537e-d149-41c8-b197-f53fa117eb20.jpg?im_w=720', 122);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9dbbc3b6-0e92-4280-8335-ab7ddb30a28d.jpg?im_w=720', 122);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a5001d2a-405c-42d8-a09e-5dbcdfb66549.jpg?im_w=720', 122);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b2445bd5-1128-40df-b739-6a97dcc0f728.jpg?im_w=720', 122);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/05d0d577-2dcd-4d52-b6b2-eaaba169d79e.jpg?im_w=720', 122);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8f04ac58-9a5d-4aac-b3ed-5893c334b47b.jpg?im_w=720', 122);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b4457be4-67b6-4bd5-a42d-d0146530e2c5.jpg?im_w=720', 122);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5d00449e-0e20-423a-8eaf-085af89c1766.jpg?im_w=720', 122);
insert into location(id, latitude, longitude, city_name)
values (123, 33.436, 126.393, '제주');
insert into review (id, star, review)
values (123, 4.5, 48);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (123, '애월노천탕 일본풍 료칸 돌집돌담 소길리 풀빌라', '제주시의 게스트 스위트 전체', 90000, '집 전체', 1, 2, 1, 123, 123, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/e43ceb4a-8228-4a3e-8330-dc5836eedd8f.jpg?im_w=720', 123);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/60f1b54f-9760-4209-9ac1-7889aea6c23a.jpg?im_w=720', 123);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/02177f58-0ba7-4597-9788-96c0fd39a880.jpg?im_w=720', 123);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/52d5a8c4-4396-4320-9fe2-14980cd68816.jpg?im_w=720', 123);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2172bf26-3d38-4678-a554-4a3549a0a3e6.jpg?im_w=720', 123);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2878b731-3e5d-4133-9811-860144669624.jpg?im_w=720', 123);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bd20f686-83df-40aa-b28b-9c587007fc21.jpg?im_w=720', 123);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d39c00ff-680d-48fd-99fc-2500ce1720d9.jpg?im_w=720', 123);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7eddb0bc-b505-41c4-bcef-503beb00c5c9.jpg?im_w=720', 123);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4d201ef1-fd2f-4961-bef1-4111ad95316d.jpg?im_w=720', 123);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4e9ea971-5abc-4dc0-a4a5-f6d3791ae150.jpg?im_w=720', 123);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9d3f2c97-b774-415f-bc80-e7ea8f8589c7.jpg?im_w=720', 123);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/651250ef-696f-4c5a-8e12-47feb8c8b347.jpg?im_w=720', 123);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6b6a5854-0576-4305-a82b-47436a33b7d2.jpg?im_w=720', 123);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ec8a1f9f-d6cc-410d-baca-b1e9d19630c4.jpg?im_w=720', 123);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a957c3ab-79e3-4349-bbf4-5a6c2660aaa9.jpg?im_w=720', 123);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d0549c19-54c8-47d9-a17d-13dd89b071cf.jpg?im_w=720', 123);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/67300e9f-acf7-4815-9992-c41b8086e5ba.jpg?im_w=720', 123);
insert into location(id, latitude, longitude, city_name)
values (124, 33.532, 126.822, '제주');
insert into review (id, star, review)
values (124, 5, 30);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (124, '°제주첫날-설렘동° #프라이빗#돌담정원#따듯한 햇살가득 #제주첫날 한동리', 'Gujwa-eup, Cheju의 집 전체', 93000, '집 전체', 1, 4, 2, 124, 124, 1,
        1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/e9042159-482c-45c4-a954-263b2def9a18.jpg?im_w=720', 124);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2dd76fd6-f647-4eb1-9609-3ad4865971b7.jpg?im_w=720', 124);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/294db4ff-b171-4bb3-8a2e-cdecfc5cecd5.jpg?im_w=720', 124);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/617f65a7-5452-4bce-87c8-44cd02888754.jpg?im_w=720', 124);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/483ce74e-7bee-4404-9f81-50be6fa73376.jpg?im_w=720', 124);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d9eec2c1-8b3e-4865-a943-5d4bbbb1226a.jpg?im_w=720', 124);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b651a3e1-adba-4d84-8449-2c9995d181cc.jpg?im_w=720', 124);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3165451e-fa49-4f95-a345-974b90c0c412.jpg?im_w=720', 124);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7031db03-ca60-4226-9c98-52a3c45fa0c3.jpg?im_w=720', 124);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/82f614af-d18b-4b58-b39e-a5b2ea7b3fda.jpg?im_w=720', 124);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f36206cd-fb06-456a-9c3a-5e663d0b1602.jpg?im_w=720', 124);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4b88d6da-5883-4ffe-98d4-55b1d0d4073f.jpg?im_w=720', 124);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f8238501-34ce-4326-ba2a-49a887b62200.jpg?im_w=720', 124);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/94fd2fd4-8c4b-47ec-a465-3b293e1a86a3.jpg?im_w=720', 124);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e95522c0-cde9-4d3a-bfcb-77985179b5ae.jpg?im_w=720', 124);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0d3db500-01eb-4d0f-8846-f61cdc060ffb.jpg?im_w=720', 124);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/20ba7db0-c439-4b01-9b85-295759fd6174.jpg?im_w=720', 124);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/501d594e-b85a-446f-814f-3e046a47be07.jpg?im_w=720', 124);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7d9fd21b-768a-42e9-9645-d7363394a425.jpg?im_w=720', 124);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a1f4ff47-9322-402d-be5f-c95990ac5071.jpg?im_w=720', 124);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/97a5073c-4a81-490e-9c53-d0db0be1911f.jpg?im_w=720', 124);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/71bf0143-9ab0-4688-a86d-328a9def955c.jpg?im_w=720', 124);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d2af609d-44ca-4cc3-8614-86fe6822db83.jpg?im_w=720', 124);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3f579816-10c9-4ef8-8e2d-72924e1a03f7.jpg?im_w=720', 124);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a7a6d6da-6a55-48d4-a507-a14251afbaf1.jpg?im_w=720', 124);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a6867eb4-4279-4e85-9969-6c4a5bfa6060.jpg?im_w=720', 124);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/825c4753-4952-49cc-a9d5-99870584a149.jpg?im_w=720', 124);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/124c0be0-5dab-4ae3-88fc-b9dbd3c06817.jpg?im_w=720', 124);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4169603b-28d6-403c-8b6f-080a6abf4c73.jpg?im_w=720', 124);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/748fbceb-656e-4e0c-b609-e9fd613837c1.jpg?im_w=720', 124);
insert into location(id, latitude, longitude, city_name)
values (125, 33.439, 126.331, '제주');
insert into review (id, star, review)
values (125, 5, 308);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (125, '답다니언덕집', 'Aewol-eup, Cheju의 전원주택 전체', 100000, '집 전체', 2, 4, 1, 125, 125, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/966d571a-7de0-4845-8e7c-22d216d0613e.jpg?im_w=720', 125);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a931f7f3-926f-4b1c-8ecf-8fbb8b41289a.jpg?im_w=720', 125);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6f61c971-2dd7-48d1-b12d-a06624e4f26f.jpg?im_w=720', 125);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7233677d-4b1f-4809-8813-f46b18abe6c7.jpg?im_w=720', 125);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d4377404-3085-4699-a996-4a8fa9d16aba.jpg?im_w=720', 125);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/52f12100-cf16-4215-954d-6d2159ba4280.jpg?im_w=720', 125);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/63710ee1-aab4-4fa6-b41c-62340429d879.jpg?im_w=720', 125);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cfd58132-a23d-4413-ac20-9dc0ca9b8b6e.jpg?im_w=720', 125);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/325ede3c-89d9-4d20-ae62-8556106f9e2c.jpg?im_w=720', 125);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/267f6bbe-b0ed-4935-8959-2f08dacb8cb2.jpg?im_w=720', 125);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4440017d-582d-4c92-8bfd-bf9ecbeca414.jpg?im_w=720', 125);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5834d948-203e-480a-9dcf-41c3e33aebcb.jpg?im_w=720', 125);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4d8e3e6b-4728-4d97-8619-8662b4265eff.jpg?im_w=720', 125);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a56055ba-e399-45ec-b928-e1bc664e4e96.jpg?im_w=720', 125);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e6c7229c-323a-4628-9151-12dc3cd2865f.jpg?im_w=720', 125);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/75194356-5478-41ba-b240-d51a6b7099e9.jpg?im_w=720', 125);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/179ecfed-1b03-4902-9b84-852576552f2a.jpg?im_w=720', 125);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7e54e2db-029e-43e1-aeb0-17e861f6fafa.jpg?im_w=720', 125);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ca7819b2-003c-4c82-a0e2-1a6b4a764b25.jpg?im_w=720', 125);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/49fc5b8e-b044-4d3a-b78e-a15db004b260.jpg?im_w=720', 125);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fbb2c7f5-39f3-453e-a157-5022b920155d.jpg?im_w=720', 125);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/202a514b-2664-410d-bfec-ee78eb97a370.jpg?im_w=720', 125);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/05b84d8d-a6e7-43ce-a69e-9393ff522513.jpg?im_w=720', 125);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c147c703-1468-4f47-ac7a-cad8d9751d19.jpg?im_w=720', 125);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/63584bd5-b29d-4d3e-93ec-59846bd98824.jpg?im_w=720', 125);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/da0ae437-e9ec-4a59-91c4-97801a731fc1.jpg?im_w=720', 125);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d6eed605-5ae0-4c01-a89b-93c2a0f75ef8.jpg?im_w=720', 125);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e6bc0692-beed-4c90-aed2-debea8ca0e5a.jpg?im_w=720', 125);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cccfda9d-1fdc-4999-8171-533228b6b930.jpg?im_w=720', 125);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dda5cf82-ba59-4448-9694-f895826253a6.jpg?im_w=720', 125);
insert into location(id, latitude, longitude, city_name)
values (126, 33.385, 126.249, '제주');
insert into review (id, star, review)
values (126, 5, 30);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (126, '스테이 낭 ''D"동 협재바다 신축 꽁냥꽁냥 우리들만의 행복한 밤~((오픈할인))', 'Hallim-eub, Jeju-si의 집 전체', 95000, '집 전체', 1, 3, 1, 126,
        126, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/8d0d0564-5a01-47fb-abd4-49dc82ac63fc.jpg?im_w=720', 126);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a3d44c26-dcd3-4107-a9e1-6600e3df953f.jpg?im_w=720', 126);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6c016edb-5477-4a90-bd13-7c2c58ad3b7f.jpg?im_w=720', 126);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a8a582c5-a964-47b7-85bd-174db2086a9c.jpg?im_w=720', 126);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b2cfbe6e-4ffe-4b81-bc23-019c17f8c3cb.jpg?im_w=720', 126);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4e3c6fad-9c05-4f8c-b64c-e8191f7f6ccf.jpg?im_w=720', 126);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f669ebb4-d016-41d9-b3ea-9e7a763a70c3.jpg?im_w=720', 126);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/939cd928-0e98-4d64-a83d-03defd738e56.jpg?im_w=720', 126);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cf3a1c32-5bd4-4cd8-b540-a103c491c5c9.jpg?im_w=720', 126);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46566832/original/f3f65a10-ac8a-4c3b-8ad8-71423b1dc81c.jpeg?im_w=720',
        126);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/62bd364d-e895-4b26-b7e0-d6bd94c6628e.jpg?im_w=720', 126);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/65979ef2-0787-431a-9cd0-d685f4a8e260.jpg?im_w=720', 126);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/96745103-a657-494c-9623-095d48aa9754.jpg?im_w=720', 126);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a7db9970-fe3b-43c0-a310-79d5012999c1.jpg?im_w=720', 126);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/26d3367e-f064-416f-a357-f5c99957aa85.jpg?im_w=720', 126);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/83d66eaa-9eed-40eb-a049-1fb2ffe60d34.jpg?im_w=720', 126);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/236e7688-67de-4dda-9e2f-e8c13a12cc10.jpg?im_w=720', 126);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e5568326-8b9c-49f9-a92e-34206dbf7488.jpg?im_w=720', 126);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/601d0d34-715a-412c-bcfc-05ce1e3f7625.jpg?im_w=720', 126);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/caed7043-c773-4ec2-8367-645be672ad51.jpg?im_w=720', 126);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f39d4675-939b-48dc-8eae-4a3a0694d9d9.jpg?im_w=720', 126);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4294b917-7126-4d46-aa19-c786e3078916.jpg?im_w=720', 126);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b24c67f2-1f3f-44a1-8bf5-18205a26cf26.jpg?im_w=720', 126);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1e4e87a5-a767-4082-b362-378182c1e5a6.jpg?im_w=720', 126);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46566832/original/d131738f-e4db-4b7f-bec3-d13fb91e2285.jpeg?im_w=720',
        126);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46566832/original/1f472105-d7a8-4015-a561-a5afaacab993.jpeg?im_w=720',
        126);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/927f452d-e532-4d91-9667-4e5b08fb8cad.jpg?im_w=720', 126);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2d768e87-c9c3-4693-a275-858468d465d2.jpg?im_w=720', 126);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/746fef34-7bf3-4134-a983-69f8189ddaa6.jpg?im_w=720', 126);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1c534c03-49a3-48fb-bc7a-73e96b589001.jpg?im_w=720', 126);
insert into location(id, latitude, longitude, city_name)
values (127, 33.32, 126.265, '제주');
insert into review (id, star, review)
values (127, 5, 95);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (127, '곶자왈이  아름다운 중산간마을에
아늑하고 예쁜숙소....
- 각 is in 별 (202)', 'Hangyeong-myeon, Jeju-si의 집 전체', 90000, '집 전체', 1, 2, 1, 127, 127, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/d7068928-f6fc-460f-a5d6-a20e3744120a.jpg?im_w=720', 127);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4755fb64-b784-4dc1-bfe2-2e559a2f3923.jpg?im_w=720', 127);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2bea9ec9-83f8-480a-b67b-ecdea771483d.jpg?im_w=720', 127);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fa4055a0-bb0f-4143-a66f-69b3871ec98a.jpg?im_w=720', 127);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/21016846-2207-4c71-8706-a75cdd1bff22.jpg?im_w=720', 127);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/77627de4-ad22-4f88-a3d2-125b0986e77c.jpg?im_w=720', 127);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a4955574-f98d-4043-a3e4-a0bf4650b203.jpg?im_w=720', 127);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/428c7fab-50f9-4f04-a187-09af555c99bf.jpg?im_w=720', 127);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/815b4f78-72f4-4893-b653-4dbe0cd6539c.jpg?im_w=720', 127);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8e053168-e138-45a6-825c-d362d467718c.jpg?im_w=720', 127);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fb501f3d-1871-43f1-9b81-9d2e40ad24d0.jpg?im_w=720', 127);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7e72be9f-b312-440c-988a-56b4ac1da3cd.jpg?im_w=720', 127);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/79b0368d-3b3d-4a5d-abf0-49c27ce4aaad.jpg?im_w=720', 127);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/061c562d-a862-4f7f-a15e-09f135539b3e.jpg?im_w=720', 127);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b4b347b5-bf16-4f65-98d6-c93c1e43149a.jpg?im_w=720', 127);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b695158e-a777-4ddf-9d6c-53d1a31bfa29.jpg?im_w=720', 127);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1b9e69cb-dbac-4087-aa9f-b26bccd23f2d.jpg?im_w=720', 127);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3b243ab4-2551-4f04-99af-59073c61e211.jpg?im_w=720', 127);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/88df0780-7d42-465d-a5af-3df859c55a0f.jpg?im_w=720', 127);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c688cf51-f7c3-491b-9aa8-68785ec6a7ae.jpg?im_w=720', 127);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fbbc0719-eedb-47b7-9225-1f74cc921b3c.jpg?im_w=720', 127);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c910cda7-41fa-4603-8bbe-e0d049d341c7.jpg?im_w=720', 127);
insert into location(id, latitude, longitude, city_name)
values (128, 33.494, 126.901, '제주');
insert into review (id, star, review)
values (128, 5, 38);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (128, '작고 귀여운 마을 종달리, 그리고 온온_밖거리', 'Gujwa-eup, Cheju의 게스트용 별채 전체', 100000, '집 전체', 1, 2, 1, 128, 128, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/f07edc36-dcff-4a1f-ba67-2ced14b52f73.jpg?im_w=720', 128);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/46c20ef4-d05e-49d5-9f88-1a5ad0b50b66.jpg?im_w=720', 128);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/28530752-062c-4c33-af5f-cdf98ddd7bf9.jpg?im_w=720', 128);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/81d82874-8af8-4cd7-9531-d93727adfc1e.jpg?im_w=720', 128);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/516f8b9b-3302-4ff0-baee-d267e9cfbec7.jpg?im_w=720', 128);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e27163c4-5760-47f1-a082-76dec2d04835.jpg?im_w=720', 128);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/054be490-b396-47d8-a149-9d3d1192f747.jpg?im_w=720', 128);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0e653f94-ae84-4ebd-80e1-e235117880ef.jpg?im_w=720', 128);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/be5a78e3-2090-435e-8d78-fe14912a34f3.jpg?im_w=720', 128);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5efdc819-0825-4c29-8fd1-768cf09a9e84.jpg?im_w=720', 128);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c2a85b01-455a-4a5a-892a-0c6694192803.jpg?im_w=720', 128);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e06b535a-a146-45d6-8fb6-8e522a8c011c.jpg?im_w=720', 128);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1b69a30d-1c90-469c-8a2b-54162bef2b4b.jpg?im_w=720', 128);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5eb736da-89f4-4555-a4e5-347c8c89299f.jpg?im_w=720', 128);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/df7ff62f-cc31-4271-8d55-5a20e591e81c.jpg?im_w=720', 128);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e6e3859c-e73c-47b3-9020-eb85944b9f46.jpg?im_w=720', 128);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/48d7b707-3626-4e35-84c0-f361e9f87e84.jpg?im_w=720', 128);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2dc249c0-12eb-4481-b833-0c577b01c950.jpg?im_w=720', 128);
insert into location(id, latitude, longitude, city_name)
values (129, 33.464, 126.336, '제주');
insert into review (id, star, review)
values (129, 5, 80);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (129, 'KANT HAUS_조용하고 아늑한 제주 가옥', 'Aewol-eup, Cheju의 집 전체', 90000, '집 전체', 2, 4, 2, 129, 129, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/72f96326-bffd-4960-aa05-80e4ecf0a59e.jpg?im_w=720', 129);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ea9c27af-3411-43d3-82a0-0facd55c326a.jpg?im_w=720', 129);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/252038e3-ed2e-49a7-b3c2-944299128ca1.jpg?im_w=720', 129);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e0d81a97-4220-44cd-9690-3b8743a6a458.jpg?im_w=720', 129);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9aa9e3f2-1ce0-4694-8e7e-2f7f1ff74193.jpg?im_w=720', 129);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/43a8780f-7833-4c77-95c9-3c9bd6394a89.jpg?im_w=720', 129);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d5ec79bd-621c-4daa-86d9-f66d289cccc0.jpg?im_w=720', 129);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0466fb7d-1537-4acc-bf93-66016f35b8a0.jpg?im_w=720', 129);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e3416350-1233-41d9-a683-d773568676c8.jpg?im_w=720', 129);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4cea6ade-f74f-432e-a17d-908d0b817810.jpg?im_w=720', 129);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/41e7f2dd-d6bf-4d94-9c84-6d2030f95751.jpg?im_w=720', 129);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fdf68860-3d89-4b72-a74f-ddbb0b9082d1.jpg?im_w=720', 129);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6c129b9c-1d88-423e-83de-7e68dea80829.jpg?im_w=720', 129);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1fc8f1c6-f50c-4c50-a303-16fe706205a9.jpg?im_w=720', 129);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/245fcea3-f6b9-43e2-96f8-69cc8c94e865.jpg?im_w=720', 129);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2436086f-7ed7-4347-bfca-dff6f4ae3bc5.jpg?im_w=720', 129);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/03be7089-cfc0-447e-9a72-81429750939b.jpg?im_w=720', 129);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f361e6aa-5964-463b-939d-4af6b2eb8107.jpg?im_w=720', 129);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d89bc911-cae6-49d5-a75e-e67182758d5b.jpg?im_w=720', 129);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3cde5b27-8786-42af-b9b6-657a3732b1c7.jpg?im_w=720', 129);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a8b23743-72a3-4fb5-8442-e1272d6fd6eb.jpg?im_w=720', 129);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/67ba3b87-8c19-4cc3-a7a1-e92a518c5843.jpg?im_w=720', 129);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a5850727-eb2c-4fce-8de8-d32b6c73339f.jpg?im_w=720', 129);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/12396508-9ac2-4e98-a3aa-eb453bc92a36.jpg?im_w=720', 129);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/304ca19d-9155-4e7e-80b4-4c6afe5560a7.jpg?im_w=720', 129);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/326b5849-07df-46df-bde2-ab164878f791.jpg?im_w=720', 129);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/da150d0a-fa89-478a-8d20-c07f12f508fd.jpg?im_w=720', 129);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c9466acc-98b6-45a5-ad6f-b6922a4b741a.jpg?im_w=720', 129);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/40ec66ad-cd70-4c74-8c43-21cefeeab056.jpg?im_w=720', 129);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/54ca09be-062a-49e2-8ef0-61eeca497c26.jpg?im_w=720', 129);
insert into location(id, latitude, longitude, city_name)
values (130, 33.372, 126.843, '제주');
insert into review (id, star, review)
values (130, 5, 146);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (130, '제주성산 동쪽 귤밭뷰 프라이빗
복층감성숙소A동(취사불가)   <제주헤이109  >', 'Seongsan-eup, Seogwipo의 집 전체', 100000, '집 전체', 1, 2, 1, 130, 130, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/38a3e1b5-91e5-43e7-a393-1bc5815cbdfc.jpg?im_w=720', 130);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d74da327-b155-45a4-abd4-7002816cb2ee.jpg?im_w=720', 130);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8a19412a-b328-4155-833c-d122bac049bf.jpg?im_w=720', 130);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d30a67d9-4f14-45f8-96b9-f56bc5ed9a48.jpg?im_w=720', 130);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/12a91446-3309-4217-afdd-5d7fa8ec4327.jpg?im_w=720', 130);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d9e034a5-8a9b-49c9-b8b0-85de05d55a50.jpg?im_w=720', 130);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bd32931e-69d9-4387-a153-693507c667e8.jpg?im_w=720', 130);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3f9188b1-c862-4cbb-9981-855cbc2ffe95.jpg?im_w=720', 130);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d93fb44e-9524-4b12-ab34-7995478d0552.jpg?im_w=720', 130);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6a5972b0-8f98-4a80-94c9-a14229578153.jpg?im_w=720', 130);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/89152792-8ba9-45df-904c-f62add7287a7.jpg?im_w=720', 130);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b030f1c3-018b-4637-8b14-fd251102bfe7.jpg?im_w=720', 130);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/aba2942b-8b7c-4bd4-9324-f7d3994f8d40.jpg?im_w=720', 130);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/03d3004b-5786-4666-b838-70cdc2dce074.jpg?im_w=720', 130);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/75483c0f-8405-47ad-aa10-cef4a45a1f3c.jpg?im_w=720', 130);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f95a7481-bc03-4a62-b64e-1320cb23de8d.jpg?im_w=720', 130);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5beac061-733e-4721-a6f7-540739d0d982.jpg?im_w=720', 130);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/65c2e609-9ac7-44ab-8872-32ee3e8c498b.jpg?im_w=720', 130);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/82606a62-6c5a-41b7-af11-b2f0be552494.jpg?im_w=720', 130);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dc6b4b2a-fb36-42f1-8876-f9ebf3af35b3.jpg?im_w=720', 130);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/071da32c-a4d1-41fb-bccd-d9d9e91a04ba.jpg?im_w=720', 130);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d05e347b-3104-4ec2-b704-1564004ca9f0.jpg?im_w=720', 130);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4e0d3041-96f6-42d6-9a12-00a1a8e8ddcd.jpg?im_w=720', 130);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0e6b0078-c9a5-4f4c-9456-7fcdb2effcfb.jpg?im_w=720', 130);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/63ecd2f2-dd89-4f30-9667-a6a1c349bfdd.jpg?im_w=720', 130);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e48b67d2-92d4-4dfe-a46d-5548fcc53a57.jpg?im_w=720', 130);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6b02acf7-8be4-4087-bf84-acebcda7b866.jpg?im_w=720', 130);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3aeeff85-5674-4a36-a655-8144d3fe05c7.jpg?im_w=720', 130);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c78508ce-d742-4517-93ad-1b8a1413c456.jpg?im_w=720', 130);
insert into location(id, latitude, longitude, city_name)
values (131, 33.451, 126.348, '제주');
insert into review (id, star, review)
values (131, 5, 143);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (131, '"더럭"   돌담,  아담,   제주 독채...', 'Aewol-eup, Cheju의 집 전체', 95000, '집 전체', 2, 3, 1, 131, 131, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/e1295260-5ce4-496b-84f2-a90ae2612811.jpg?im_w=720', 131);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7436dc02-1515-44e8-80d4-64ab18d657c3.jpg?im_w=720', 131);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e0085908-7090-41c6-80d5-9337740b8126.jpg?im_w=720', 131);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/47f57809-8ce1-47f6-800c-6a7ec5a75eaa.jpg?im_w=720', 131);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/83a03dac-eda7-482a-a218-086f7a1270c6.jpg?im_w=720', 131);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/aa2d314e-24b0-47ee-b461-c0e0ced61979.jpg?im_w=720', 131);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/318212b5-8b04-44aa-9dd3-16cf47943e86.jpg?im_w=720', 131);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/19446800-7291-40c7-a7f3-fd5e550d8686.jpg?im_w=720', 131);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c2ee1493-5873-4a41-a58c-0c5863a9e8fe.jpg?im_w=720', 131);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f5849f53-ae4d-441e-bd36-12e640446f2b.jpg?im_w=720', 131);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3b555bed-553c-4c39-bbce-a7e800d7daad.jpg?im_w=720', 131);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a00bfdc6-272c-43c7-b03b-59beedafd64a.jpg?im_w=720', 131);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5308b1f8-6271-4e9a-8352-74f40d5bb3ae.jpg?im_w=720', 131);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ffd9eb85-a8ae-4221-a917-a01c17d98eff.jpg?im_w=720', 131);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/018f0031-c1c8-4138-9096-033065fbc289.jpg?im_w=720', 131);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3f29bd18-4e23-4b15-8d37-f0aec6547fe9.jpg?im_w=720', 131);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a27c45a3-aa2a-4810-a04e-da96ee23d508.jpg?im_w=720', 131);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0d1ae83c-8fac-4bb5-b848-3e711398e10f.jpg?im_w=720', 131);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8e27b43f-e21a-497b-a1b0-da4496e90b1b.jpg?im_w=720', 131);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cb1b537f-1737-49d9-92af-e53f7b8416c6.jpg?im_w=720', 131);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ecb282f1-f3c8-471e-ad71-1887197d347b.jpg?im_w=720', 131);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6a968a6a-b1b8-4900-8da1-0e5bb6a47963.jpg?im_w=720', 131);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/50079d0d-c7dd-4289-ac9e-718d01916765.jpg?im_w=720', 131);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c351865a-fa2f-4dd1-bcb8-e73e67aa53c7.jpg?im_w=720', 131);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/27859992-7975-4389-81f9-11129bf1ec25.jpg?im_w=720', 131);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3ac485d9-ff79-4b6c-80ff-e30e108d9ccb.jpg?im_w=720', 131);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c0429c4e-de26-4569-8fc2-be5c061aa432.jpg?im_w=720', 131);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/84225fe0-b899-41b3-9e4b-03b79ef50ae6.jpg?im_w=720', 131);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2db3fb2e-658e-42f7-a8df-1b7cf2931417.jpg?im_w=720', 131);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/91edb313-9ab6-455c-995f-026b2b65124a.jpg?im_w=720', 131);
insert into location(id, latitude, longitude, city_name)
values (132, 33.481, 126.377, '제주');
insert into review (id, star, review)
values (132, 5, 61);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (132, '애월 해안도로 아주 가까이에(열 걸음~) 있는 4인 독채룸, 소박한 조식 제공', 'Aewol-eup, Cheju의 게스트용 별채 전체', 100000, '집 전체', 2, 4, 1,
        132, 132, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/e4e7bc4e-b51b-4ebf-8e28-f1d2423f4734.jpg?im_w=720', 132);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6611402e-54a2-4eab-908f-bea5972a6389.jpg?im_w=720', 132);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e62c3cfc-d567-4a81-9761-c585bcb70535.jpg?im_w=720', 132);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c87aba1c-2e2b-4e78-9e53-8dafa322650d.jpg?im_w=720', 132);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2b0ceac3-65c9-4c7e-a0b5-80233ccea618.jpg?im_w=720', 132);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a20bf159-b4b2-488e-8d69-f8eec73301ca.jpg?im_w=720', 132);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c2c2a12a-12b1-4af1-bc1a-ea7af80e551b.jpg?im_w=720', 132);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/75b76c9f-56c2-4207-a47a-f35c8f305778.jpg?im_w=720', 132);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/eb8ff092-7efb-46be-ad18-f95c2fd0e0ce.jpg?im_w=720', 132);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/623da3b6-6b7d-4536-9535-e4d9275c385f.jpg?im_w=720', 132);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/80ea3dd6-aa79-4af6-8f24-0b7d8e5afcc9.jpg?im_w=720', 132);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d696ae5d-515c-4840-9fcd-f9fcf36ab6aa.jpg?im_w=720', 132);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/388a756c-68f6-4c9d-82ca-ba4d4ef40791.jpg?im_w=720', 132);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/98aa40e4-29b7-4fb8-9aa0-1eea32d0266d.jpg?im_w=720', 132);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/38c56c99-6ce6-4668-bd50-0c5fce8a346e.jpg?im_w=720', 132);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cb1d1e74-88a8-40ab-926e-172025a49263.jpg?im_w=720', 132);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c41f853e-d99d-47c9-aab0-d56abf539f77.jpg?im_w=720', 132);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e2fefc45-ab64-48e3-b6b7-39cf11a7168e.jpg?im_w=720', 132);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4a214021-39c3-4eec-9c35-8d4b375284bf.jpg?im_w=720', 132);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/272a9641-0a10-4bbd-8ff9-5c992466a5f9.jpg?im_w=720', 132);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a3474ead-2d6f-48dc-9ce9-920cfb7dd853.jpg?im_w=720', 132);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3f7bda7f-ac23-4577-b654-878d6355119d.jpg?im_w=720', 132);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b9e9a5cd-e325-428f-b345-a3116e432cd6.jpg?im_w=720', 132);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d19cab6e-96b2-4013-a86f-c3868369bcc0.jpg?im_w=720', 132);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/47bea540-574d-479b-958b-983dad48af7b.jpg?im_w=720', 132);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ce8a5afd-8070-43c7-9ed3-82890a0180b7.jpg?im_w=720', 132);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5c88562a-db43-4a15-86e6-10514592cf1d.jpg?im_w=720', 132);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/61888871-530e-469f-8405-8352db125275.jpg?im_w=720', 132);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7a6d7304-8e25-4cef-b582-a9b9bfef5338.jpg?im_w=720', 132);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2e121993-16af-43fa-9454-5e3dde9b519d.jpg?im_w=720', 132);
insert into location(id, latitude, longitude, city_name)
values (133, 33.236, 126.364, '제주');
insert into review (id, star, review)
values (133, 5, 145);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (133, '" 제주감성숙소" 미니메리 [미니메리룸:] 연박불가룸', '서귀포시의 개인실', 100000, '개인실', 1, 2, 1, 133, 133, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/24c13157-5820-4ac5-89de-c61ff56d0b7d.jpg?im_w=720', 133);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f21352bf-128d-4577-9298-51db1e7bb8f7.jpg?im_w=720', 133);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9f477c44-0fe8-4a86-a368-9884e20db07c.jpg?im_w=720', 133);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0976af5e-be2b-494e-ad79-d0c41c9fb548.jpg?im_w=720', 133);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/16d5ab73-f10d-46b8-8560-34f8ca896b2f.jpg?im_w=720', 133);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8d9ef1a0-b8a3-4dbb-a4c1-405707c503aa.jpg?im_w=720', 133);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/220e7a68-7cb1-4a9a-872c-fd4467e8b304.jpg?im_w=720', 133);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5900e2e0-ad02-446d-ac71-1d3c320cc354.jpg?im_w=720', 133);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/64c80957-ae15-40ed-b80f-c236b5fa0a82.jpg?im_w=720', 133);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cd5e4345-8a0f-4ef9-8cbf-80b255368b00.jpg?im_w=720', 133);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3e72cce0-c68d-4546-9ad7-d7f823fcd581.jpg?im_w=720', 133);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4d97415d-3337-45cc-8c1d-9671b607536b.jpg?im_w=720', 133);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f16dab64-f616-4d88-8b6f-956e7794135b.jpg?im_w=720', 133);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4e6c8c53-531e-42c9-bb19-b790c955158f.jpg?im_w=720', 133);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5e595e76-00fd-485f-91ac-b949cb7c5c4c.jpg?im_w=720', 133);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a0343f4b-5e3c-4ed0-ada8-aa10fca4066e.jpg?im_w=720', 133);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/10670792-c3c0-4af9-8e10-a4a1cb8e5f4e.jpg?im_w=720', 133);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/89f72215-2656-4f30-808c-5a5884b67a88.jpg?im_w=720', 133);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/be13f14b-a361-4c15-af4a-48f9a5df2c76.jpg?im_w=720', 133);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0843b8a8-dd2a-41db-a41b-23b6a3034684.jpg?im_w=720', 133);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/331f4246-47f9-40b4-94bb-0c06c3775f3a.jpg?im_w=720', 133);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d20b8dbb-d2d2-44be-968c-2ff381bfe1bb.jpg?im_w=720', 133);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/841fc194-c293-4702-9209-22c51d5cf668.jpg?im_w=720', 133);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6425a4da-6328-49ef-a86c-8eddb0cb9d3a.jpg?im_w=720', 133);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7a10633d-d927-4d04-844c-1e8b92644661.jpg?im_w=720', 133);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/aadf7307-2655-4899-aa06-fbfb84ff1dbd.jpg?im_w=720', 133);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a8fbeb58-34bd-4321-9d44-9c53cd499d2f.jpg?im_w=720', 133);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6f8874cb-9b5f-417b-92a4-9a220ec94fc4.jpg?im_w=720', 133);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/23ca984d-f0f6-45dc-aae4-c1b72c0f6b40.jpg?im_w=720', 133);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/558e8ffc-92eb-4533-a919-1fa3b8a8a3df.jpg?im_w=720', 133);
insert into location(id, latitude, longitude, city_name)
values (134, 33.383, 126.261, '제주');
insert into review (id, star, review)
values (134, 5, 69);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (134, '한림 협재 신축독채펜션 "담뜰"', 'Hallim-eub, Jeju-si의 게스트용 별채 전체', 100000, '집 전체', 1, 6, 1, 134, 134, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/65b0c701-32db-4628-bc50-2f273cd885b6.jpg?im_w=720', 134);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/24d059ee-8dce-4a19-8b88-498378c52dfc.jpg?im_w=720', 134);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/694e3ac8-13f6-455f-95e4-a27a16d0f487.jpg?im_w=720', 134);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/52f24afb-aadd-4efa-baee-f0319d1b5e36.jpg?im_w=720', 134);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8012998f-7ebb-4bb8-ab62-775825c5dc22.jpg?im_w=720', 134);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cda175f7-e59e-46bb-8e31-934514117d03.jpg?im_w=720', 134);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/008d081e-5164-4f66-ad02-dd3bca857254.jpg?im_w=720', 134);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e0e70d15-2d65-428d-8b6d-2ef55eb2d0fe.jpg?im_w=720', 134);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/af8644f0-1e16-4417-a498-19e85a05259b.jpg?im_w=720', 134);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8cea0dc7-bf8e-4c57-9c49-d1375d9547c9.jpg?im_w=720', 134);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/21ee40bc-6ea5-43ae-ad47-8ba5749d2804.jpg?im_w=720', 134);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/977187ee-a8c0-4e0f-af45-b473f4aec2ff.jpg?im_w=720', 134);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c61e4a2a-aa10-4792-9e98-6f9fa03e5efb.jpg?im_w=720', 134);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/21975e51-1d16-4757-9579-48d442666dc2.jpg?im_w=720', 134);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e00d7d0b-4638-442c-8607-eaf51c012ec2.jpg?im_w=720', 134);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a2b7668b-942f-4e2a-aee4-fb780e1d3dd9.jpg?im_w=720', 134);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0736b6f3-8e07-4095-a92c-ed65fa939042.jpg?im_w=720', 134);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/35aab883-632d-4c91-aae4-06a24b22b74a.jpg?im_w=720', 134);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c27b29c9-d328-4725-b209-833b2e3f6095.jpg?im_w=720', 134);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4092895e-8ffb-427c-80cf-e2e00821e097.jpg?im_w=720', 134);
insert into location(id, latitude, longitude, city_name)
values (135, 33.559, 126.747, '제주');
insert into review (id, star, review)
values (135, 5, 217);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (135, '신비한 에머랄드빛 제주바다를 앞 마당으로 가지고있는 숙소입니다', 'Gujwa-eup, Jeju-si의 집 전체', 100000, '집 전체', 3, 5, 1, 135, 135, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/9e692519-e35e-4ca8-883a-65838497c541.jpg?im_w=720', 135);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/107411882/20907f9d_original.jpg?im_w=720', 135);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0c42f795-3f80-4273-9804-a5234e577c07.jpg?im_w=720', 135);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bbb1c3d2-c32d-46e5-971f-07c1d39e0da7.jpg?im_w=720', 135);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b67f7241-d8dc-4374-9d04-67548907c1b5.jpg?im_w=720', 135);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/107411808/2b95b556_original.jpg?im_w=720', 135);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/34c9c792-912d-4203-9f1c-ea9808e71ac5.jpg?im_w=720', 135);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/739633ab-bc14-4afc-9720-e4a1301ce57c.jpg?im_w=720', 135);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c19bad2f-f0b6-48ee-8e25-28a3f9d82182.jpg?im_w=720', 135);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/17941b8d-280a-4a7b-a588-4b185ef583d1.jpg?im_w=720', 135);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/789a9d8e-a0b6-4297-a8aa-57741030164f.jpg?im_w=720', 135);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/107411902/211b9d75_original.jpg?im_w=720', 135);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/66850778/181e6662_original.jpg?im_w=720', 135);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/107411861/c28b65cf_original.jpg?im_w=720', 135);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/66237216/084f98a7_original.jpg?im_w=720', 135);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f0e16975-c242-4a56-aa08-cffd9b787597.jpg?im_w=720', 135);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0c4c7fac-3bba-4277-9cd0-e61e4243ff5b.jpg?im_w=720', 135);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/12696b05-6785-4ef2-b8f0-9c61da08ce41.jpg?im_w=720', 135);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1a4ab39c-27c2-4342-b0e9-f7f39d3bdd5e.jpg?im_w=720', 135);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b24fc351-0773-4274-a862-10d37feb97d3.jpg?im_w=720', 135);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/678224b1-f0b2-46cb-98f0-9ca8f16ee6c2.jpg?im_w=720', 135);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/90ac2420-af18-4d72-a41b-307cdf19ad55.jpg?im_w=720', 135);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/66850684/8a5d0307_original.jpg?im_w=720', 135);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7c325b8a-15b7-4892-9609-f1863159a8aa.jpg?im_w=720', 135);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/66850704/47589100_original.jpg?im_w=720', 135);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/66850722/87d4b3cd_original.jpg?im_w=720', 135);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/66850666/d419cae1_original.jpg?im_w=720', 135);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/66850686/906ec511_original.jpg?im_w=720', 135);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/aeed9657-d816-4ff2-a001-09bb6be0457a.jpg?im_w=720', 135);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d0235b7d-4fcb-47bb-a122-e7e98a97cc4b.jpg?im_w=720', 135);
insert into location(id, latitude, longitude, city_name)
values (136, 33.463, 126.375, '제주');
insert into review (id, star, review)
values (136, 5, 97);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (136, 'Patio 애월 (제주 씨크릿 돌집, 오직 한 팀, Private Place)', 'Aewol-eup, Cheju의 전원주택 전체', 100000, '집 전체', 3, 8, 2, 136,
        136, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/8199f4a7-4051-4aba-8f8d-0f1dca59a037.jpg?im_w=720', 136);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-35742233-unapproved/original/ff30cafb-9d0b-4d53-80fd-01bfdebfd90e.JPEG?im_w=720',
        136);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-35742233-unapproved/original/c46badee-2ad1-4eff-963b-eb7904a7c2f2.JPEG?im_w=720',
        136);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-35742233-unapproved/original/ec3c4d32-2afa-4570-9cb8-7bdde855de9b.JPEG?im_w=720',
        136);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-35742233-unapproved/original/fbe78403-b39b-4a44-8c1c-6ede669dda4e.JPEG?im_w=720',
        136);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-35742233-unapproved/original/0b980166-b265-4625-9652-cb4f4ea4e4af.JPEG?im_w=720',
        136);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-35742233-unapproved/original/eeb90737-8805-4a6c-8bef-61ab4b560d21.JPEG?im_w=720',
        136);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-35742233-unapproved/original/d4b1de61-e8ae-47d2-b578-7905b2ce8341.JPEG?im_w=720',
        136);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-35742233-unapproved/original/0f5543d1-ddad-4591-a452-dca1541f2ded.JPEG?im_w=720',
        136);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-35742233-unapproved/original/bb51532e-6f07-454b-b422-4a8262583405.JPEG?im_w=720',
        136);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-35742233-unapproved/original/5f5ba505-940e-498e-84fb-4f10a149b8ba.JPEG?im_w=720',
        136);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-35742233-unapproved/original/4998ce6c-e8ea-4d76-9b91-17867127cb8a.JPEG?im_w=720',
        136);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-35742233-unapproved/original/46a6a013-66f0-4941-954c-4cea49a851c2.JPEG?im_w=720',
        136);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-35742233-unapproved/original/d55d7c80-6e8d-4733-800a-d5b3e392ec58.JPEG?im_w=720',
        136);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-35742233-unapproved/original/6405cb73-5933-45bc-82a8-83d7c320b7ed.JPEG?im_w=720',
        136);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-35742233-unapproved/original/b0f5b3e7-cfe4-4dd6-b8fa-f60a44556edc.JPEG?im_w=720',
        136);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-35742233-unapproved/original/767ae506-cb17-4b71-91df-ca03830cf455.JPEG?im_w=720',
        136);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-35742233-unapproved/original/39cc553f-879c-4713-956f-48ba2ec91286.JPEG?im_w=720',
        136);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-35742233-unapproved/original/4aa744d0-dd72-4a1f-9720-59578655834c.JPEG?im_w=720',
        136);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-35742233-unapproved/original/e85267cc-61d1-4c38-b399-b4b95c120cff.JPEG?im_w=720',
        136);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-35742233-unapproved/original/f25f2c11-e42b-48f5-876d-2a6e2edd2c33.JPEG?im_w=720',
        136);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-35742233-unapproved/original/059af79f-2c28-45ea-8ee1-4228950d7267.JPEG?im_w=720',
        136);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-35742233-unapproved/original/b1825ac9-c8ba-4c29-8db4-cf098efc045d.JPEG?im_w=720',
        136);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-35742233-unapproved/original/513c5465-1421-4f98-925b-8d66c0d21a25.JPEG?im_w=720',
        136);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-35742233-unapproved/original/d1822d1b-e21d-4e2c-b701-1609478cacd1.JPEG?im_w=720',
        136);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-35742233-unapproved/original/3d6691b8-06f1-426c-a5fb-7881ece1bc72.JPEG?im_w=720',
        136);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-35742233-unapproved/original/06c5ba14-7d26-47cf-aa28-ab044bae4831.JPEG?im_w=720',
        136);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-35742233-unapproved/original/f4ffd6ab-fe45-446e-a162-ab4fde794787.JPEG?im_w=720',
        136);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-35742233-unapproved/original/df14963e-1efa-40d2-afef-42b5b8336db3.JPEG?im_w=720',
        136);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-35742233-unapproved/original/34bd711b-0677-4207-8e08-b1ec160d761e.JPEG?im_w=720',
        136);
insert into location(id, latitude, longitude, city_name)
values (137, 33.391, 126.23, '제주');
insert into review (id, star, review)
values (137, 5, 162);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (137, '시골 그대로 앙작시 프로젝트 [Angjaqsy Project]', 'Hallim-eub, Jeju-si의 집 전체', 100000, '집 전체', 1, 4, 1, 137, 137, 1,
        1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/d50bb35a-a133-4761-9d53-9b3e3fdf3918.jpg?im_w=720', 137);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/455d01b2-3fd3-4973-9bad-2bdea3cdfb17.jpg?im_w=720', 137);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a335a5ed-da15-4e63-9cfc-16398f4ea290.jpg?im_w=720', 137);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fadcff9e-c649-47f5-b3c8-16fbce6ff680.jpg?im_w=720', 137);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/231ad1d7-bc06-4413-bdd2-0e4bbf9070f0.jpg?im_w=720', 137);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/72516a1d-ad0b-49d6-a1fb-ed399ad5f490.jpg?im_w=720', 137);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b6232099-d86a-472e-a06b-c31f9ea56980.jpg?im_w=720', 137);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/406fcd86-3159-4a8b-b976-fb059caf82be.jpg?im_w=720', 137);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/99ead1d3-396d-4730-bd14-e5b968af482c.jpg?im_w=720', 137);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/63b4c613-5a4c-4553-8865-a624fe58e9c7.jpg?im_w=720', 137);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c6cb73b9-e4a2-48bb-b6c1-6719f19eb1b0.jpg?im_w=720', 137);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a0ae857a-5bdd-4c04-8fab-47b0eeb37af7.jpg?im_w=720', 137);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6fa5adf7-0258-49d3-b933-7d7e618b9387.jpg?im_w=720', 137);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/26681c24-5aa2-4bb1-a51b-d30a14b932e8.jpg?im_w=720', 137);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1b3331cd-bdbb-4467-8513-c50999eb4f6e.jpg?im_w=720', 137);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1abf48b4-2d7b-4fcc-b11b-cb869ab381a3.jpg?im_w=720', 137);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6e89b4f2-2705-499d-a640-ddcb63ff8f46.jpg?im_w=720', 137);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/81c8f95f-3a0b-42b9-8222-a43cdbfce87c.jpg?im_w=720', 137);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7eaa1f6b-efc1-4ccd-9380-fed73a90ae08.jpg?im_w=720', 137);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/426f4ba2-20ab-4d91-ac10-32b882ed19ac.jpg?im_w=720', 137);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6f69dfd3-1f0c-4025-aa55-70b5ca88a215.jpg?im_w=720', 137);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7bfc104e-e6df-4812-8c70-68b15d50b953.jpg?im_w=720', 137);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5c673a2a-4a5c-4ac6-80b1-d12eec91e6fb.jpg?im_w=720', 137);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/121aeefb-917a-4f5f-91cd-024af051925b.jpg?im_w=720', 137);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4672a8f4-0b8d-43d5-a33f-18013ae6f466.jpg?im_w=720', 137);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f79f5ebf-e146-4e65-a525-87a9a7e7e27b.jpg?im_w=720', 137);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/08026062-b8dd-47c0-9e35-54a2afd199ae.jpg?im_w=720', 137);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8ce8ea9e-1197-48b6-99bc-989c885a43bf.jpg?im_w=720', 137);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/aa28adc5-8c22-4273-a2fe-eae6a0cdcaf5.jpg?im_w=720', 137);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d5aa7213-711d-4c61-b025-d9bd46bf43f6.jpg?im_w=720', 137);
insert into location(id, latitude, longitude, city_name)
values (138, 33.442, 126.327, '제주');
insert into review (id, star, review)
values (138, 5, 63);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (138, '스테이 고요', 'Aewol-eup, Jeju-si의 게스트용 별채 전체', 100000, '집 전체', 1, 2, 1, 138, 138, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/9f3e70c4-f23f-4cdf-8a3a-edd64bf3d75e.jpg?im_w=720', 138);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46539971/original/93943ae5-f031-47f2-9b51-873a563afc63.jpeg?im_w=720',
        138);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46539971/original/8c9e6b36-d782-414e-8058-0c0dbe89bc0d.jpeg?im_w=720',
        138);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46539971/original/38983d95-9234-480a-98c8-017b372b973b.jpeg?im_w=720',
        138);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46539971/original/00da029e-3845-49e6-a849-c2c103bcc35b.jpeg?im_w=720',
        138);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46539971/original/c11ad70b-9614-4c6c-8487-8775ccb67678.jpeg?im_w=720',
        138);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46539971/original/ca47c3a7-80f9-45ef-a67c-91c9f5c48e42.jpeg?im_w=720',
        138);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46539971/original/53e42e94-52eb-4079-990e-56fd42782e1c.jpeg?im_w=720',
        138);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46539971/original/900f3ea7-4557-47e0-86b9-0d9552e78400.jpeg?im_w=720',
        138);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46539971/original/172332e2-a1ea-4b89-b375-158060fae34f.jpeg?im_w=720',
        138);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46539971/original/f26c3903-7437-4958-a485-776930420e0b.jpeg?im_w=720',
        138);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46539971/original/7065398b-6c7b-44a1-9b41-ba9d4976f36f.jpeg?im_w=720',
        138);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46539971/original/8dcc68f5-10ee-45fc-8e27-f639e87d7a6f.jpeg?im_w=720',
        138);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46539971/original/d4ecbf2f-1ce3-4936-8f94-5adcb6827421.jpeg?im_w=720',
        138);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46539971/original/39610f4a-9efc-4580-b4f8-4f9b3f564100.jpeg?im_w=720',
        138);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46539971/original/bc3119f5-6a93-4b7c-a970-a314a78f05f0.jpeg?im_w=720',
        138);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46539971/original/df044e07-618c-4645-a400-5f9042e4b6d1.jpeg?im_w=720',
        138);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46539971/original/3644b4b2-0792-47e9-9249-548642cb6941.jpeg?im_w=720',
        138);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46539971/original/d0bcd6a8-238e-4e85-b68c-d23b7fe9075b.jpeg?im_w=720',
        138);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46539971/original/c5cd8f63-1d78-4a02-a2ef-3e77d1a9a511.jpeg?im_w=720',
        138);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46539971/original/96bcabf2-b9d9-4aee-8cb4-d50cd9c55696.jpeg?im_w=720',
        138);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7a9a6bf6-4092-44b4-a2c8-cf53c11f71bf.jpg?im_w=720', 138);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/54c8073b-e687-42db-85bc-9d790fb6d286.jpg?im_w=720', 138);
insert into location(id, latitude, longitude, city_name)
values (139, 33.478, 126.374, '제주');
insert into review (id, star, review)
values (139, 5, 121);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (139, '클라우드 애월 ''COZY'' 애월 돌집 잔디마당 독채 욕조 제주에서의 특별한밤~☆', '제주시의 집 전체', 95000, '집 전체', 2, 4, 1, 139, 139, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/f0bc1759-7e81-4267-bf6f-fa33585d56b2.jpg?im_w=720', 139);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c79256ad-343a-464c-8bd4-eddd806d98d5.jpg?im_w=720', 139);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/52e2f257-0b32-4802-af19-fe7d4cbd42fa.jpg?im_w=720', 139);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bd85b215-4014-4cf4-bba8-0817fccf52bf.jpg?im_w=720', 139);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/123929be-e39f-4c81-b6a8-9861bf2988fa.jpg?im_w=720', 139);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8f70ad8d-732b-4cc3-b7d5-3425d9bb29c8.jpg?im_w=720', 139);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8adddd3a-a90e-4be4-b032-1f23aa9771b8.jpg?im_w=720', 139);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b499bea3-6a3c-4268-8806-d6ffb65dfff1.jpg?im_w=720', 139);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a346cef2-3415-4435-a2b5-c6212f167ca9.jpg?im_w=720', 139);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/762954bc-4e51-4222-aadb-57f20c0cf829.jpg?im_w=720', 139);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3c94fc18-f8bc-4f45-a300-2be083165643.jpg?im_w=720', 139);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a9f84806-6824-4840-95ea-3b4ad0829338.jpg?im_w=720', 139);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/78e44885-39a2-461f-8505-2170f5a3d28a.jpg?im_w=720', 139);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/89010711-8d77-4ed4-87e0-9e73dff057c0.jpg?im_w=720', 139);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/01e23657-c48a-451f-82bb-c2deb94085d2.jpg?im_w=720', 139);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7f20ef9f-33bd-49ab-ba80-d7941cae92cc.jpg?im_w=720', 139);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5232162d-2a5f-4e39-873f-ac0e9a3cd0b3.jpg?im_w=720', 139);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8f57b9d5-32bf-4196-ae53-b8f3b20f1f1f.jpg?im_w=720', 139);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e7dbeb93-6e1d-4c45-bce8-4013e7dec327.jpg?im_w=720', 139);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/87d9335a-1d3e-43fb-a9dc-19fb875f8a8b.jpg?im_w=720', 139);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5bf99b57-b8cb-46ba-a61d-c23174d7c33d.jpg?im_w=720', 139);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f4806d1f-1705-4e82-a715-428511e179d2.jpg?im_w=720', 139);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7c70501f-9b6f-4167-9c31-d75dfc081e59.jpg?im_w=720', 139);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/61085cfc-e9e5-4893-a3cf-69479d810eed.jpg?im_w=720', 139);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bb82b5e3-239e-4217-8162-3af8d9062800.jpg?im_w=720', 139);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0d3a9fd5-b428-4087-b80b-b733e06f9813.jpg?im_w=720', 139);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6c029765-76ae-49e9-aecf-c319a1e7f231.jpg?im_w=720', 139);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4711f25b-4e49-4a4f-b3be-6c4cca89d53c.jpg?im_w=720', 139);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a23551f2-b6b3-4e4e-8c8b-f36488e1a0c2.jpg?im_w=720', 139);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b25536fb-84d4-4f87-897e-382f0cbfbd37.jpg?im_w=720', 139);
insert into location(id, latitude, longitude, city_name)
values (140, 33.558, 126.746, '제주');
insert into review (id, star, review)
values (140, 5, 47);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (140, '[독채민박] 제주 바닷마을, 호젓한 둘만의 안식처 - 스테이호재', 'Gujwa-eup, Jeju-si의 전원주택 전체', 100000, '집 전체', 1, 2, 1, 140, 140, 1,
        1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47276876/original/b0d11aa5-26e2-4813-a658-067ce165a350.jpeg?im_w=720',
        140);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47276876/original/ed04c822-5c0a-4678-9566-dd9cb2ce8021.jpeg?im_w=720',
        140);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47276876/original/d54e346f-584a-456b-88d1-d9755f994cd4.jpeg?im_w=720',
        140);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47276876/original/d2ceb5ad-c1f8-44ed-9982-ec7a18bba04d.jpeg?im_w=720',
        140);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47276876/original/ead9bb25-4817-4fde-91d0-0801dc8194a9.jpeg?im_w=720',
        140);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47276876/original/45788a3f-9527-4b88-8048-a2667a250e97.jpeg?im_w=720',
        140);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47276876/original/255b66cf-cf4f-43ea-b5ad-11c3f69686a0.jpeg?im_w=720',
        140);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47276876/original/e68ce28f-f983-4a81-9cd7-1d37f5d0754c.jpeg?im_w=720',
        140);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47276876/original/60ef2ed9-5c0b-461d-bdea-ffa6824ddbba.jpeg?im_w=720',
        140);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47276876/original/11b28dd2-080b-4a5e-a073-8d8bae170124.jpeg?im_w=720',
        140);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47276876/original/ba0acb8d-f670-4e8e-a0ae-bca780fa632d.jpeg?im_w=720',
        140);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47276876/original/0d727112-ee00-474c-babc-5f5939a73c2b.jpeg?im_w=720',
        140);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47276876/original/e17aa5fe-95b3-4279-bbcb-87550c31d8a4.jpeg?im_w=720',
        140);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47276876/original/6840fcbc-d93d-4fbf-8e7d-797db5af61ed.jpeg?im_w=720',
        140);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47276876/original/f251b955-f4e4-4e17-86b5-e668f9a3b241.jpeg?im_w=720',
        140);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47276876/original/293400b7-e709-4595-b1bc-1c7721bb76b5.jpeg?im_w=720',
        140);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47276876/original/8a25185f-1043-4ad0-b63a-5a6025be3e8b.jpeg?im_w=720',
        140);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47276876/original/5b6e47c5-17e2-46bf-b061-6b980d3ec1e2.jpeg?im_w=720',
        140);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47276876/original/d4435563-f323-4c7c-9bba-3fff36e50b7b.jpeg?im_w=720',
        140);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47276876/original/96985a93-7b48-4cbb-b163-ee52ee0a1349.jpeg?im_w=720',
        140);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47276876/original/b3b46beb-ce46-4c95-9cd6-83395cafc8db.jpeg?im_w=720',
        140);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47276876/original/5ad174ec-e990-474c-9a34-77a4bf8cf19b.jpeg?im_w=720',
        140);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47276876/original/22382100-e874-40dd-8b97-5956c32744d1.jpeg?im_w=720',
        140);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47276876/original/6e754869-79b2-4827-899c-7c79df38e45e.jpeg?im_w=720',
        140);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47276876/original/6071934b-a15a-4ca9-8f4b-9108dde5acd5.jpeg?im_w=720',
        140);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47276876/original/6782875a-c226-4b9f-827d-4254fd047605.jpeg?im_w=720',
        140);
insert into location(id, latitude, longitude, city_name)
values (141, 33.533, 126.841, '제주');
insert into review (id, star, review)
values (141, 5, 94);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (141, '평대리愛[제주나봄]커플독채 -나동 2인정원..평대해수욕장 걸어서 2분거리', 'Gujwa-eup, Cheju의 게스트용 별채 전체', 90000, '집 전체', 1, 2, 1, 141,
        141, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/c7833c10-70f8-42c7-a2e0-38ddfd6e8ec1.jpg?im_w=720', 141);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e60ef0f0-40f2-47ca-aef2-e6a04b72ffc9.jpg?im_w=720', 141);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f13e6769-785b-4d83-810f-844613a3de88.jpg?im_w=720', 141);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8258892c-3a5b-456f-b267-264ffa1096d7.jpg?im_w=720', 141);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b6c5458b-089b-400d-95d1-3f544b8afe86.jpg?im_w=720', 141);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1fa338cb-af3e-4628-96ac-a8a109b0e75d.jpg?im_w=720', 141);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ab163958-6853-4cc8-93ad-802d56e7a28a.jpg?im_w=720', 141);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4ba825c6-0b36-4fc0-a900-35a57ee7cdca.jpg?im_w=720', 141);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6c6acd71-39f7-48c8-b502-20b42c79a64a.jpg?im_w=720', 141);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a5dbea20-12d2-4c36-a996-11536679b1c0.jpg?im_w=720', 141);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cd050da7-7316-4779-bded-017a5428e6c9.jpg?im_w=720', 141);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5262a379-572d-4b53-8b7d-ac28018dd0df.jpg?im_w=720', 141);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5a7149a9-111b-4f01-b395-dbe703cbeefc.jpg?im_w=720', 141);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/efef105a-a7a6-4ee6-b37c-e76a53e70327.jpg?im_w=720', 141);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a91b3d75-77e1-46e1-81f4-1ddadeb5accf.jpg?im_w=720', 141);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b0fd7f36-9dd7-40c4-a996-483e5b39e977.jpg?im_w=720', 141);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a83fdb46-efe8-4b86-ad4e-baa494a5bbd2.jpg?im_w=720', 141);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b218508c-9532-456f-b159-cfa178f4fee2.jpg?im_w=720', 141);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/13ef6b64-77a7-4b82-95aa-ae11b6c75fd7.jpg?im_w=720', 141);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/69571b9c-5446-4579-9e03-971c66bb8478.jpg?im_w=720', 141);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d4ec160a-1869-45b7-ad44-3a163ea55629.jpg?im_w=720', 141);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0e66b1b6-456e-4cc4-968a-5f0416917c78.jpg?im_w=720', 141);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/86a5a132-d9e0-4bff-9cb1-d10be3d980ed.jpg?im_w=720', 141);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7d9974b9-b7f6-49cd-b016-3c55ddd674c9.jpg?im_w=720', 141);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/feaccdf0-98ce-42c1-8b90-da85123d3ba0.jpg?im_w=720', 141);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/778ec63e-9dcb-45f9-ba7e-2da580e869cd.jpg?im_w=720', 141);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8b7bc11e-4e73-4a7a-9835-2952c8017e62.jpg?im_w=720', 141);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5885107a-8f01-4f1f-bf37-3a2f95cd4c43.jpg?im_w=720', 141);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e6835657-fe38-48af-8c66-b347ff0fe3d7.jpg?im_w=720', 141);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d4564316-56fd-4f70-a8dd-92aef2e8342b.jpg?im_w=720', 141);
insert into location(id, latitude, longitude, city_name)
values (142, 33.392, 126.242, '제주');
insert into review (id, star, review)
values (142, 5, 40);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (142, '협재&금능 해변이 걸어서 3분, 집전체 독채 ,정성을다한 숙소', 'Hallim-eub, Cheju의 게스트용 별채 전체', 95000, '집 전체', 4, 8, 1, 142, 142, 1,
        1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47108908/original/e556c351-19c6-4cbc-ac2f-2569a43d3c74.jpeg?im_w=720',
        142);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47108908/original/6fc2360a-a0a3-468a-b1dd-6f91b742e99d.jpeg?im_w=720',
        142);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3304374a-923a-4ad0-85db-b6c1a45c6f8b.jpg?im_w=720', 142);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d75d4a5c-002a-4b64-a4e1-a06386e2be55.jpg?im_w=720', 142);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/21ffc814-0f25-49d7-be06-3f7e4b9a2197.jpg?im_w=720', 142);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47108908/original/9e2159dd-cb4a-4927-b4b6-7f1a260b43bf.jpeg?im_w=720',
        142);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47108908/original/500b16d3-da0a-4fb7-885e-140c21a1543a.jpeg?im_w=720',
        142);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47108908/original/81adc960-4503-4b11-930f-fbd0f0016398.jpeg?im_w=720',
        142);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47108908/original/b915c552-48c3-4160-8eec-9ab093da700d.jpeg?im_w=720',
        142);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47108908/original/d9e3d36f-2ded-4569-8b82-a500055ee93f.jpeg?im_w=720',
        142);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9fd8b8ba-4e82-4570-8a9a-92d6d71ab4a7.jpg?im_w=720', 142);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47108908/original/3bb352cf-8fd4-4a05-8757-d67825d43bef.jpeg?im_w=720',
        142);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47108908/original/e5092e03-2ed7-495d-924c-fcd094737e61.jpeg?im_w=720',
        142);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47108908/original/9ae0fd1f-5d70-486b-889e-2f845af4a69b.jpeg?im_w=720',
        142);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47108908/original/ba3730b5-8a0e-474f-bad4-dd410f4f37b5.jpeg?im_w=720',
        142);
insert into location(id, latitude, longitude, city_name)
values (143, 33.531, 126.822, '제주');
insert into review (id, star, review)
values (143, 5, 35);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (143, '°제주첫날-두근동° #프라이빗#돌담정원#따듯한 햇살가득 #제주첫날 한동리', 'Gujwa-eup, Cheju의 집 전체', 92000, '집 전체', 1, 4, 2, 143, 143, 1,
        1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/9be536c1-3412-426d-b8da-a25a32ce1ab7.jpg?im_w=720', 143);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c23f0b89-7f61-4456-b562-5079efff3a30.jpg?im_w=720', 143);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f014d90f-c79c-422c-bcdb-41801eff6ba0.jpg?im_w=720', 143);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7d850f8d-7579-423e-8ccc-6ce03d7cc383.jpg?im_w=720', 143);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b91452e2-527d-46c1-9ea6-a16968139ce2.jpg?im_w=720', 143);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a317362d-d6eb-49fb-8eae-6cf16777e388.jpg?im_w=720', 143);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fa3c0afd-b636-4226-a1de-2384bfc3f8dc.jpg?im_w=720', 143);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6a83962e-a56a-43db-b892-2ed688afce7d.jpg?im_w=720', 143);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8db5bd9a-9afd-409c-bc02-d4467242942b.jpg?im_w=720', 143);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5ffd639d-2380-40b0-be99-f5574ebf59c8.jpg?im_w=720', 143);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fc6d1d4d-7f22-480f-9b2e-1b4fd74f3a17.jpg?im_w=720', 143);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/001b5c90-003c-4451-bc49-8fb11a448ab6.jpg?im_w=720', 143);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e4e6e1e7-192a-4866-bdb4-d4ef06cd6fad.jpg?im_w=720', 143);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9235e9fc-6314-4839-b0c1-9aaeb7c7600a.jpg?im_w=720', 143);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4830f460-18b8-4de7-ab43-bd55f40b0b8f.jpg?im_w=720', 143);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9e0401b9-b2b4-41ff-8a06-b17f043c3590.jpg?im_w=720', 143);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/37fc3e80-9835-4905-9bb4-90298b29ab40.jpg?im_w=720', 143);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/129587a4-ad5c-4ec7-82d8-30f1fdae2770.jpg?im_w=720', 143);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/caabac13-079a-4773-8213-0db0ae39a126.jpg?im_w=720', 143);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/17b6deb2-9cd6-4f84-947b-13a2e9b506cb.jpg?im_w=720', 143);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/53a29327-45de-41fb-bb25-8bad7a72bc1e.jpg?im_w=720', 143);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bc5fb10a-2ec4-46c9-b41d-34e91e021b6f.jpg?im_w=720', 143);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1dd52f16-a146-4866-98c4-1d21d5035e40.jpg?im_w=720', 143);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1ea0b2d5-7119-47ce-81fc-9dd37c21574f.jpg?im_w=720', 143);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6494b9e0-41be-4708-8028-7e05139f3d50.jpg?im_w=720', 143);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2026722b-6704-4c6d-93a8-3a222802e301.jpg?im_w=720', 143);
insert into location(id, latitude, longitude, city_name)
values (144, 33.537, 126.819, '제주');
insert into review (id, star, review)
values (144, 5, 91);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (144, '프라이빗 독채펜션 샬레 - 제주의 푸른 바다 근처', 'Gujwa-eup, Jeju-si의 전원주택 전체', 100000, '집 전체', 1, 2, 1, 144, 144, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/a2fb63ae-254f-4b6c-a8ce-f8b1b0443c2f.jpg?im_w=720', 144);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9e2b0f18-d235-4c44-b1f8-6bca0d0182b2.jpg?im_w=720', 144);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/82d16900-f658-415d-b387-f122470aec21.jpg?im_w=720', 144);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dc85dd00-b588-4a9a-8d2c-f3d51cfc3770.jpg?im_w=720', 144);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/34f63336-0537-4f1f-b88d-2def8a1cf6b6.jpg?im_w=720', 144);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9f7d8656-54ce-44da-bdaf-00c9cb76c222.jpg?im_w=720', 144);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2760b55c-56b0-4b62-91d3-ef103307ac8f.jpg?im_w=720', 144);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ae3f7694-e599-4960-931f-d475a71288f0.jpg?im_w=720', 144);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7f9c188c-b0f2-4b8b-9349-effd3015d1cf.jpg?im_w=720', 144);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/74b45081-4a64-40dc-97f4-e2f9bad79b00.jpg?im_w=720', 144);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/65353425-0b05-4c2e-966b-356859a4c0c1.jpg?im_w=720', 144);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ce31db8c-3a0b-4a6a-81b7-296e3337688f.jpg?im_w=720', 144);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ae17bf33-63b1-40d8-839f-dce57feaa0f1.jpg?im_w=720', 144);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/620d523e-8b8d-4de5-9723-28960ec0bfd0.jpg?im_w=720', 144);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/948d3e72-8b88-4692-8369-ac606fdc781c.jpg?im_w=720', 144);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b8b0ae8a-4fc4-4339-86f3-c641f45b9a23.jpg?im_w=720', 144);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7fff8da4-03fe-4348-b8ed-45b60d285b0b.jpg?im_w=720', 144);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2ade602b-c330-4242-9c14-79a51da095f9.jpg?im_w=720', 144);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/62d11023-b6f4-4511-8492-02dc6ea86dee.jpg?im_w=720', 144);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/418e3ccb-8f4e-4eb9-935a-30d17acf6e0d.jpg?im_w=720', 144);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/71b81f17-78ba-4e97-99e3-e32e31182a76.jpg?im_w=720', 144);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3e706406-fed4-473c-a933-32fff0fcf06d.jpg?im_w=720', 144);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5be992f2-0052-48b7-9fda-1f0dbfadae84.jpg?im_w=720', 144);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d7afdc3b-e9d4-4789-9ee6-44ab3acb33aa.jpg?im_w=720', 144);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/382fb0cf-6a77-41fb-8a3e-912bb138ffe2.jpg?im_w=720', 144);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/395f4510-bd50-498c-bbf1-1b6b36968fab.jpg?im_w=720', 144);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c3ecfd93-b8f4-4a2b-8052-26bd8abd896a.jpg?im_w=720', 144);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/44688787-db57-4577-894f-94db72b2ba94.jpg?im_w=720', 144);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d500cb58-6aa8-4294-8383-eb2f1cfcae11.jpg?im_w=720', 144);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/89b02d27-b46c-4156-b107-1cea83b91358.jpg?im_w=720', 144);
insert into location(id, latitude, longitude, city_name)
values (145, 33.403, 126.254, '제주');
insert into review (id, star, review)
values (145, 4.5, 115);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (145, '제주 돌담길  따라서 "산도롱2 "', 'Hallim-eub, Cheju의 집 전체', 90000, '집 전체', 1, 4, 1, 145, 145, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/071f52e3-797d-4ef6-b41c-4d87863f1e1c.jpg?im_w=720', 145);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/923d0751-557e-42c8-9467-f94042a95add.jpg?im_w=720', 145);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3710c943-8155-4598-b14b-f92a8c83d842.jpg?im_w=720', 145);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e2f9a068-0f3c-43fc-babe-8d61db289004.jpg?im_w=720', 145);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d77200e2-792b-4860-aeaf-ded6631540cb.jpg?im_w=720', 145);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/56402826-1f46-4c4e-b000-4c0b1d3d2552.jpg?im_w=720', 145);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1733cd34-980f-45b5-be93-c7b8e872a582.jpg?im_w=720', 145);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4d3dc504-bd99-492f-b5f8-18fe1fcd3988.jpg?im_w=720', 145);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/728a8904-bc25-469c-9b9e-190962255fdf.jpg?im_w=720', 145);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/38ae7bc2-5d23-4b92-a700-aa0b1ea7a0dd.jpg?im_w=720', 145);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d56f754e-9dd8-4ce5-badd-b1b5afed2df2.jpg?im_w=720', 145);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c1e9fc95-0f65-4095-8673-d4c2cbf2fb14.jpg?im_w=720', 145);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b6f8b4fe-ec55-4142-a286-606a6e5ae1fd.jpg?im_w=720', 145);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/678b1034-bf97-4baa-a915-17d5caca0a07.jpg?im_w=720', 145);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/23c70887-782d-4eb2-99a6-0b264d81a4c4.jpg?im_w=720', 145);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ec66d4a3-2fb0-402b-864b-a6f4fe03c211.jpg?im_w=720', 145);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7fbd0882-8bad-4f8c-8357-ab4613ba44cc.jpg?im_w=720', 145);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/92c9e173-f442-401c-9618-1d2d1f815f9a.jpg?im_w=720', 145);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f7844203-8f4f-4f5c-9a66-022d64b1041a.jpg?im_w=720', 145);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/60a4c720-f29e-4ebd-b718-9011895a7852.jpg?im_w=720', 145);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/454173c2-9878-41d2-910b-8945c736b057.jpg?im_w=720', 145);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/280fbf18-d37e-4160-a406-55b0f1ed08af.jpg?im_w=720', 145);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/92daf634-6f8a-4374-89e7-f64341a4338a.jpg?im_w=720', 145);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/aca99756-114c-4534-a63f-18bddbe52625.jpg?im_w=720', 145);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d6a3992a-99d1-4835-af5c-b15800db738f.jpg?im_w=720', 145);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c27a5e2c-3911-46c2-aafa-a54250fff045.jpg?im_w=720', 145);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b2034bc5-e7b7-452c-98b1-86add4c15ee3.jpg?im_w=720', 145);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bda43a9c-75e3-4cd8-9321-77af72b86c4b.jpg?im_w=720', 145);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a1a8924a-e7cd-46e1-9bd1-0a2ae0ae706d.jpg?im_w=720', 145);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/813100ad-9f18-4b88-8820-87051c713b39.jpg?im_w=720', 145);
insert into location(id, latitude, longitude, city_name)
values (146, 33.554, 126.797, '제주');
insert into review (id, star, review)
values (146, 5, 109);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (146, '신축 제주 월정리해변  독채민박 문스톤 2인독채 엘로우', '제주시의 게스트용 별채 전체', 100000, '집 전체', 2, 2, 1, 146, 146, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/e02df5c7-9291-483c-9b36-3a0dea4b9815.jpg?im_w=720', 146);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e7395d15-030b-459c-b1d0-5b91915fc7ed.jpg?im_w=720', 146);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2bdbfe54-ce72-420b-8e13-b1429250c754.jpg?im_w=720', 146);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/23cdd329-283f-44a1-9215-d3e24864d033.jpg?im_w=720', 146);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8ef34bb3-c041-42a8-bc90-331e63aec2ae.jpg?im_w=720', 146);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/50d2a680-426e-4cb2-8067-e23c7ad41dc8.jpg?im_w=720', 146);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c4a1dd1a-6224-4851-8d1a-c980be2800dd.jpg?im_w=720', 146);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/846811a9-9e2c-428f-a51c-b8def5964ed1.jpg?im_w=720', 146);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b91888b9-ad72-4292-9283-ace452640a97.jpg?im_w=720', 146);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/85a01814-abc8-44bd-924f-a6e2dc9eabb7.jpg?im_w=720', 146);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/08ffa1ab-81b9-4f19-90ef-29e036ecc9a9.jpg?im_w=720', 146);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4d5a75fa-7dee-47a3-a9e7-2861d4afb3c8.jpg?im_w=720', 146);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7013c3c6-fb6c-471f-a63b-ecbfbd3c1620.jpg?im_w=720', 146);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/311c8d00-c07e-49fb-afd0-22072a03b5d0.jpg?im_w=720', 146);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/341e4bfb-d067-4b79-abd7-7ccc050c0488.jpg?im_w=720', 146);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/67d2b203-7d72-4801-9ade-946ca017bb73.jpg?im_w=720', 146);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/37657442-9bf2-4c93-b32a-302c857f4ef4.jpg?im_w=720', 146);
insert into location(id, latitude, longitude, city_name)
values (147, 33.548, 126.657, '제주');
insert into review (id, star, review)
values (147, 4.5, 432);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (147, '2인실룸 인피니티리조트 스쿠버다이빙 프리다이빙 서핑 스노쿨링 전객실 오션뷰', 'Jochon-eup의 펜션', 100000, '집 전체', 1, 2, 1, 147, 147, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44323406/original/7d63b55e-2f78-48e7-a7ad-a2029031a2af.jpeg?im_w=720',
        147);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/532a3ba3-d1c3-44b5-a7ad-c97113da2cfe.jpg?im_w=720', 147);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/76305923-d1bf-4f63-ba92-18b2e41353e4.jpg?im_w=720', 147);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/68489c62-e0a0-46e4-bc57-4e4da455f897.jpg?im_w=720', 147);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0e239b48-5e86-41b8-b6ab-a8b0e60dc6f1.jpg?im_w=720', 147);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44323406/original/1036489c-093a-4f4c-8f33-4c07e35dfd2a.jpeg?im_w=720',
        147);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/626ba99c-dd01-44f3-ba65-b6db221fdb4d.jpg?im_w=720', 147);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/825eb084-9c2d-41f8-b988-ac3c4338a7a9.jpg?im_w=720', 147);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dec6ac1a-0004-4cce-95d6-b25deeedb738.jpg?im_w=720', 147);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5bca7030-2d44-40ec-97e6-5394cbd67390.jpg?im_w=720', 147);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5c2eecad-3107-48b1-8789-05989e4f5e91.jpg?im_w=720', 147);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/70f5c942-1566-49ae-9d3f-a237e0ec77da.jpg?im_w=720', 147);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ca2e352e-b87c-4412-8c20-dcc1456a9063.jpg?im_w=720', 147);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0ac04f97-0647-49a9-872b-10dfc152ce54.jpg?im_w=720', 147);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44323406/original/5fa70329-36e3-497f-aa8f-dfd6002dc0c1.jpeg?im_w=720',
        147);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/11ce92db-95bf-4fdf-be02-19d9e44acd7d.jpg?im_w=720', 147);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e858e777-6210-4df0-936f-cef2667e76f7.jpg?im_w=720', 147);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0abe5de2-80b3-4c85-8307-c20e37aba40e.jpg?im_w=720', 147);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/eedbf43f-2fb5-49f9-9c05-27bbc165a18b.jpg?im_w=720', 147);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44323406/original/c780ee07-f3f0-477a-bb4e-c26553fc1159.jpeg?im_w=720',
        147);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44323406/original/03c5ec62-20e8-4a36-aba4-c151f4eac686.jpeg?im_w=720',
        147);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44323406/original/6aacb8da-995b-40fe-a812-496d1d2b7d0a.jpeg?im_w=720',
        147);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44323406/original/1bfd54a3-9d04-4506-9307-eba2668a3df1.jpeg?im_w=720',
        147);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44323406/original/c7b86234-d5a6-472d-b05a-de188a851ed1.jpeg?im_w=720',
        147);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44323406/original/eb639285-1aaf-43a9-a9a8-3a09509f6d29.jpeg?im_w=720',
        147);
INSERT INTO image (type, url, room_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44323406/original/badf9c8d-ac66-4aeb-bd48-edc86a59bd15.jpeg?im_w=720',
        147);
insert into location(id, latitude, longitude, city_name)
values (148, 33.385, 126.284, '제주');
insert into review (id, star, review)
values (148, 5, 190);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (148, '[독채] 프라이빗 온수풀! 마당이 넓은시골집! 게으른오후', 'Hallim-eub, Cheju의 전원주택 전체', 95000, '집 전체', 1, 4, 1, 148, 148, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/885457f2-8f1a-42fa-bb44-1b0d49cec872.jpg?im_w=720', 148);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dea9ec82-7d11-4e5b-9ecf-72433adf4f2c.jpg?im_w=720', 148);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/769af0bb-cac5-4cce-b15f-8882976ee89c.jpg?im_w=720', 148);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b68ec71c-cde2-4b10-8b3f-f8d8a57daab4.jpg?im_w=720', 148);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8797ed54-649c-4a3c-99c0-26331eea3fcd.jpg?im_w=720', 148);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/608ae5f4-c937-4952-87fa-ecdac8fd1757.jpg?im_w=720', 148);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b61d40ca-efc4-4857-97c7-d6147c4de37c.jpg?im_w=720', 148);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/44455fda-47b5-4274-8df2-6ed64cbbd88d.jpg?im_w=720', 148);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8aeadecc-6833-436b-aacf-244dfbec779c.jpg?im_w=720', 148);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ad5f82a6-d7f3-4a1a-bf72-18c0180789fa.jpg?im_w=720', 148);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bc7d1724-202a-4892-9066-9328a9bd30fb.jpg?im_w=720', 148);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/365397f6-3a42-44cd-b32e-a7a93b5dcba8.jpg?im_w=720', 148);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f71f9738-bc2b-4383-9145-2fe58a90e15c.jpg?im_w=720', 148);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/788e0f71-bd0e-4c87-ae75-b74e370c2f68.jpg?im_w=720', 148);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/519763a9-ec7f-401c-8dee-85dada071a9f.jpg?im_w=720', 148);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5cd01054-3a10-417f-a179-cd0c7a64a9c9.jpg?im_w=720', 148);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c7f542a5-e4c1-46bd-9b59-6c905c20954f.jpg?im_w=720', 148);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fcb06bf8-2a0b-41b7-bcca-2b9635c1be31.jpg?im_w=720', 148);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d920fc30-9ffd-41c9-867f-bf74fde56da1.jpg?im_w=720', 148);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c7f42df0-fa84-4137-a1cc-0d955fd11d57.jpg?im_w=720', 148);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/65a9d5b6-0454-4f86-8868-7d8378befb95.jpg?im_w=720', 148);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2dc07087-c0c4-4758-afdd-3dc87d7172fc.jpg?im_w=720', 148);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a05eed24-90de-42be-b539-05ba1376ddd7.jpg?im_w=720', 148);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dc164210-132b-477e-a594-5bf6eb550986.jpg?im_w=720', 148);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c17610c7-e89f-4ea6-8442-1102fae2c96d.jpg?im_w=720', 148);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c12d6492-0514-4462-b658-6b5ee0a2ef94.jpg?im_w=720', 148);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3df9f8d0-e51d-4f4f-8694-44540d516b2a.jpg?im_w=720', 148);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5ac0f0c9-f3a6-4a90-b677-cb0662e9f70d.jpg?im_w=720', 148);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/238d2ed8-0310-4061-b841-c1e8537f54c5.jpg?im_w=720', 148);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2658e855-ef9d-41c2-96b2-4c8f479bbe4d.jpg?im_w=720', 148);
insert into location(id, latitude, longitude, city_name)
values (149, 33.397, 126.256, '제주');
insert into review (id, star, review)
values (149, 5, 50);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (149, 'stay_AHHA _03호', 'Hallim-eub, Jeju-si의 펜션', 100000, '집 전체', 2, 4, 1, 149, 149, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/7d0486c9-f75c-49b7-8a8a-7d2ec2bef3f4.jpg?im_w=720', 149);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/21340c83-1004-49ae-9e28-10212edcd3f0.jpg?im_w=720', 149);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ce155a9f-e80f-4748-8cce-5e09fd1438be.jpg?im_w=720', 149);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a03509f8-1d56-433b-9702-e76cbbcdbdec.jpg?im_w=720', 149);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1d7a4dd9-8250-4eb6-b5d5-f680201eed35.jpg?im_w=720', 149);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3864f87e-1f3d-4893-b931-6ecee823d40a.jpg?im_w=720', 149);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9a1c8ef2-a7fe-4f42-b5f4-cc66b3d442a6.jpg?im_w=720', 149);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/190e172d-1afd-4c52-8b89-f1853cac231b.jpg?im_w=720', 149);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6d20e37e-f1f6-4439-a06a-47914a17dec9.jpg?im_w=720', 149);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e92e29e2-a98b-4c06-8504-c5c072880512.jpg?im_w=720', 149);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2b2750db-f82f-4b63-81d5-82d6d1cbbcc7.jpg?im_w=720', 149);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c96bb97c-0f80-44f7-a3df-5c8939389848.jpg?im_w=720', 149);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8b743c36-7a45-42de-88c6-8cb011c15dbd.jpg?im_w=720', 149);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2f373d64-e85a-4bb9-ab5c-3b7f3770d63d.jpg?im_w=720', 149);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f9fbe7ad-f16a-477e-99bb-6286af87bb52.jpg?im_w=720', 149);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f078f68e-901c-4743-9728-c6229ad7741a.jpg?im_w=720', 149);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/077e4d10-767e-4a97-bcb9-e9c1d62aba4f.jpg?im_w=720', 149);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/63400479-3ed2-49ef-a81d-efbf0d5495de.jpg?im_w=720', 149);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7d53136d-4e87-4883-8e85-0ebe2a4b1122.jpg?im_w=720', 149);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9c62df4e-bd68-46be-a53f-0706b92f15a1.jpg?im_w=720', 149);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bdbcf497-ee3c-44a7-b053-c50851dbccdb.jpg?im_w=720', 149);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9a6dd41f-0c1a-4eb2-9f8a-3675ada3b6e0.jpg?im_w=720', 149);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e5451c25-06ea-4063-b734-f064e93ee6e4.jpg?im_w=720', 149);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/67eb6619-12f2-47d2-af14-f0479102c146.jpg?im_w=720', 149);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/89b25f90-f6c4-420c-937f-835ebda3132f.jpg?im_w=720', 149);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/51f24e53-475d-462e-a9a3-6b9263471d80.jpg?im_w=720', 149);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/69ca6eab-2511-4f3f-a802-5fa01b2d3dd7.jpg?im_w=720', 149);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/564a22ed-22fc-48d2-88c2-d557aed4bf2c.jpg?im_w=720', 149);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d042dd78-60fa-4d59-9844-46e922390720.jpg?im_w=720', 149);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/22db5e73-991f-4a5b-bc9d-8701de76af2b.jpg?im_w=720', 149);
insert into location(id, latitude, longitude, city_name)
values (150, 33.556, 126.798, '제주');
insert into review (id, star, review)
values (150, 5, 95);
INSERT INTO room (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                  host_id, additional_cost_id)
VALUES (150, '제주도 월정리해변무주애-밖거리(연인,부부)', '제주시의 집 전체', 90000, '집 전체', 1, 2, 1, 150, 150, 1, 1);
INSERT INTO image (type, url, room_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/99197639/44e80a22_original.jpg?im_w=720', 150);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/104158868/8eb181cc_original.jpg?im_w=720', 150);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/107774163/a41bef58_original.jpg?im_w=720', 150);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/105353620/e31e2ae9_original.jpg?im_w=720', 150);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/105333880/15f18ded_original.jpg?im_w=720', 150);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/609590a2-942b-4f8d-923e-05605294ff34.jpg?im_w=720', 150);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c2dbab81-d210-480f-aec0-9bef282b1224.jpg?im_w=720', 150);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6944e4b5-eff3-4372-8798-ead5f58eda99.jpg?im_w=720', 150);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/105333913/91e763ba_original.jpg?im_w=720', 150);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/105333955/5c40e0be_original.jpg?im_w=720', 150);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/105333789/b003a51c_original.jpg?im_w=720', 150);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/105333821/64d64f86_original.jpg?im_w=720', 150);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/105353687/5484cb82_original.jpg?im_w=720', 150);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ad17dbd1-fde4-443c-a2e6-d28556a1be54.jpg?im_w=720', 150);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9dfc43cf-97a1-44f8-96e9-325bfa035d6d.jpg?im_w=720', 150);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/105353824/56ff0367_original.jpg?im_w=720', 150);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/105098062/6029e1b6_original.jpg?im_w=720', 150);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/105098099/769dd0d7_original.jpg?im_w=720', 150);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/105353864/19e0ffe6_original.jpg?im_w=720', 150);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/105353925/b669b153_original.jpg?im_w=720', 150);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/105354004/49cd16bc_original.jpg?im_w=720', 150);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/111609546/0a6db14b_original.jpg?im_w=720', 150);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/111609452/8b501564_original.jpg?im_w=720', 150);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/111609502/6e0c9702_original.jpg?im_w=720', 150);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/105353762/497627c5_original.jpg?im_w=720', 150);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/105334301/40d263f5_original.jpg?im_w=720', 150);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/105334290/49862129_original.jpg?im_w=720', 150);
INSERT INTO image (type, url, room_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/99197665/71edaa34_original.jpg?im_w=720', 150);


insert into reservation (room_id, user_id, adult, child, baby, check_in, check_out, total_price)
values (1, null, 1, 1, 2, '2021-03-02', '2021-03-03', 192000);

insert into wish_list (user_id, room_id, wish)
values (null, 1, 0);







