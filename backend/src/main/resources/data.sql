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
values (1, 37.574, 127.02, '서울');
insert into review (id, star, review)
values (1, 4.5, 217);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (1, 'dmyk_"Hachure"', '종로구의 게스트용 별채 전체', 100000, '집 전체', 1, 2, 1, 1, 1, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/3428dcfb-ca43-45d5-aeec-5c0f11f7c39b.jpg?im_w=720', 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fbad6a88-fe0e-410d-a827-0ea865d9a186.jpg?im_w=720', 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6f014ffd-c1e8-4626-b98d-762b7148119f.jpg?im_w=720', 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9580d656-346c-4184-9b0d-1a2b5833f1a2.jpg?im_w=720', 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/da1e3bb9-0f89-48a8-85e8-10c854d96284.jpg?im_w=720', 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e0122193-b343-47d8-9191-28f7bc1e7c16.jpg?im_w=720', 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/db179a3e-0836-4283-93b6-1258ef7db2c1.jpg?im_w=720', 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5b79fb8c-77b3-4d40-9dc0-ce37a9c2a335.jpg?im_w=720', 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e84d91a5-8b2e-4e08-b6ac-52f3edd947ab.jpg?im_w=720', 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d7db13b0-b19e-4932-b2fc-0ea7ae5828cd.jpg?im_w=720', 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1d2afd83-464d-4c30-9734-9d993fd41068.jpg?im_w=720', 1);
insert into location(id, latitude, longitude, city_name)
values (2, 37.556, 126.931, '서울');
insert into review (id, star, review)
values (2, 5, 30);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (2, '#2 홍대입구역 도보 5분 조용하고 깔끔한 집', '서대문구의 집 전체', 95000, '집 전체', 1, 2, 1, 2, 2, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48235229/original/4bf6a5cc-dc35-49fa-a625-951f8a76fec5.jpeg?im_w=720',
        2);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48235229/original/4a9c2baa-44fc-4a4d-a067-854f167bfcfb.jpeg?im_w=720',
        2);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48235229/original/37764a52-e072-41f4-8f19-c3f89e242bef.jpeg?im_w=720',
        2);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48235229/original/5ce4b1ac-92b3-46bc-92c9-3a2e9f85aa0b.jpeg?im_w=720',
        2);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48235229/original/b1102385-8db1-4ef6-97e9-e34027388355.jpeg?im_w=720',
        2);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48235229/original/e88fbe17-6d58-410d-8799-83ca5022a543.jpeg?im_w=720',
        2);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48235229/original/9eb245eb-ea25-40da-b045-4cecde615617.jpeg?im_w=720',
        2);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48235229/original/217258d6-fb04-439a-840e-7223ad6b0563.jpeg?im_w=720',
        2);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48235229/original/5872cd69-2885-439e-babe-e2e0dc7b2f9f.jpeg?im_w=720',
        2);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48235229/original/5190dd47-c437-4e2c-90fa-b040c5f5b9c1.jpeg?im_w=720',
        2);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48235229/original/89596b22-de26-4ea8-9470-362329e70d30.jpeg?im_w=720',
        2);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48110410/original/e7b47cfc-d049-49b1-9b1e-b8d6b87c3527.jpeg?im_w=720',
        2);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48110410/original/b7d92379-d4ce-4850-8cb2-394d07852685.jpeg?im_w=720',
        2);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48235229/original/0e3f3867-54c9-405f-9454-e27009572b75.jpeg?im_w=720',
        2);
insert into location(id, latitude, longitude, city_name)
values (3, 37.579, 127.023, '서울');
insert into review (id, star, review)
values (3, 0, 1);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (3, 'HOSTEL SEOUL - Double room with a bathroom (3020)', 'Sungin 2(i)-dong, Jongno-gu의 개인실', 95000, '개인실', 0, 2,
        1, 3, 3, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49507837/original/576cc5b7-8114-4466-9376-45c259780fd5.jpeg?im_w=720',
        3);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49507837/original/edd18b3e-ca0e-4e92-af7b-9119f279dce0.jpeg?im_w=720',
        3);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1b363415-58b7-4a1f-9d61-a2a6b10e3996.jpg?im_w=720', 3);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f6c93e58-9cb5-47e3-842b-b042c1894979.jpg?im_w=720', 3);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49239379/original/ac61924d-d7cd-4e71-b45c-ded668968e9c.jpeg?im_w=720',
        3);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49150712/original/c8e15eee-e1a0-4e91-912d-4bf2fca6860b.jpeg?im_w=720',
        3);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49131805/original/f40b5394-42b9-4e71-ab39-7593dee4d5aa.jpeg?im_w=720',
        3);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8012bdbf-e281-4fc8-b645-ef663143135d.jpg?im_w=720', 3);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/46bf7e9a-23dc-4174-864f-8967b7859175.jpg?im_w=720', 3);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/daf17c3d-3520-4103-8135-38fc6e6865aa.jpg?im_w=720', 3);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9f52c84f-e648-4208-916e-194e64ec48fa.jpg?im_w=720', 3);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ed01fcd7-a882-41e7-a5b2-662ba2a36938.jpg?im_w=720', 3);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a0528d71-018f-45c1-bee9-d38b5dcf29a6.jpg?im_w=720', 3);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c5264df5-f483-4021-96dd-ef85f184a7c2.jpg?im_w=720', 3);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/45d9e8ca-1d15-4dda-b4a7-02696cbce714.jpg?im_w=720', 3);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49150712/original/4bdb422a-949b-47d8-85d7-eac0dc2b8caa.jpeg?im_w=720',
        3);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49150712/original/190c7b35-04b1-4519-a66d-e217530f7bdd.jpeg?im_w=720',
        3);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49150712/original/b808fea9-3f14-4fd8-881e-79e55fa6ce34.jpeg?im_w=720',
        3);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49239379/original/a2e2dabd-49a6-4862-84f8-b79dd38d9605.jpeg?im_w=720',
        3);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49239379/original/ee47672b-9a15-40ce-9e79-eed71d07619b.jpeg?im_w=720',
        3);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c4517a03-8adf-403b-8896-a51124df5806.jpg?im_w=720', 3);
insert into location(id, latitude, longitude, city_name)
values (4, 37.569, 126.991, '서울');
insert into review (id, star, review)
values (4, 4.5, 24);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (4, '허브c', '종로구의 개인실', 90000, '개인실', 1, 1, 1, 4, 4, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/e821c9a6-90a5-4988-a6dc-da39cd4c280b.jpg?im_w=720', 4);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/95082310-9596-49f6-b91f-eb850836c73c.jpg?im_w=720', 4);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b796a9b1-8f20-4b75-9821-ca483fab0ea8.jpg?im_w=720', 4);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cd03c105-c0fb-4438-99a3-313f87964bca.jpg?im_w=720', 4);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6d23ea05-3dba-4ff8-aa26-2006c3ab11dd.jpg?im_w=720', 4);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/353bbe34-b1b1-40a7-b815-cad1b8435d31.jpg?im_w=720', 4);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/52e29756-8d9a-4f83-8b8f-222e8a950aeb.jpg?im_w=720', 4);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6727dba6-427b-45b9-9ff4-6a00a932a7a8.jpg?im_w=720', 4);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8d13c891-728a-4930-bbe6-641e133eb2da.jpg?im_w=720', 4);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/06ce5e27-3cc4-43d9-b43b-07d7e0947af0.jpg?im_w=720', 4);
insert into location(id, latitude, longitude, city_name)
values (5, 37.576, 127.022, '서울');
insert into review (id, star, review)
values (5, 4.5, 262);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (5, 'dmyk_"Carré"', '종로구의 게스트 스위트 전체', 100000, '집 전체', 1, 2, 1, 5, 5, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/35ecadd2-da5d-4db1-92bd-867ec152921d.jpg?im_w=720', 5);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5e1185eb-f9fc-43fe-a398-0ed7c49bfdbd.jpg?im_w=720', 5);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3ac4c49b-f4b0-4c37-b99f-420ff88f0292.jpg?im_w=720', 5);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a530684f-96f3-4116-a3c4-cd3bf7806d1f.jpg?im_w=720', 5);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/332e7ca4-9318-4511-9b44-b4b54ef1250c.jpg?im_w=720', 5);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/51fe9399-c4a2-4f2c-a5b6-c820b0535ebe.jpg?im_w=720', 5);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d1f6561f-ed8c-4b50-a0d0-1650e7a2a44d.jpg?im_w=720', 5);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/015724ab-56d9-4336-a7dd-34920d3f89a7.jpg?im_w=720', 5);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/47864437-e142-4d74-aba9-42770d949a80.jpg?im_w=720', 5);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d7f59f60-4752-4c43-9225-793095ba8638.jpg?im_w=720', 5);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/858f355f-e9e9-4467-b193-8cea445381eb.jpg?im_w=720', 5);
insert into location(id, latitude, longitude, city_name)
values (6, 37.558, 126.984, '서울');
insert into review (id, star, review)
values (6, 5, 48);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (6, 'Bao107_A house in Myeongdong/Namsan mt with a yard', '중구의 개인실', 86000, '개인실', 1, 2, 1, 6, 6, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/e4006c7c-f03b-4b8b-bc34-7043a4aae09c.jpg?im_w=720', 6);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3c296cb5-e31e-4d72-865f-2d4e093476e8.jpg?im_w=720', 6);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bcae844e-d680-4825-855e-c961762bec1d.jpg?im_w=720', 6);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-42990590/original/b8705ada-b2ce-464c-b7fd-db1e3c8e6349.jpeg?im_w=720',
        6);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-42990590/original/765fc21e-2de5-4691-b587-780c84cf4473.jpeg?im_w=720',
        6);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e68f09c0-64b5-4bd6-8b4c-44fe4886547d.jpg?im_w=720', 6);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f2d37f3c-2a85-4faa-a241-e06f46ebf775.jpg?im_w=720', 6);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6fffef34-4919-4f0a-90c7-57430a72d389.jpg?im_w=720', 6);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0d45d368-45d6-45da-9761-43a420bc0357.jpg?im_w=720', 6);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/914f875e-a019-4bb9-9686-5ea99a9b5d2a.jpg?im_w=720', 6);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c815c33b-4b13-4e14-a884-e312dd0dc66a.jpg?im_w=720', 6);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/85d2d438-6e72-4624-bbeb-ee7fd73ca027.jpg?im_w=720', 6);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cd2f6a3f-e1da-4bc6-a176-ffd9a5905dc3.jpg?im_w=720', 6);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7c06c810-61f1-44e5-9f26-f744ea37539c.jpg?im_w=720', 6);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e0f88a6f-ce1c-4dc3-a3db-058dbeb4bd34.jpg?im_w=720', 6);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9cc70de4-0d92-4a7e-bc39-e85c4ae8a221.jpg?im_w=720', 6);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/98afc85f-b52c-4822-928d-2644195e4838.jpg?im_w=720', 6);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d54d56ce-5189-47b2-8946-a15f7c2706a4.jpg?im_w=720', 6);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ab5e922b-b25a-4795-99a2-e6e162a0ac86.jpg?im_w=720', 6);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c86f224a-5407-47c3-bed0-e29ecfbdc320.jpg?im_w=720', 6);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0782c417-b88f-4a4e-acf6-72c48eb8e722.jpg?im_w=720', 6);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c13ef8da-e9fc-4ff9-bd70-d2b4112caf19.jpg?im_w=720', 6);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d243344d-dcde-4e53-843f-13b26e195724.jpg?im_w=720', 6);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/01bad812-b686-4d9f-a457-ab9368acbba8.jpg?im_w=720', 6);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c29d96c9-f3b6-4154-8444-f6e18de9893d.jpg?im_w=720', 6);
insert into location(id, latitude, longitude, city_name)
values (7, 37.558, 126.935, '서울');
insert into review (id, star, review)
values (7, 5, 52);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (7, '#ONLY 자가격리 & 장기숙박 특별할인 #도시힐링감성 #숙소설명 꼭 확인해주세요', 'Sinchon-dong, Seodaemun-gu의 아파트 전체', 80000, '집 전체', 1, 4,
        1, 7, 7, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44159716/original/04dc2ade-cd11-4599-a7fb-a6f4b6176f4e.jpeg?im_w=720',
        7);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44159716/original/c6c1a442-b449-495a-8ee9-f1779f36b5b4.jpeg?im_w=720',
        7);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44159716/original/66bd535a-ba05-43e7-adbe-6953bbc13da5.jpeg?im_w=720',
        7);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44159716/original/d1857908-90c8-48fd-9e68-a743187664ed.jpeg?im_w=720',
        7);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/39b76268-042e-4a89-aa3b-89abe9865c58.jpg?im_w=720', 7);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44159716/original/53dcf85e-6295-4f84-a246-cc6fdb142d2f.jpeg?im_w=720',
        7);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6652d911-214a-4bfc-b097-0192f4d78579.jpg?im_w=720', 7);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ca8abc0d-9e94-4f15-8548-012c8ec969f2.jpg?im_w=720', 7);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44159716/original/df233302-04bd-41a1-93c4-62b39aa73fa8.jpeg?im_w=720',
        7);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f61432bd-d31d-481d-9452-08c276b3f201.jpg?im_w=720', 7);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44159716/original/bc21e608-4244-40ab-8cc9-3781b36e0971.jpeg?im_w=720',
        7);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4ed0d2e5-b305-4483-a237-a6473985187d.jpg?im_w=720', 7);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44159716/original/c19548f2-1658-442e-a67f-be42fd89bbd6.jpeg?im_w=720',
        7);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f474676e-b04c-4173-964d-80179db71c88.jpg?im_w=720', 7);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/79219262-c3f4-4140-bca8-5712cea4bf5b.jpg?im_w=720', 7);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ef80325d-39b5-4770-9acc-6b52905d6ee9.jpg?im_w=720', 7);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/144f2b64-feb0-44b2-852e-1dab468d28c7.jpg?im_w=720', 7);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ebaaa9e9-a8a4-4bca-9f27-e234d3153b03.jpg?im_w=720', 7);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2f300753-ee47-418f-982d-acf65f518b2e.jpg?im_w=720', 7);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c48191ab-fd5e-4d37-9019-d9a85922097d.jpg?im_w=720', 7);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f7448e23-7009-4c76-a118-efdda9ee2e02.jpg?im_w=720', 7);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44159716/original/63e6f7cf-09d8-41af-b691-0e59fc210cd1.jpeg?im_w=720',
        7);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44159716/original/4cb9b04b-da66-40bc-a81c-2e9ff973df6c.jpeg?im_w=720',
        7);
insert into location(id, latitude, longitude, city_name)
values (8, 37.557, 126.941, '서울');
insert into review (id, star, review)
values (8, 4.5, 16);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (8, '韩国 서울 신촌역연속극 촬영지 1인실 202首尔浪漫满屋宿舍别馆', 'Sinchon-dong, Seodaemun-gu의 집 전체', 100000, '집 전체', 1, 1, 1, 8, 8, 1,
        1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/50047b00-8d00-44d5-89c3-d2f2f122a8ee.jpg?im_w=720', 8);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f42535df-cd07-4403-9264-22907e75f240.jpg?im_w=720', 8);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0e3c96a6-f609-4b93-bafe-1b1b764be523.jpg?im_w=720', 8);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/15af3286-65ea-482c-9810-f3b10318ed96.jpg?im_w=720', 8);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/537c3860-8240-40c4-8edb-7a38ad6e7a8e.jpg?im_w=720', 8);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dab411b1-84c6-4c58-9145-f5212c536cae.jpg?im_w=720', 8);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7c49a94d-9d35-4c53-9331-f62447929527.jpg?im_w=720', 8);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2a17cb83-f536-4bec-b160-a2605f0fc2e5.jpg?im_w=720', 8);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ea8fbfa6-89c4-4747-a765-338c7724ab1a.jpg?im_w=720', 8);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0ef48f42-f30a-42e1-b26c-5f25c4575ba2.jpg?im_w=720', 8);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c7f0679c-c4a2-4a9c-a2b3-1fe9e37dbc72.jpg?im_w=720', 8);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/66062739-1ed5-4b2a-9343-3f56fa45115e.jpg?im_w=720', 8);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/afa4a45a-89bb-4ec6-8f86-80676c04c48b.jpg?im_w=720', 8);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/560462b2-afcf-454d-9fe2-7cd3413d6cac.jpg?im_w=720', 8);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4135197c-0b63-4a85-9c36-74ec1f3b54df.jpg?im_w=720', 8);
insert into location(id, latitude, longitude, city_name)
values (9, 37.547, 126.924, '서울');
insert into review (id, star, review)
values (9, 5, 5);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (9, '☆Netflix☆Hongdae_Sangsu sta.20sec 갬성돋는 나만의 공간♡', 'Sangsu-dong, Mapo-gu의 콘도(아파트) 전체', 100000, '집 전체', 1, 2,
        1, 9, 9, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/f2f4d084-a4f3-4048-b4c9-5d464cee8a7c.jpg?im_w=720', 9);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a3838477-d54f-40c3-9e59-5da6153bb757.jpg?im_w=720', 9);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d0ac0b42-da60-4eb9-9a6f-aaa9f54d7afc.jpg?im_w=720', 9);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8338f0a3-d966-496b-a927-85507e9ac8b3.jpg?im_w=720', 9);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/94414f30-586a-41e7-bf03-1d31c18a6540.jpg?im_w=720', 9);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8ca80227-0fb1-4f7f-a3c7-51f1eae67351.jpg?im_w=720', 9);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e580c191-df46-41a7-9966-d19148691f51.jpg?im_w=720', 9);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ccfdfaca-890c-4aae-a4c5-f74c9b10f065.jpg?im_w=720', 9);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/79b67869-7959-4e4b-97ba-19409d0805f8.jpg?im_w=720', 9);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4ae2cc5a-62c1-47eb-8d93-ee526e159e77.jpg?im_w=720', 9);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d5629509-0ea0-4058-b4a1-ca23cc8ade26.jpg?im_w=720', 9);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1cf471f3-009e-4a17-aa5a-50c8c2af7ada.jpg?im_w=720', 9);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c1529a27-cd8d-4952-a315-ffea3991313b.jpg?im_w=720', 9);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/df29fdbd-a1de-4376-91f3-9131cda3483a.jpg?im_w=720', 9);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b2024cb4-eee7-4494-8266-ee497bd9140f.jpg?im_w=720', 9);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3618120f-7010-4114-9dc2-516cde79e0f5.jpg?im_w=720', 9);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c11b2630-dea3-45bc-93c1-22162e3db6d4.jpg?im_w=720', 9);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b3edf350-4018-4e0c-b26b-04721001c2b1.jpg?im_w=720', 9);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/15ce84e5-a9ee-4e2d-aef4-70de9b688ed2.jpg?im_w=720', 9);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4dec2590-39cb-4032-ab85-0b48e799e7fc.jpg?im_w=720', 9);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7177064c-7cd9-4c85-b28a-35076ee69c77.jpg?im_w=720', 9);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6adf7ed2-b9cc-42de-bf51-61e08d06d2f0.jpg?im_w=720', 9);
insert into location(id, latitude, longitude, city_name)
values (10, 37.484, 127.122, '서울');
insert into review (id, star, review)
values (10, 0, 2);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (10, '하우스" 李相"', 'Songpa-gu의 아파트 전체', 79000, '집 전체', 1, 4, 1, 10, 10, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/756bb2f7-2342-4d3b-9694-492b71635bc7.jpg?im_w=720', 10);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/71db6334-dfda-4be3-9a53-9221faab3672.jpg?im_w=720', 10);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a144ef2a-b416-4f8b-bfb8-d74ce11a3539.jpg?im_w=720', 10);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/32bd0f40-6b1b-4860-9f57-56bd04c33c14.jpg?im_w=720', 10);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8a119488-8143-47ae-a4a5-947a500e49e6.jpg?im_w=720', 10);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ee22e3f7-be28-41f5-b92b-a98d39d404f9.jpg?im_w=720', 10);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a8383dfd-3903-432d-8b2b-67340ff2b81f.jpg?im_w=720', 10);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b3317441-3434-4b13-9adc-9e4d58154bcf.jpg?im_w=720', 10);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d4562f30-d64b-40fc-ba2c-da36db60a65a.jpg?im_w=720', 10);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3e6c29fb-9425-454d-a333-19c83b660d38.jpg?im_w=720', 10);
insert into location(id, latitude, longitude, city_name)
values (11, 37.489, 126.927, '서울');
insert into review (id, star, review)
values (11, 5, 56);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (11, 'Black&white (cost-effective room)', 'Sillim-dong, Gwanak-gu의 아파트 전체', 95000, '집 전체', 1, 2, 1, 11, 11, 1,
        1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/081cb2c4-481d-4aac-a340-8df67be907e7.jpg?im_w=720', 11);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d33089c3-bf1f-42b6-b5de-066a4414cd16.jpg?im_w=720', 11);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5bd6ea7f-dfa5-4f5c-8a72-d10d70b93781.jpg?im_w=720', 11);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/38a621ef-fd30-44ad-8f7e-29801d2bd94a.jpg?im_w=720', 11);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9dcdd674-634c-4a14-894a-25550e97c3b9.jpg?im_w=720', 11);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/238b13b8-19c1-4388-86f6-8de31513b4c3.jpg?im_w=720', 11);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f37a10bc-7be0-4e3c-9b9d-702d267d46fd.jpg?im_w=720', 11);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c46ff164-08d3-46f6-802b-2f652011e9c0.jpg?im_w=720', 11);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a46aaf42-56ec-4541-8d50-0c6cf6c4d401.jpg?im_w=720', 11);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/06e7d2f8-3928-440d-a6ba-b7cfef2381d5.jpg?im_w=720', 11);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/79d4d0e7-083a-4f83-8977-99d71a142b08.jpg?im_w=720', 11);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/13123d67-200d-4ae7-9b25-a1accf0ac374.jpg?im_w=720', 11);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/222f9cf2-e4d4-4ad8-8dd2-33097cb5f64f.jpg?im_w=720', 11);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/be44eac7-3e1b-4630-b2ab-07154d8b567e.jpg?im_w=720', 11);
insert into location(id, latitude, longitude, city_name)
values (12, 37.562, 126.984, '서울');
insert into review (id, star, review)
values (12, 4.5, 39);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (12, '♥명동역3분♥ 아늑하고 편한 모임+  감성유닛 T5  in 명동 (방역완료, 살균ing)', 'Myeong-dong, Jung-gu의 콘도(아파트) 전체', 90000, '집 전체', 2,
        4, 1, 12, 12, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/93921868-7f14-4121-b465-4e887bf61693.jpeg?im_w=720',
        12);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/b6f06d00-ab5c-4203-a373-f00ad0fc2dba.jpeg?im_w=720',
        12);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/d89c435b-a9bc-429f-b7ad-28f62dfa84ec.jpeg?im_w=720',
        12);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/8c5099f2-cebd-4730-af4b-9a3dbc8471e5.jpeg?im_w=720',
        12);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/8ff1ad6b-2629-4c1d-a797-3a97fb6de8ee.jpeg?im_w=720',
        12);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/fa1357f2-70f6-4cb1-b37a-ad9c4d46cd7a.jpeg?im_w=720',
        12);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/09856f22-09a1-441e-a604-36c44937c080.jpeg?im_w=720',
        12);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/5bae7481-f911-43ec-885c-0a59be84e3c0.jpeg?im_w=720',
        12);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/c6007b9f-744e-422c-bae6-55a0d8e2647c.jpeg?im_w=720',
        12);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/8ee92a8c-0f84-4310-a7fb-744bff05ed1b.jpeg?im_w=720',
        12);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/b1939f21-93a5-40ce-82b9-c9b1b3d1f059.jpeg?im_w=720',
        12);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/3645a59d-4693-4f71-aa00-1ca523fb81b2.jpeg?im_w=720',
        12);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/e3452395-3ff1-4699-8daf-f1b1e59d8392.jpeg?im_w=720',
        12);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/c08a0135-c823-4098-9c4a-8b59dc5e4178.jpeg?im_w=720',
        12);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/609d27ff-c23a-4ab1-9876-e50fc691b6ce.jpeg?im_w=720',
        12);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/2785cc18-6557-4ec9-a18a-1a4d63f115a5.jpeg?im_w=720',
        12);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/d4460297-b992-4fda-bf42-01bc80ae9fba.jpeg?im_w=720',
        12);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/1f6ada5d-56f0-45d3-a17a-b33983f4e555.jpeg?im_w=720',
        12);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/7c9978e9-8811-4cf1-9013-fe655538fe14.jpeg?im_w=720',
        12);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/95e131ac-040b-4937-a637-0f9d1f1034ff.jpeg?im_w=720',
        12);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/43213c42-362d-402a-ba20-1ce59f16f35b.jpeg?im_w=720',
        12);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/2847bfc3-1bdc-4cf4-8ef2-905b5d5127a0.jpeg?im_w=720',
        12);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/4c94ee74-184f-4f90-8d73-62d3640fe9fd.jpeg?im_w=720',
        12);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/0c9c4d75-21a9-48aa-98d0-b847314a7aa6.jpeg?im_w=720',
        12);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/aa64509f-9dac-438f-8303-709d74bbaf8a.jpeg?im_w=720',
        12);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/f208440f-f1a6-4c2a-860c-69b15ea192fe.jpeg?im_w=720',
        12);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/aa08aa96-9c78-482a-8d2d-82ca36079b8e.jpeg?im_w=720',
        12);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/2dd6eafa-577a-4c50-9c90-c8339866441d.jpeg?im_w=720',
        12);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/8fed6b8a-6f7d-4125-8e80-aa87ea49f6e3.jpeg?im_w=720',
        12);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44542209/original/a5195961-a916-431c-b567-a8c8d645b6b2.jpeg?im_w=720',
        12);
insert into location(id, latitude, longitude, city_name)
values (13, 37.556, 126.935, '서울');
insert into review (id, star, review)
values (13, 4.5, 17);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (13, '#31 Sinchon Sta 2mins Hongdae 8mins Blue Mansion', '마포구의 집 전체', 100000, '집 전체', 1, 1, 1, 13, 13, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/29aa0a8e-b6bd-4310-bd90-1866b56e1d54.jpg?im_w=720', 13);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4a8035d5-9f43-463b-ae04-5d48360956ab.jpg?im_w=720', 13);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/89a7d409-4147-4e9e-bc11-e2201488135d.jpg?im_w=720', 13);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a3d9fbd0-1e82-4057-aac0-4f16b6a84aa1.jpg?im_w=720', 13);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/70991420-c698-4775-b31c-c2e7cda23ded.jpg?im_w=720', 13);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/10dedcbd-2cf5-4a5c-a193-54d2b425227d.jpg?im_w=720', 13);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b601e914-d854-4291-8470-e43292eee9e0.jpg?im_w=720', 13);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a03f7dde-0c92-4008-b363-94cc8b8767c8.jpg?im_w=720', 13);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8786e0d2-31ed-478f-9e12-d277ff9d8d38.jpg?im_w=720', 13);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e906ba99-ea43-4d6e-84e0-71a591661fc4.jpg?im_w=720', 13);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ff92b493-4c4c-4738-a6a5-0a1636d3badb.jpg?im_w=720', 13);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a383e171-9cfd-49ae-b48c-a261a83a7cb3.jpg?im_w=720', 13);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/96e118e7-9687-424f-9034-e198d37ae036.jpg?im_w=720', 13);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/95ed4f63-c448-4a8f-97cc-4f0d6f9835d2.jpg?im_w=720', 13);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b83a55f8-1818-483b-ab22-455046e5e60a.jpg?im_w=720', 13);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6236e4a3-510c-4910-aec0-20507fc3259b.jpg?im_w=720', 13);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fb75598d-18fd-4114-88fe-eefd48449344.jpg?im_w=720', 13);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c51c66a7-9fc6-41b6-a4cb-b026fe8c901a.jpg?im_w=720', 13);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b7ff51bb-e6a8-4788-b38c-73e458d0b649.jpg?im_w=720', 13);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cd09b650-45f8-49a6-9fc1-a661f85ff4e7.jpg?im_w=720', 13);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ad1ec3c7-a314-48a3-9da9-b67dfb77f318.jpg?im_w=720', 13);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3e051faf-f503-4adb-a66c-990f5ebe7bc0.jpg?im_w=720', 13);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e99891e0-d902-424f-b34d-8335ef671ff9.jpg?im_w=720', 13);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/392eb653-b5f2-4536-b800-e9b9eec930ac.jpg?im_w=720', 13);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2b184052-b0c1-4710-97cf-a3c04d839909.jpg?im_w=720', 13);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9ea3b09c-77f8-4ea9-a5f0-82e26009fdee.jpg?im_w=720', 13);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bc8731aa-ff3f-4f9e-b7c0-113b27ac567b.jpg?im_w=720', 13);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9901cc48-61f7-42bf-9124-516d0078f4a6.jpg?im_w=720', 13);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7345ccdf-3800-4a87-8799-389bcc2ab9a2.jpg?im_w=720', 13);
insert into location(id, latitude, longitude, city_name)
values (14, 37.544, 126.942, '서울');
insert into review (id, star, review)
values (14, 0, 0);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (14, 'GETTY HOUSE - DELUXE ROOM 6A', 'Yonggang-dong, Mapo-gu의 개인실', 93000, '개인실', 1, 1, 1, 14, 14, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/d9750dd7-ff14-4e9c-be62-f10076bc0351.jpg?im_w=720', 14);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48352693/original/2e282406-bde5-4f12-aa7e-8044568b16c7.jpeg?im_w=720',
        14);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/441beebe-ec24-41da-99c6-a49cd1d5692c.jpg?im_w=720', 14);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48352693/original/354286d5-44f8-4c2c-a06d-0e4a48a53e51.jpeg?im_w=720',
        14);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/921cd937-07de-4371-af94-94dc6d289a21.jpg?im_w=720', 14);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f496cc8f-36a0-4cfc-967f-be1da4a0465c.jpg?im_w=720', 14);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/94cff13e-f158-4931-8fa8-f1413375cf22.jpg?im_w=720', 14);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/19d978c0-ebc2-4216-bcfb-597a001810a1.jpg?im_w=720', 14);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dba6f9a5-19a5-4923-8982-78ab269a4c5c.jpg?im_w=720', 14);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c7c847b0-8aa7-48eb-9014-b5e18be70c86.jpg?im_w=720', 14);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9956b9db-3631-49bb-b31b-1c1c4b4e4669.jpg?im_w=720', 14);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48191983/original/71d069a9-3ac9-481b-b078-ef66a8022489.png?im_w=720',
        14);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48191983/original/50822719-463c-4fcb-a941-51bd65f2a03a.png?im_w=720',
        14);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48191983/original/b13d2aa1-4238-4257-916f-e5dda184c0cd.png?im_w=720',
        14);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48191983/original/ca1ec866-5923-4b01-a2b1-a6ed277e4931.png?im_w=720',
        14);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48191983/original/8f24ce65-08e9-460e-9c3b-9fb9d0f4cd96.png?im_w=720',
        14);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-48191983/original/f3dbd14c-700d-4034-a757-1ef8eb884545.png?im_w=720',
        14);
insert into location(id, latitude, longitude, city_name)
values (15, 37.554, 126.936, '서울');
insert into review (id, star, review)
values (15, 4, 17);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (15, '#32 Sinchon Sta 2mins Hongdae 8mins Blue Mansion', '마포구의 집 전체', 100000, '집 전체', 1, 2, 1, 15, 15, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/202f2d50-4c7e-41a9-9198-b775f2a20079.jpg?im_w=720', 15);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d32e2a72-ec50-4da2-b5b8-8a0ef8e935bc.jpg?im_w=720', 15);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e5d43b4f-9846-44c0-8832-f7ef7f863922.jpg?im_w=720', 15);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2a7a3916-4cc7-44d5-9721-dfff2c71531f.jpg?im_w=720', 15);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/84e9e9c8-2967-4e1b-9813-ca2e9be78401.jpg?im_w=720', 15);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3f5438bd-8b8b-40f3-b275-efd29fbd62ff.jpg?im_w=720', 15);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d79ba587-0c96-4fed-a51e-40f807fb72a8.jpg?im_w=720', 15);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/75127f29-e4df-4d2e-abe4-4da6a59c89b0.jpg?im_w=720', 15);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a7fca734-e699-4fda-b7f0-64a8acb2eeb7.jpg?im_w=720', 15);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/924b8b47-bb9b-4907-a73b-f410ec83ef33.jpg?im_w=720', 15);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5783d56a-2535-481f-a2d2-1f63a59c5170.jpg?im_w=720', 15);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/97c66831-4f00-4e05-9ab2-3d5dd1407079.jpg?im_w=720', 15);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ddc8b218-ec0d-4e96-92c1-a9f75f89781a.jpg?im_w=720', 15);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6981e30a-2f26-40ed-bc41-fa8f30e3976d.jpg?im_w=720', 15);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d06fb721-3d19-4e79-a40f-207ff7ea9f77.jpg?im_w=720', 15);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ef2ae023-b3fb-4783-9efb-19123f00bda1.jpg?im_w=720', 15);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a79bf415-1e9c-47c8-b41d-a7fdb714a5bd.jpg?im_w=720', 15);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d22ae9b2-142c-4fa7-9df7-ffb135b63ef0.jpg?im_w=720', 15);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1e27dbb4-f604-466c-8ad7-eba9b7798c46.jpg?im_w=720', 15);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0800efeb-2d66-4eb4-a349-739a612eca01.jpg?im_w=720', 15);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9f9245a6-d6de-4d2d-8520-158a69b508dd.jpg?im_w=720', 15);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0c7fa0ec-df44-4dca-b95a-efb01198b540.jpg?im_w=720', 15);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fc861f79-a29b-4101-9543-cbf3764384d5.jpg?im_w=720', 15);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/aff31852-ca49-431c-b344-fd3bac46f641.jpg?im_w=720', 15);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4f33cc13-fd83-4ca9-8870-5a8e1ed202ff.jpg?im_w=720', 15);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b27cb043-b9bc-4096-8f06-729481267ec4.jpg?im_w=720', 15);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6fb1036c-f8dc-4b0c-ba36-1808a219e05b.jpg?im_w=720', 15);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/121def72-7fd2-49c4-8f08-1bfef6f0c9ee.jpg?im_w=720', 15);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/776ddd45-5052-41cb-b2d7-861891228b2d.jpg?im_w=720', 15);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6bbb0532-324b-43da-9246-182f85087281.jpg?im_w=720', 15);
insert into location(id, latitude, longitude, city_name)
values (16, 37.56, 126.925, '서울');
insert into review (id, star, review)
values (16, 4, 71);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (16, '★105SweetCheese★역에서 단 3분거리!', 'Yeonnam-dong, Mapo-gu의 콘도(아파트) 전체', 95000, '집 전체', 1, 2, 1, 16, 16, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/6c2c2c2d-d9a1-4a64-a31e-b4e2666c254f.jpg?im_w=720', 16);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/727ad1b6-a222-44b3-90c9-d56f10b89507.jpg?im_w=720', 16);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0d94e6e9-9813-40eb-8203-fdf7767477d2.jpg?im_w=720', 16);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c518a275-1835-42d3-925d-01acdfb4c88f.jpg?im_w=720', 16);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-29213312/original/8e25f0c6-2529-483e-866c-0c22f27ad7db.jpeg?im_w=720',
        16);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6b441461-4fa4-4ede-a403-6db2d54da848.jpg?im_w=720', 16);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/638f45b5-9d27-4dae-9e39-6db94f919b92.jpg?im_w=720', 16);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8a276697-9ef0-4d70-925d-0ba9ff1f49a5.jpg?im_w=720', 16);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/54253c64-47ba-4370-9e4e-5c0a57ba4012.jpg?im_w=720', 16);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5eae9100-60d2-4c9c-a747-24ca55fa3a1f.jpg?im_w=720', 16);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/242c3351-1d54-4d2e-9de3-55ec3f08780a.jpg?im_w=720', 16);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c9943eae-4522-4030-890e-3bdd1f64b2e1.jpg?im_w=720', 16);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0db80cbf-f2a1-41d5-b40d-7443582fff37.jpg?im_w=720', 16);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/968e72f5-3297-4c57-85b8-1ce32108de51.jpg?im_w=720', 16);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/32edcd87-60ee-4f44-9b48-69b31b3d78f8.jpg?im_w=720', 16);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4bf51ba5-5bc9-4b52-92ef-e14da1ff9885.jpg?im_w=720', 16);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a9c454be-8c6a-47b3-b07b-445dbdb58b73.jpg?im_w=720', 16);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3e05aa88-a972-4e06-91b0-d7a51d76259d.jpg?im_w=720', 16);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/55425dfd-fcd0-4a1a-b5c8-02f1e1925634.jpg?im_w=720', 16);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5c5c1eb9-5a49-40ed-8c98-bdc1e2a6de07.jpg?im_w=720', 16);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a05e75f6-29d3-4bf9-9c58-a2fc5a8cafd7.jpg?im_w=720', 16);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/89295036-adb4-4e01-a909-60b3946aeddc.jpg?im_w=720', 16);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/aeba9f46-ada8-416b-9a0f-2a4f9ba66afb.jpg?im_w=720', 16);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/149f6806-d3ca-4ea3-b0ee-a2b1e748dfba.jpg?im_w=720', 16);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/aad24232-61d7-4614-9e9f-b70ef90f30a6.jpg?im_w=720', 16);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e01a282d-c60d-4eba-b9a7-f885f8c4341c.jpg?im_w=720', 16);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-29213312/original/3f2ffeac-2ff1-4d00-b3fd-9d4e8272ca8b.jpeg?im_w=720',
        16);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-29213312/original/eb16ae3c-46f8-4de9-adbb-08e2d32e1c2d.jpeg?im_w=720',
        16);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-29213312/original/ff74d0da-ecfb-4c3e-b550-b67fbe3d1270.jpeg?im_w=720',
        16);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-29213312/original/c1c64e8e-93c6-4a5d-adde-74e854fd709d.jpeg?im_w=720',
        16);
insert into location(id, latitude, longitude, city_name)
values (17, 37.501, 127.035, '서울');
insert into review (id, star, review)
values (17, 4.5, 20);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (17, '☆역삼역도보2분#417', 'Yeoksam 1(il)-dong, Gangnam-gu의 초소형 주택', 100000, '집 전체', 1, 1, 1, 17, 17, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/98f9b3e3-11c2-4b9c-a543-f765b1e0f913.jpg?im_w=720', 17);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/992eedac-b6d5-48a5-8ca8-2e027dcd97c1.jpg?im_w=720', 17);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/831e83e7-e7fe-4b76-990f-6d8feee84291.jpg?im_w=720', 17);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8dab2db8-ef04-471a-857f-d61c1ea13567.jpg?im_w=720', 17);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/59cc7abd-f642-4548-838d-16e2e657f842.jpg?im_w=720', 17);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/47fc8c9d-377b-4b43-8519-10bdc3636068.jpg?im_w=720', 17);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/59ce19e9-4e60-4820-9251-7aacf2d001d6.jpg?im_w=720', 17);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/33c7e9d2-fb01-4a15-a72c-ad13d55a7ff0.jpg?im_w=720', 17);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/91677694-8304-49f4-a3a6-fdeb1ff2c89f.jpg?im_w=720', 17);
insert into location(id, latitude, longitude, city_name)
values (18, 37.579, 127.023, '서울');
insert into review (id, star, review)
values (18, 0, 2);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (18, 'HOSTEL SEOUL - Double room with a bathroom', 'Sungin 2(i)-dong, Jongno-gu의 개인실', 95000, '개인실', 0, 2, 1, 18,
        18, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/1b363415-58b7-4a1f-9d61-a2a6b10e3996.jpg?im_w=720', 18);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f6c93e58-9cb5-47e3-842b-b042c1894979.jpg?im_w=720', 18);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49239379/original/ac61924d-d7cd-4e71-b45c-ded668968e9c.jpeg?im_w=720',
        18);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49150712/original/c8e15eee-e1a0-4e91-912d-4bf2fca6860b.jpeg?im_w=720',
        18);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49131805/original/f40b5394-42b9-4e71-ab39-7593dee4d5aa.jpeg?im_w=720',
        18);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8012bdbf-e281-4fc8-b645-ef663143135d.jpg?im_w=720', 18);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/46bf7e9a-23dc-4174-864f-8967b7859175.jpg?im_w=720', 18);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/daf17c3d-3520-4103-8135-38fc6e6865aa.jpg?im_w=720', 18);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9f52c84f-e648-4208-916e-194e64ec48fa.jpg?im_w=720', 18);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ed01fcd7-a882-41e7-a5b2-662ba2a36938.jpg?im_w=720', 18);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a0528d71-018f-45c1-bee9-d38b5dcf29a6.jpg?im_w=720', 18);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c5264df5-f483-4021-96dd-ef85f184a7c2.jpg?im_w=720', 18);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/45d9e8ca-1d15-4dda-b4a7-02696cbce714.jpg?im_w=720', 18);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49150712/original/4bdb422a-949b-47d8-85d7-eac0dc2b8caa.jpeg?im_w=720',
        18);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49150712/original/190c7b35-04b1-4519-a66d-e217530f7bdd.jpeg?im_w=720',
        18);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49150712/original/b808fea9-3f14-4fd8-881e-79e55fa6ce34.jpeg?im_w=720',
        18);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49239379/original/a2e2dabd-49a6-4862-84f8-b79dd38d9605.jpeg?im_w=720',
        18);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49239379/original/ee47672b-9a15-40ce-9e79-eed71d07619b.jpeg?im_w=720',
        18);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c4517a03-8adf-403b-8896-a51124df5806.jpg?im_w=720', 18);
insert into location(id, latitude, longitude, city_name)
values (19, 37.576, 127.02, '서울');
insert into review (id, star, review)
values (19, 4.5, 224);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (19, 'dmyk-oblong', '종로구의 게스트용 별채 전체', 100000, '집 전체', 1, 2, 1, 19, 19, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/3dfeacd4-bea8-4c2e-820f-bf61f8053323.jpg?im_w=720', 19);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4f01dedf-ccfb-4d08-8ffb-77c3d6c08043.jpg?im_w=720', 19);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/894fb768-578d-4c74-b55c-a8f2b391eeea.jpg?im_w=720', 19);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/54aa4fd6-648e-4389-8caf-fd8807fb3c12.jpg?im_w=720', 19);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b225e782-ca50-4176-bde9-5f83386c26ef.jpg?im_w=720', 19);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8fca6e8a-036f-4eb2-9ed3-433aaa9c05ec.jpg?im_w=720', 19);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/84dcee45-d1e4-4b6a-b4a6-c9bfe95f06e3.jpg?im_w=720', 19);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/82f03dff-c05d-4f86-8d0f-8c79e6c2a64c.jpg?im_w=720', 19);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/45b77d08-794d-4a03-a495-d597969e0bd4.jpg?im_w=720', 19);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/63ee0d96-9f13-4ff5-894b-ed552052f686.jpg?im_w=720', 19);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/249cc763-f0e4-48c8-a799-1a46ae0a55c7.jpg?im_w=720', 19);
insert into location(id, latitude, longitude, city_name)
values (20, 37.574, 127.02, '서울');
insert into review (id, star, review)
values (20, 4.5, 207);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (20, 'dmyk_"Droptop"', '종로구의 게스트용 별채 전체', 100000, '집 전체', 1, 2, 1, 20, 20, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/ccac8b08-61e4-4b55-9c32-c3addea2f744.jpg?im_w=720', 20);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a45d93af-79a3-4f8b-8661-a250114cb1ca.jpg?im_w=720', 20);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1e38f050-7748-4ced-a1d8-8a2fffa47150.jpg?im_w=720', 20);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7224d20e-47b8-41fc-a846-269f39a7dafa.jpg?im_w=720', 20);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/de76d307-84b3-4112-b6e7-45e5c9bc2fd7.jpg?im_w=720', 20);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/42d3c16a-7b2f-4b1c-8254-5c4d3ccd86da.jpg?im_w=720', 20);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0c0b815c-a02f-476f-ab3d-f9ba7d8eaa22.jpg?im_w=720', 20);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/56c85649-dfb4-447d-a098-cbd1771b853f.jpg?im_w=720', 20);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ef529dbe-a001-46ad-9fc2-658043ccd6e1.jpg?im_w=720', 20);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/deb99a2c-ddf4-4f3c-906d-be00da032b7e.jpg?im_w=720', 20);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7257539e-e61d-4cef-b775-a4462927191e.jpg?im_w=720', 20);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/649bc710-b304-4077-b1ab-688387a82ce8.jpg?im_w=720', 20);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/968ae0fd-ed14-4f9e-9d7b-e4f4b31e5ee3.jpg?im_w=720', 20);
insert into location(id, latitude, longitude, city_name)
values (21, 37.579, 127.023, '서울');
insert into review (id, star, review)
values (21, 0, 0);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (21, 'HOSTEL SEOUL - Single Room with a bathroom (301)', 'Sungin 2(i)-dong, Jongno-gu의 개인실', 95000, '개인실', 0, 1,
        1, 21, 21, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49658744/original/fe02bf3a-b99e-4c22-8f62-5f8fdb70556c.jpeg?im_w=720',
        21);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49507837/original/576cc5b7-8114-4466-9376-45c259780fd5.jpeg?im_w=720',
        21);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49507837/original/edd18b3e-ca0e-4e92-af7b-9119f279dce0.jpeg?im_w=720',
        21);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1b363415-58b7-4a1f-9d61-a2a6b10e3996.jpg?im_w=720', 21);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f6c93e58-9cb5-47e3-842b-b042c1894979.jpg?im_w=720', 21);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49239379/original/ac61924d-d7cd-4e71-b45c-ded668968e9c.jpeg?im_w=720',
        21);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49150712/original/c8e15eee-e1a0-4e91-912d-4bf2fca6860b.jpeg?im_w=720',
        21);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49131805/original/f40b5394-42b9-4e71-ab39-7593dee4d5aa.jpeg?im_w=720',
        21);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8012bdbf-e281-4fc8-b645-ef663143135d.jpg?im_w=720', 21);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/46bf7e9a-23dc-4174-864f-8967b7859175.jpg?im_w=720', 21);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/daf17c3d-3520-4103-8135-38fc6e6865aa.jpg?im_w=720', 21);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9f52c84f-e648-4208-916e-194e64ec48fa.jpg?im_w=720', 21);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ed01fcd7-a882-41e7-a5b2-662ba2a36938.jpg?im_w=720', 21);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a0528d71-018f-45c1-bee9-d38b5dcf29a6.jpg?im_w=720', 21);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c5264df5-f483-4021-96dd-ef85f184a7c2.jpg?im_w=720', 21);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/45d9e8ca-1d15-4dda-b4a7-02696cbce714.jpg?im_w=720', 21);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49150712/original/4bdb422a-949b-47d8-85d7-eac0dc2b8caa.jpeg?im_w=720',
        21);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49150712/original/190c7b35-04b1-4519-a66d-e217530f7bdd.jpeg?im_w=720',
        21);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49150712/original/b808fea9-3f14-4fd8-881e-79e55fa6ce34.jpeg?im_w=720',
        21);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49239379/original/a2e2dabd-49a6-4862-84f8-b79dd38d9605.jpeg?im_w=720',
        21);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49239379/original/ee47672b-9a15-40ce-9e79-eed71d07619b.jpeg?im_w=720',
        21);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c4517a03-8adf-403b-8896-a51124df5806.jpg?im_w=720', 21);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49658744/original/82a32b30-7041-422e-af9f-fcb4919cdd8e.jpeg?im_w=720',
        21);
insert into location(id, latitude, longitude, city_name)
values (22, 37.569, 126.99, '서울');
insert into review (id, star, review)
values (22, 5, 28);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (22, '종로3가역 종각역 국일관 YBM어학원근처 가성비 갑 숙소 -  1', '종로구의 개인실', 95000, '개인실', 1, 1, 1, 22, 22, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/348aad06-6b03-4725-b37d-6adb38eac034.jpg?im_w=720', 22);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8473d030-4134-48f7-87ff-960810b69e95.jpg?im_w=720', 22);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c8678e29-5441-4d81-983e-d124491d6661.jpg?im_w=720', 22);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f50e87d9-53f2-41f2-9fa2-9fc7bc87fad6.jpg?im_w=720', 22);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d31186ab-16b4-46b1-8290-07021ca317c1.jpg?im_w=720', 22);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3d4b9bda-b9bd-4720-a770-a3a0a475e45f.jpg?im_w=720', 22);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d14b0e31-d3fa-4fa2-b242-ae013a355081.jpg?im_w=720', 22);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/be45b09b-b08e-4b79-9dfc-f08f6e14bbea.jpg?im_w=720', 22);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6fa21f23-bb75-43ee-a359-fafea67a3271.jpg?im_w=720', 22);
insert into location(id, latitude, longitude, city_name)
values (23, 37.561, 126.921, '서울');
insert into review (id, star, review)
values (23, 4.5, 168);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (23, 'Serene Stay @Private 1 @Queen Bed', '마포구의 개인실', 95000, '개인실', 1, 2, 1, 23, 23, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/a3912086-e317-4913-ab09-fb38e2737ee5.jpg?im_w=720', 23);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bad900a2-588f-49c4-9446-7c791bcda4d8.jpg?im_w=720', 23);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/17fd647e-4db6-4bfb-904d-c14d469805f3.jpg?im_w=720', 23);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4ddfc469-4313-4b84-b637-c3f9cb0d48c4.jpg?im_w=720', 23);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/45e1d1b4-030b-468e-bcf9-eca13cb7857a.jpg?im_w=720', 23);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/67cfc7b8-9204-47b0-a401-eda08e517253.jpg?im_w=720', 23);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d3193e6d-a460-4ff3-b721-555048218929.jpg?im_w=720', 23);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f43fa0f7-182b-4cf0-9268-fc7e1ed28b58.jpg?im_w=720', 23);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7c2b2ed8-ee1a-43a8-ac48-5dfde25be2ef.jpg?im_w=720', 23);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8a5ca030-6fda-454a-b48e-3acdf69992b8.jpg?im_w=720', 23);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/faf76ec7-0e44-4f98-9ecf-69c0b358600d.jpg?im_w=720', 23);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7d3d1a1b-df6f-42f1-98f9-46c696e6e59f.jpg?im_w=720', 23);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a6e78f9b-6c32-459e-8d84-c544e117a6ad.jpg?im_w=720', 23);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/96f6f579-0372-48d5-b1b5-97ba6b60132d.jpg?im_w=720', 23);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ccc93dbf-4902-48ec-a10e-56d51c4f0cdb.jpg?im_w=720', 23);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/88500b7b-78b9-4a78-a265-c024bb1c885e.jpg?im_w=720', 23);
insert into location(id, latitude, longitude, city_name)
values (24, 37.562, 126.984, '서울');
insert into review (id, star, review)
values (24, 4.5, 55);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (24, '♥Promotion♥T4 프라이빗 모임 + 감성유닛 in 명동 (방역OK, 소독ing)', 'Myeong-dong, Jung-gu의 레지던스 전체', 90000, '집 전체', 2, 3, 1,
        24, 24, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb',
        'https://a0.muscache.com/im/pictures/miso/Hosting-40583316/original/c6274a25-c531-4e2b-95fd-d453d45f8cbe.jpeg?im_w=720',
        24);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-40583316/original/22a5b9e4-761b-473b-8c44-0b16d3ccdb06.jpeg?im_w=720',
        24);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-40583316/original/cf7eb19e-2117-44b8-9b99-b5eb297e749f.jpeg?im_w=720',
        24);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-40583316/original/bf266984-ce89-416a-9145-cf0edc58796a.jpeg?im_w=720',
        24);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-40583316/original/09410c78-382e-4221-a2fa-358ebf1c537c.jpeg?im_w=720',
        24);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-40583316/original/6fed25fe-350e-4a61-b4a8-12d3d1c4d5c4.jpeg?im_w=720',
        24);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-40583316/original/a7c370a8-a8c2-4117-ada5-0256428b1ae8.jpeg?im_w=720',
        24);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/284aa81c-d3db-4b8e-8285-dcdeb5dc72b5.jpg?im_w=720', 24);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6d747b3b-6b65-4a7e-9ada-508a7c37379b.jpg?im_w=720', 24);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/900c8a5a-759a-4eda-99d7-9905ac0c3fe4.jpg?im_w=720', 24);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-40583316/original/2075da0d-6ba3-48fd-ad95-f2b4840a28f3.jpeg?im_w=720',
        24);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c02b4076-dd58-454f-866a-10b7db39341d.jpg?im_w=720', 24);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-40583316/original/656f0a69-17ac-45ec-ac32-2e40e7a6f8be.jpeg?im_w=720',
        24);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/001cfb15-774e-4019-afbc-76e4e4a3c5dd.jpg?im_w=720', 24);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/078726e5-a21b-4941-a6dd-d6cd55787be9.jpg?im_w=720', 24);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-40583316/original/c3b99160-fc83-41c2-99e9-b001a68dc868.jpeg?im_w=720',
        24);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-40583316/original/ed0fb902-ef8b-484d-8b69-d729f024addb.jpeg?im_w=720',
        24);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-40583316/original/6eed6f55-171a-4da4-8f3c-d133d897bf0f.jpeg?im_w=720',
        24);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-40583316/original/ee6fd50d-3815-4ec3-b95a-03ef36b7b0cc.jpeg?im_w=720',
        24);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-40583316/original/633ddbf5-d485-473b-87d4-2beb1ae24a2f.jpeg?im_w=720',
        24);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-40583316/original/0d0bab1c-f2d7-4f7a-b369-314612d59ff2.jpeg?im_w=720',
        24);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/74b0bb68-d353-43ae-896d-622544879aed.jpg?im_w=720', 24);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-40583316/original/9c9a2760-f99c-4c9d-a92b-95b8ebbafab9.jpeg?im_w=720',
        24);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-40583316/original/4ea8a8b4-cc2a-4dd2-9f1f-ef50c59f39b9.jpeg?im_w=720',
        24);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8927372d-0843-47e9-af27-f112f98b8de1.jpg?im_w=720', 24);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/438e6a31-24b4-4f76-b328-d3d046ab7c14.jpg?im_w=720', 24);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-40583316/original/6581c92b-60a3-4acb-b8ce-6e1c529932b8.jpeg?im_w=720',
        24);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-40583316/original/c22b9cc7-e505-4f33-8987-4fa97d430ee7.jpeg?im_w=720',
        24);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-40583316/original/b68f9603-04ef-4b07-94c8-31969021bb9a.jpeg?im_w=720',
        24);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-40583316/original/6a74a666-e37d-49c1-afdc-c521e254177a.jpeg?im_w=720',
        24);
insert into location(id, latitude, longitude, city_name)
values (25, 37.578, 126.992, '서울');
insert into review (id, star, review)
values (25, 5, 22);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (25, '익선동의 핫플❤️ 감성적인 곳에서 추억 쌓으시기를 바라며^^ 넷플릭스 가능!!', 'Waryong-dong, Jongno-gu의 부티크 호텔의 객실', 100000, '개인실', 1, 2,
        1, 25, 25, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/99e509ad-87ca-4613-9270-a958f4a05e5e.jpg?im_w=720', 25);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/604eb017-5620-4b59-a040-0327fa8006ff.jpg?im_w=720', 25);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f0345a79-1369-4002-ac1d-9b16b977dbfc.jpg?im_w=720', 25);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f6c0e74a-9953-4d7d-9650-99dfe8fb718c.jpg?im_w=720', 25);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/07a31447-31bb-4f3c-88bd-6dd5f498b5d4.jpg?im_w=720', 25);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a4c27be6-a845-4b78-8801-ed131efe9526.jpg?im_w=720', 25);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/012fed7f-1afd-4636-a3c8-daed4b2bb77a.jpg?im_w=720', 25);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e69b470c-7aa5-4953-9a30-d9f8e80e6067.jpg?im_w=720', 25);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1b611825-1fd5-471f-9a3f-d7ccbeeae5a2.jpg?im_w=720', 25);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fe079794-3817-4532-a6f8-e2181917658a.jpg?im_w=720', 25);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/75d982b8-4f39-4827-b306-48e2273e4071.jpg?im_w=720', 25);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/90ba5fa1-48dc-44be-9aab-abd83bc3f4de.jpg?im_w=720', 25);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9eaa321a-89fe-47d9-8be5-eb72a78eac3f.jpg?im_w=720', 25);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f5cfcdeb-2386-4cb7-9c7d-bf6df5c72eb2.jpg?im_w=720', 25);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d9352916-4d14-4d39-b08e-e24f2886cc3a.jpg?im_w=720', 25);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f3368a21-8efe-49b4-89f5-cccf165a2a14.jpg?im_w=720', 25);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/33289afe-877e-46b8-94b1-b1f5a934c9b7.jpg?im_w=720', 25);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/84713848-c384-4c93-88d7-527da5484f5c.jpg?im_w=720', 25);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c1a35b17-ea20-49ba-b8e0-bd1a3cbddf81.jpg?im_w=720', 25);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/202a9f09-f316-4294-89b0-015d21974f08.jpg?im_w=720', 25);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/334ade29-6cf5-4076-8ab6-626dff3675e8.jpg?im_w=720', 25);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/62d4a0b2-78bb-4882-8e89-747462e066d0.jpg?im_w=720', 25);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0aad8c2c-16b8-4a57-bc3f-c3e6f617dd54.jpg?im_w=720', 25);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/931a1cb3-f04f-4f4e-99e2-21f1fb7d714a.jpg?im_w=720', 25);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fcb3c6d1-385f-412a-aa15-659ae0afbab3.jpg?im_w=720', 25);
insert into location(id, latitude, longitude, city_name)
values (26, 37.556, 126.93, '서울');
insert into review (id, star, review)
values (26, 5, 14);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (26, 'S2) Cozy, Affordable, 3min from Station', 'Seogyo-dong, Mapo-gu의 개인실', 90000, '개인실', 2, 2, 1, 26, 26, 1,
        1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/69622bdb-9cf3-484b-93ec-ba883cc78add.jpg?im_w=720', 26);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fc8d9539-ff98-496b-9b2d-5760d35a404b.jpg?im_w=720', 26);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2c2aae99-0b89-41a0-ad25-9959c294abd4.jpg?im_w=720', 26);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/842a00e6-8b80-46d1-9921-2ab0ae116d67.jpg?im_w=720', 26);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/886fe4f6-638e-44ee-85c9-cd9b499b20c8.jpg?im_w=720', 26);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6c48e67f-bc88-43f5-b96a-0a7a9dbb3ae3.jpg?im_w=720', 26);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/95b29763-76bd-4676-a057-c177e64e3e29.jpg?im_w=720', 26);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/557337ab-2b6f-459f-8793-661ec118f645.jpg?im_w=720', 26);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c29fa700-803a-4008-9c4d-761723107fba.jpg?im_w=720', 26);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a76f2b9c-844d-4499-a846-f5471e31eebf.jpg?im_w=720', 26);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c01d247b-ec3e-4332-9f51-daf5ad5c8f57.jpg?im_w=720', 26);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a8714038-5591-4081-9835-8f50e3859ebe.jpg?im_w=720', 26);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0f6ab66c-2098-4e4a-bdb4-ac8815e2c513.jpg?im_w=720', 26);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3c55a55e-c0cb-418c-9786-4d99e4d0e1c4.jpg?im_w=720', 26);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2b9ffd60-faf3-469c-8d51-d976b02c7656.jpg?im_w=720', 26);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/de931ac9-2c31-403e-98c3-8979212a05d7.jpg?im_w=720', 26);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f64bc2ca-21e7-4d97-9a81-3c7bd1dcb7ca.jpg?im_w=720', 26);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cbf8f71c-f4d8-4f57-83dc-68ec12d8fbf7.jpg?im_w=720', 26);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d59c6b70-08cd-4296-b4da-ca39580edd45.jpg?im_w=720', 26);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9208dac2-57a6-499b-b37d-4eee51f7bcdd.jpg?im_w=720', 26);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/46c1ecf5-fbcd-4e63-9933-2c6c5f134185.jpg?im_w=720', 26);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7ec5bed6-c122-4c3d-ac04-951ae616823f.jpg?im_w=720', 26);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6318c740-9647-4e7d-9245-04f087f5d8a0.jpg?im_w=720', 26);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/812cafba-423f-4b45-b002-ca5f582def5e.jpg?im_w=720', 26);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/259e5e2d-8c2d-4790-8774-b4ce23ef1d34.jpg?im_w=720', 26);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cc794497-6705-4c9f-8ce5-79be394ea4f2.jpg?im_w=720', 26);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2ee56775-7c42-4b15-b675-eff621d16a22.jpg?im_w=720', 26);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d9ecd736-ddc0-442c-b1c6-87c1fb47d66c.jpg?im_w=720', 26);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b769f4e8-c4fc-40db-b768-aeab5c743ef2.jpg?im_w=720', 26);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bf65c0f8-bdb1-4d5e-aec7-524dcc9206b5.jpg?im_w=720', 26);
insert into location(id, latitude, longitude, city_name)
values (27, 37.589, 126.994, '서울');
insert into review (id, star, review)
values (27, 5, 11);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (27, '🏡조용깨끗한 가정집 여성1인룸1개🏡 /주방, 욕실 호스트와 공동사용/혜화역인근', 'Myeongnyun 3(sam)ga-dong, Jongno-gu의 개인실', 100000, '개인실',
        1, 1, 1, 27, 27, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/a37fba6c-34f8-49a6-b8ab-130abd67125b.jpg?im_w=720', 27);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ba1e53cc-3c08-4572-9712-923a8598b616.jpg?im_w=720', 27);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d362bd9e-85e4-4730-be05-0ba168652cf5.jpg?im_w=720', 27);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6a49e1f1-a4b7-42dc-9580-a09fb7c4fd00.jpg?im_w=720', 27);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5726b97e-e7ba-49cd-936b-91283eff401f.jpg?im_w=720', 27);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/65735a79-79e8-4577-b753-947d53448f7b.jpg?im_w=720', 27);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6183a865-d894-4d40-a6fe-6d6008a9e91b.jpg?im_w=720', 27);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2aa45f3d-718f-4b6c-9228-68cee1e89917.jpg?im_w=720', 27);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/45aa5c57-7973-4d6f-afca-9da7bb94aaeb.jpg?im_w=720', 27);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/10ff9a0b-1d6d-4326-a486-05c9192f314f.jpg?im_w=720', 27);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7349355a-880f-4ec6-8a0f-ae59ff7d8bf0.jpg?im_w=720', 27);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7fcfae28-478a-43d2-88ce-533783ec9dc5.jpg?im_w=720', 27);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/91812f64-6504-4ff4-8a83-80c080b8c0ba.jpg?im_w=720', 27);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/66127aa8-2522-4519-a901-f90460e41df6.jpg?im_w=720', 27);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/18f53429-5353-4676-8b14-fc50cebaf010.jpg?im_w=720', 27);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/70026b38-1cc6-4f85-90ca-9b4948d55a0f.jpg?im_w=720', 27);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1cdd60dd-d22b-4720-b888-57a607222286.jpg?im_w=720', 27);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/84bbb73c-7d39-409c-a46f-69df1db01a47.jpg?im_w=720', 27);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e6e59654-8122-449b-aaca-5583d006d372.jpg?im_w=720', 27);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a6fb6d84-9cec-47f0-9b71-852ea9355cda.jpg?im_w=720', 27);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/19848454-4c71-4aaa-9916-7f23ebbf3c98.jpg?im_w=720', 27);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/620a09cc-ac44-4fad-a1b5-af9b2505a834.jpg?im_w=720', 27);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4ee53e2f-960c-4557-9091-6d986bc751fc.jpg?im_w=720', 27);
insert into location(id, latitude, longitude, city_name)
values (28, 37.557, 126.917, '서울');
insert into review (id, star, review)
values (28, 5, 39);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (28, '홍대의 당신의 아름다운 장기 렌탈집! (+ wifi에그)', '마포구의 아파트 전체', 100000, '집 전체', 2, 3, 1, 28, 28, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/ccf7ecef-2801-4b8e-9a57-bf4b0d1dceb5.jpg?im_w=720', 28);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7ec18bca-54b8-4748-98cb-c527c8c61514.jpg?im_w=720', 28);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d9a6e3d2-41e1-4128-a820-a46f31d5b13d.jpg?im_w=720', 28);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/754f6294-28f3-46c6-b070-7a65aeac00f3.jpg?im_w=720', 28);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fedbaa09-864a-401a-89dc-ff3e9ea1f8b4.jpg?im_w=720', 28);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0d242fc1-3f44-47ba-a35c-961f3a9f6c8b.jpg?im_w=720', 28);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/81861874/f6055795_original.jpg?im_w=720', 28);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/58ac6632-4fc2-4ef5-9d30-146954a58dac.jpg?im_w=720', 28);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e8885055-1728-43d5-9ae9-1fa09d3267f7.jpg?im_w=720', 28);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d6758e59-cd01-4261-bc7b-f737a4a1372f.jpg?im_w=720', 28);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cefaffba-4d3c-4b2a-b63f-7f7a959865c9.jpg?im_w=720', 28);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/29e1a8f0-2c99-418f-9c3e-facb1ca7aeda.jpg?im_w=720', 28);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a348b823-ac14-4550-b769-5f821e1ec3d0.jpg?im_w=720', 28);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0d0afb93-14f7-46bd-9a8a-21233ccb00d0.jpg?im_w=720', 28);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7a23d72e-04bc-4dfa-a942-98c9b270f651.jpg?im_w=720', 28);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7cfadaca-5a32-4fdf-b081-2c21644be0c2.jpg?im_w=720', 28);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ef319400-a283-42b2-969d-cb0d55fe93d7.jpg?im_w=720', 28);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5bcf8709-90f6-48ae-8ca2-67e1ab04afe8.jpg?im_w=720', 28);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/df0f9244-6f7d-4295-8ec7-0cd068d98b83.jpg?im_w=720', 28);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/82851701/9fa2d512_original.jpg?im_w=720', 28);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/83795705/88f3711d_original.jpg?im_w=720', 28);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/83632999/9b6f7025_original.jpg?im_w=720', 28);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b1cb8b0f-bb13-4257-b95d-0e50c15bea37.jpg?im_w=720', 28);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/83632839/7406e8b5_original.jpg?im_w=720', 28);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/81861993/ded807ce_original.jpg?im_w=720', 28);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/81aacbab-ac77-4299-9212-637ac47dab0f.jpg?im_w=720', 28);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/83632873/98df24e2_original.jpg?im_w=720', 28);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/81861911/8c62ed60_original.jpg?im_w=720', 28);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/82851738/5b628405_original.jpg?im_w=720', 28);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/82851435/d9112d65_original.jpg?im_w=720', 28);
insert into location(id, latitude, longitude, city_name)
values (29, 37.546, 127.072, '서울');
insert into review (id, star, review)
values (29, 0, 2);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (29, 'Welcome to my single private room and enjoy.', '광진구의 아파트 전체', 100000, '집 전체', 1, 1, 1, 29, 29, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/01f60a89-fd2a-4d53-9f36-9836731f7ba1.jpg?im_w=720', 29);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/922028e0-4968-427a-bd2c-9a32d58f2757.jpg?im_w=720', 29);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/12a43463-d2da-4399-88e2-9d124cb1d73d.jpg?im_w=720', 29);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4eb6cf39-2190-4beb-ad77-b57222437f65.jpg?im_w=720', 29);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e8e8efb8-4b82-4336-9e3c-d3f12cc9ba2c.jpg?im_w=720', 29);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e9b5e906-f53d-458e-908f-ca0db264890e.jpg?im_w=720', 29);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8149c9b7-7912-4924-900f-501ed7254460.jpg?im_w=720', 29);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4a9dbca8-bba9-4b43-9f83-da49437e6222.jpg?im_w=720', 29);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c32f964c-7775-4ac3-ac12-c67d98535d97.jpg?im_w=720', 29);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1eb04db8-2998-4318-853a-65974ae670a2.jpg?im_w=720', 29);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/68959a1b-a448-469d-bc07-8dc5d53c3dab.jpg?im_w=720', 29);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fbe71979-503d-4fb2-9ebd-df5706a90666.jpg?im_w=720', 29);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f782c36d-5469-4193-97ae-b7d013fbe85d.jpg?im_w=720', 29);
insert into location(id, latitude, longitude, city_name)
values (30, 37.553, 126.936, '서울');
insert into review (id, star, review)
values (30, 4, 27);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (30, '#13 Sinchon Sta 2mins, Hongdae 8mins Blue Mansion', '마포구의 집 전체', 100000, '집 전체', 1, 2, 1, 30, 30, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/8f70c7da-d63b-4e51-b0ae-a8738a6f3554.jpg?im_w=720', 30);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5714280c-9db7-456e-bee7-c6af2c923c9b.jpg?im_w=720', 30);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/356c5238-8223-4391-86c8-bf0a08c11cad.jpg?im_w=720', 30);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ba7933e1-1b53-4198-ad67-ad00281e254d.jpg?im_w=720', 30);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5583dbf1-3ed4-4b74-8243-db4ec8b3f019.jpg?im_w=720', 30);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4cb86ed3-3ddc-4698-a841-97b13008f2d7.jpg?im_w=720', 30);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/67b814f7-09b4-4442-88d8-0d0afffefa85.jpg?im_w=720', 30);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7ad1cb24-c85a-4677-ada0-66a232b9dec9.jpg?im_w=720', 30);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0e216793-47c6-4b9e-a93d-af5fc0e42819.jpg?im_w=720', 30);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0aae14aa-8b6f-4f9b-91b4-630e3de8597a.jpg?im_w=720', 30);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/46b25f6a-8faa-4ce7-8fa2-84b211d8f987.jpg?im_w=720', 30);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8bdc886e-c8b4-4c1b-aefd-0381403355e9.jpg?im_w=720', 30);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/71ea8b6c-7c9e-43ad-b846-e0e95523e63f.jpg?im_w=720', 30);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/17f9cdf4-ba57-4302-8c13-8b785a7d6582.jpg?im_w=720', 30);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2d8ce787-9d08-4f37-9b49-12ee4abaeab9.jpg?im_w=720', 30);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9dec23d7-4365-4c4d-9dde-f3b153276c8d.jpg?im_w=720', 30);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c8d18bc5-4722-4b4f-88a8-18d79ce4ca31.jpg?im_w=720', 30);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a953439a-f132-4db9-8179-3736ff91af31.jpg?im_w=720', 30);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bbda77b1-c4b6-4724-9d33-5d2b7f1a2dc5.jpg?im_w=720', 30);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/809872d6-13af-4922-a6ee-eec9d4be60b0.jpg?im_w=720', 30);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/48b9697a-134d-4b69-a39c-7009332a77d9.jpg?im_w=720', 30);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a81b99c2-63ba-41f7-847a-8a82bf080e4c.jpg?im_w=720', 30);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/645a4e6e-8bfb-41c1-b152-4891fae8c503.jpg?im_w=720', 30);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/27fbbc75-43cf-4368-b3b8-854d39194be4.jpg?im_w=720', 30);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/11786c35-9e43-496e-90b7-faebbb199d49.jpg?im_w=720', 30);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/32e30708-9e8e-4821-a7b2-26bd4cab6a50.jpg?im_w=720', 30);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/beddbff7-be6c-4bff-b06f-f114c2925fe6.jpg?im_w=720', 30);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/37b00858-98d9-45aa-9d28-148133fbe214.jpg?im_w=720', 30);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8d3c2409-fba2-46bd-bfaa-cca3eb64ee5b.jpg?im_w=720', 30);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/feab5424-6227-4e7a-b01b-f5c2d41ea63d.jpg?im_w=720', 30);
insert into location(id, latitude, longitude, city_name)
values (31, 37.576, 126.992, '서울');
insert into review (id, star, review)
values (31, 4.5, 18);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (31, '익선동의 깨끗한 신축 감성 숙소', 'Jongno 1(il).2(i).3(sam).4(sa), Jongno-gu의 부티크 호텔의 객실', 100000, '개인실', 1, 2, 1, 31,
        31, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/c6e9fbc1-b362-4c22-bbf3-b2d1bef42444.jpg?im_w=720', 31);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/94902fc1-88ba-4701-bc96-f157e798173c.jpg?im_w=720', 31);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c845ca8e-a4ac-48f8-8946-d85b26e1e052.jpg?im_w=720', 31);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/49fafce6-3826-4b5c-a399-e0320d4c1166.jpg?im_w=720', 31);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/250b53f6-4ae7-4c53-b433-b5eab3604d39.jpg?im_w=720', 31);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2f2cf5dc-07d3-449d-ab26-cf77b335b68d.jpg?im_w=720', 31);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ee4b00dc-4550-4f9d-b56e-0474c3e7e026.jpg?im_w=720', 31);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9dfa1a1c-a5c4-4d3e-9f15-b920630f84b1.jpg?im_w=720', 31);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c2c5bf92-a860-4145-a9e9-6a74631b7f01.jpg?im_w=720', 31);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/311dfed4-2ff6-4a62-9dc5-623727ccf6b0.jpg?im_w=720', 31);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/720e12a9-4afe-4dad-aaab-052915c62e6f.jpg?im_w=720', 31);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5424b5b8-bf81-4fe8-975c-570bc8a06de1.jpg?im_w=720', 31);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1149c380-1192-4826-87e4-8cf82c7c3800.jpg?im_w=720', 31);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/65c339ae-cf12-4570-87a3-d9edd4e3df7a.jpg?im_w=720', 31);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2eccb41e-d495-4a02-ac26-21f17147c136.jpg?im_w=720', 31);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/592b702e-518e-4fc7-8b70-15cce7046dca.jpg?im_w=720', 31);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5b372d1e-91ed-48e3-99b2-7fa9f9e17b8b.jpg?im_w=720', 31);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c5e82579-627c-45e2-aa59-8c0eeebc3a15.jpg?im_w=720', 31);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/99458c7b-2ed4-44d6-a17c-718553550585.jpg?im_w=720', 31);
insert into location(id, latitude, longitude, city_name)
values (32, 37.554, 126.934, '서울');
insert into review (id, star, review)
values (32, 4, 13);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (32, '#11 Sinchon Sta 2mins Hongdae 8mins Blue Mansion', '마포구의 집 전체', 100000, '집 전체', 1, 2, 1, 32, 32, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/a6b82df7-eb93-451a-8d7f-ebb7ee964fd9.jpg?im_w=720', 32);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d588d759-5900-4a61-9fa2-56f5538435cc.jpg?im_w=720', 32);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c359c5b8-70f5-464d-975e-63d557bc7b49.jpg?im_w=720', 32);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/89d6dd92-2441-406b-810b-9b7f50c4305e.jpg?im_w=720', 32);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/32e3f9fb-3159-4468-931e-b3084f7d6a6e.jpg?im_w=720', 32);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3c4185a8-7ab3-4b6b-8d19-b834245e640d.jpg?im_w=720', 32);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cc9a4f07-95e2-448e-af8b-38b6346bd0ad.jpg?im_w=720', 32);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/189d811b-00a5-4dc4-bd3e-64da48e9977b.jpg?im_w=720', 32);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dc974570-c285-4ade-bafa-e7415987e7b4.jpg?im_w=720', 32);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ed1f6b11-4242-49f6-883a-89ba0bbfee5c.jpg?im_w=720', 32);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c0583328-15ec-43a5-9b17-4604a3a1d30a.jpg?im_w=720', 32);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/69d076f7-cff9-4a70-a214-7a1546be7f6f.jpg?im_w=720', 32);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4c44df14-07de-434e-a10a-de1756a9960b.jpg?im_w=720', 32);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/244bd0d4-5e60-4510-a666-b4a6c830871d.jpg?im_w=720', 32);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9a957870-79e3-4a5f-aacb-6c10f322dada.jpg?im_w=720', 32);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/555853fb-c1b3-4879-85ea-9ebc21646ef5.jpg?im_w=720', 32);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9919d779-666f-4310-805f-4e2d0263a452.jpg?im_w=720', 32);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f7cc6932-59e5-4c1c-b4ab-a18049f28bbb.jpg?im_w=720', 32);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2d7f029e-66c2-4c5b-88b8-111a01751ebb.jpg?im_w=720', 32);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6d5e0500-25f7-497c-ab8b-421a6081a0ed.jpg?im_w=720', 32);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/71a9e49f-4534-4215-8742-b675430ac56a.jpg?im_w=720', 32);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/405eb05a-b810-457c-9e82-ab97447885e9.jpg?im_w=720', 32);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/137e9c87-e936-4743-9383-6115a9ec11d8.jpg?im_w=720', 32);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d3ae1975-fe0b-43a4-b0d6-b10f49f81c3e.jpg?im_w=720', 32);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/65e9d46a-1b3c-484c-aae5-523df871b4ea.jpg?im_w=720', 32);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/23dade06-739c-4ce2-9612-14ea590a6efe.jpg?im_w=720', 32);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9a2b55d8-6523-4b59-b2e7-46e27088a9e0.jpg?im_w=720', 32);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a16d9e39-92a7-49f0-aaea-8a18301c9fea.jpg?im_w=720', 32);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1a235cbf-7f13-4711-bc9e-ee2c4197ebe4.jpg?im_w=720', 32);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fb2c346c-c159-458a-917f-92846747c02e.jpg?im_w=720', 32);
insert into location(id, latitude, longitude, city_name)
values (33, 37.559, 126.943, '서울');
insert into review (id, star, review)
values (33, 5, 23);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (33, 'Near airport Seoul Sinchon  412 alicehouse', 'Daehyeon-dong, Seodaemun-gu의 개인실', 95000, '개인실', 1, 1, 1, 33,
        33, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41650874/original/3e7e61dd-0c82-4920-9e24-7e1b9e64a0c6.jpeg?im_w=720',
        33);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e59a0ec0-cd7d-43a4-95d4-05f53babd99f.jpg?im_w=720', 33);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41650874/original/195ae524-6cfe-41ce-aa54-061dc7b5e80b.jpeg?im_w=720',
        33);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41650874/original/ef16e535-beb5-467b-82e6-0f12f803cb2b.jpeg?im_w=720',
        33);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41650874/original/4ac40880-e089-4ff1-a9e4-ed4aa28c31a1.jpeg?im_w=720',
        33);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41650874/original/e501f2ff-5cb9-44f6-8301-ff055aff3713.jpeg?im_w=720',
        33);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41650874/original/027df28f-e3aa-4517-9baf-bbbf212a0de2.jpeg?im_w=720',
        33);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41650874/original/4bdbeae7-72e1-4988-bd6d-427d8dbde1f9.jpeg?im_w=720',
        33);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41650874/original/acf01b25-b0a3-4dcd-8ac9-84c626b368bc.jpeg?im_w=720',
        33);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41650874/original/0252c45b-263b-43c4-b717-67a895309fb7.jpeg?im_w=720',
        33);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41650874/original/92321fd2-c41a-4def-8063-46832aa81f9e.jpeg?im_w=720',
        33);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41650874/original/7d884a97-8323-4bfc-bc10-b0ca3c31f9f0.jpeg?im_w=720',
        33);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41650874/original/84563dce-c91c-4cd5-9c79-8701cd7d6ba0.jpeg?im_w=720',
        33);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41650874/original/468c31e3-2002-4b88-b90a-2c6c5a79b300.jpeg?im_w=720',
        33);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41650874/original/fe8ccebb-b7f2-4dc2-a7d7-e04a7a5a12af.jpeg?im_w=720',
        33);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41650874/original/e51a561b-92bd-48a1-aedd-681359943e8e.jpeg?im_w=720',
        33);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41650874/original/02549fc7-fe7a-4977-bc16-dc7bab1be915.jpeg?im_w=720',
        33);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41650874/original/3e671361-c16a-4c87-a2da-2f3d8f5b0174.jpeg?im_w=720',
        33);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-41650874/original/43abfc2e-d7eb-44aa-8977-3e3961ae2ff8.jpeg?im_w=720',
        33);
insert into location(id, latitude, longitude, city_name)
values (34, 37.554, 126.924, '서울');
insert into review (id, star, review)
values (34, 5, 6);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (34, '[OPEN]#루프탑캠핑#홍대입구역5분#Rooftop camping & BBQ party', 'Changjeon-dong, Mapo-gu의 집 전체', 100000, '집 전체', 0, 4,
        1, 34, 34, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49034435/original/3541ab34-dd5c-4c0b-995a-f17e454cba0e.jpeg?im_w=720',
        34);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49034435/original/cd3b41c9-930b-4c9e-a2ee-3c7f4110a50f.jpeg?im_w=720',
        34);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49034435/original/42f30b8e-83fd-4d5a-8bac-3e82e3aacbfe.jpeg?im_w=720',
        34);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5078d72d-3862-4335-9764-62ebfc16aa9b.jpg?im_w=720', 34);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49034435/original/d9fe4177-5461-494e-98ab-3e6468dd9779.jpeg?im_w=720',
        34);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49034435/original/f16c6e9e-b4c7-4820-96d7-29e096f5c1a8.jpeg?im_w=720',
        34);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49034435/original/ae4e1123-7952-4c24-99fd-9865a0df484c.jpeg?im_w=720',
        34);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49034435/original/105890ee-4eac-4a00-8c7c-6655c36c2b89.jpeg?im_w=720',
        34);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49034435/original/db3a96a4-28ea-4a0d-aabe-5512dc3ac697.jpeg?im_w=720',
        34);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49034435/original/8d6f8785-956d-424d-9713-a60470a4248a.jpeg?im_w=720',
        34);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49034435/original/f8150951-2f27-4ad5-b250-0c9b22ae568a.jpeg?im_w=720',
        34);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6f3370d5-c182-4f47-9597-a39b750a22f7.jpg?im_w=720', 34);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49034435/original/f95044cf-9c02-429a-80ee-ce2167be62aa.jpeg?im_w=720',
        34);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49034435/original/21d0b656-2b9f-4f4d-8a29-3f4fbea39084.jpeg?im_w=720',
        34);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0c415fc0-f600-4a21-b658-18ee9f7e6d91.jpg?im_w=720', 34);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3c8029ec-0abb-4552-bc1e-d81b89921d79.jpg?im_w=720', 34);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/03aa6fb9-6fcc-48a9-b6fd-6489209c6e1d.jpg?im_w=720', 34);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a22d5894-96a8-4fb1-8bf7-b233c15b65b8.jpg?im_w=720', 34);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6a80e606-dd4f-4e48-81bc-bbb342dc4e14.jpg?im_w=720', 34);
insert into location(id, latitude, longitude, city_name)
values (35, 37.543, 126.965, '서울');
insert into review (id, star, review)
values (35, 0, 0);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (35, '숙대 앞 안전하고 살기좋은 빌라 Calm&Mood-103(only woman)', '용산구의 개인실', 98000, '개인실', 1, 1, 3, 35, 35, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/193d722d-0ead-42d3-b773-ca8c94a66b66.jpg?im_w=720', 35);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/de648c69-6973-46b7-bb1c-0f81aa804e26.jpg?im_w=720', 35);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bd425d9f-4c1f-4057-9bae-c4d15ccb4f72.jpg?im_w=720', 35);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/12c2e6a5-4f4d-42b5-af98-fb30771cece8.jpg?im_w=720', 35);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ed0e03e1-c293-43f9-a993-7346928cb942.jpg?im_w=720', 35);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0e0d7bbc-b5e6-499d-9bfe-5e8dcb9e8a5c.jpg?im_w=720', 35);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/78e26989-6654-4d36-ae87-14ee6880d7ce.jpg?im_w=720', 35);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b2440602-b68e-4649-8718-02029971f31d.jpg?im_w=720', 35);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ddc9e3c8-2697-47d8-8f9a-7d7f57cd6e82.jpg?im_w=720', 35);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b5a62102-55b3-4c95-aa53-60706cfb49a3.jpg?im_w=720', 35);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/56051203-88da-447f-bf77-77589475703d.jpg?im_w=720', 35);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c9f761f9-53ea-463a-8087-98a2d7112509.jpg?im_w=720', 35);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2766c4ed-a69e-4f2f-8c7e-28c5dc7f38cd.jpg?im_w=720', 35);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/38678970-0015-4c66-b857-5a9ca4bf6544.jpg?im_w=720', 35);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cd5f1789-87c5-4803-9c1d-63ad282138af.jpg?im_w=720', 35);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3762b0b1-e6a1-4d75-a240-52d0b1ac400b.jpg?im_w=720', 35);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/269678b1-6022-4110-aafe-a0e7cec8c037.jpg?im_w=720', 35);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ada13521-c5f4-414e-9058-0946810d3d13.jpg?im_w=720', 35);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/432f7025-88da-403c-8f35-8d17d666c842.jpg?im_w=720', 35);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ac6340ce-4a02-4abf-b2ab-1fd6ef09796d.jpg?im_w=720', 35);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/14119386-2a1e-4bf5-a6c7-039d49025d39.jpg?im_w=720', 35);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bdb2e90b-9a57-4bd7-8384-ec420f5279c2.jpg?im_w=720', 35);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a4bac3c8-6a16-4405-9306-7c802a450f76.jpg?im_w=720', 35);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/87bf85ab-6923-43df-b25b-2ce3e2b47e8e.jpg?im_w=720', 35);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e1c45cf2-cf6c-4eb6-91fd-9cba3b2740d5.jpg?im_w=720', 35);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/32605461-45b9-4586-a980-e5b30b303ace.jpg?im_w=720', 35);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e620c818-dc3a-46b2-b725-dfa4bd3679f7.jpg?im_w=720', 35);
insert into location(id, latitude, longitude, city_name)
values (36, 37.582, 126.97, '서울');
insert into review (id, star, review)
values (36, 4.5, 52);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (36, '경복궁 5분, 통인시장 3분 서촌숙소', 'Cheongunhyoja-dong, Jongno-gu의 타운하우스 전체', 100000, '집 전체', 2, 2, 1, 36, 36, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/a154f4c2-1707-44d1-acfe-f1be17f64320.jpg?im_w=720', 36);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/87b4fa4b-520b-4ba0-a00e-f4c87dcf84da.jpg?im_w=720', 36);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6359c317-ef24-43b0-b0cf-9b7bf9e7ba8c.jpg?im_w=720', 36);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f4c825e3-3521-4d2d-bab1-3a9e4994212f.jpg?im_w=720', 36);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/69efc2c2-3d5d-4217-b9cb-059556ed51d1.jpg?im_w=720', 36);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9e255e68-502f-4a0f-af47-fe6091dce5c5.jpg?im_w=720', 36);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f6259950-7a3f-4380-8f9e-2aceb708bbbb.jpg?im_w=720', 36);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d14f5a01-614f-4abb-a399-914977797852.jpg?im_w=720', 36);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d71aa6ee-2fd7-4d7d-adfc-d37e9b4e6616.jpg?im_w=720', 36);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/23b69793-c9d8-4d98-8fb4-687bea4bc01a.jpg?im_w=720', 36);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2bae2cc9-1b43-4d57-8a3e-271f615bcc12.jpg?im_w=720', 36);
insert into location(id, latitude, longitude, city_name)
values (37, 37.562, 126.985, '서울');
insert into review (id, star, review)
values (37, 5, 4);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (37, '딱 좋은 나홀로 객실 ( 게스트하우스,호스텔)', 'Myeong-dong, Jung-gu의 개인실', 90000, '개인실', 1, 1, 1, 37, 37, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/deef2366-4579-445a-b002-384e302d4bfd.jpg?im_w=720', 37);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4a025c99-cd56-4b1e-b9b7-0fd0b8b901c1.jpg?im_w=720', 37);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d7f5250c-f918-47a6-9659-2d0c5679f944.jpg?im_w=720', 37);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9b189a6c-22d6-45b7-a929-27d3f26dc8c6.jpg?im_w=720', 37);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a8ebd8a7-1a11-47cd-aa37-74ed32b0d509.jpg?im_w=720', 37);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/92482848-7582-4750-ae50-45019c5af1a2.jpg?im_w=720', 37);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0f783735-c2c1-4bd4-96f6-2933b750949b.jpg?im_w=720', 37);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f1139232-7967-4ccb-aedf-a3b2fa543b60.jpg?im_w=720', 37);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3bae5ff9-dd29-4a84-86f3-ccdbff97ad7f.jpg?im_w=720', 37);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d914cec8-8b9e-4bcb-88f5-6d25a0e5ebb0.jpg?im_w=720', 37);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d36a633e-addc-4bf2-876b-b7c468294f1e.jpg?im_w=720', 37);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/737d0367-35cd-4c7d-b64a-b4cec376e9e8.jpg?im_w=720', 37);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f1bddbdb-14d8-4c87-90d4-07e4f663c634.jpg?im_w=720', 37);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/18aa63d9-15e4-4b60-a3c3-951f32bfa09b.jpg?im_w=720', 37);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/adb7593a-9566-4f02-83ad-6e9a39cd2d9f.jpg?im_w=720', 37);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/90ebdae0-2496-418b-8ab5-3cbf1d1548b2.jpg?im_w=720', 37);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7640fbe3-30f9-4996-8d2b-dd0577bd22a4.jpg?im_w=720', 37);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2e01a55c-5c6b-4a47-b79b-17e509c74b6b.jpg?im_w=720', 37);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/82cb57e1-29a7-4bc7-a6ab-99ebf7968435.jpg?im_w=720', 37);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9779b7b4-8395-4ec5-ad2d-7d69a77651d8.jpg?im_w=720', 37);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/398164cd-6b02-4bed-9e0a-8bd5367a9a9d.jpg?im_w=720', 37);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/96cd2f0d-09ce-4848-84af-e922c01167bd.jpg?im_w=720', 37);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bbe02d6a-f334-4aee-9392-c1e010ff483e.jpg?im_w=720', 37);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ff74f74f-0423-4e33-820b-eee451d0b52f.jpg?im_w=720', 37);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/57bfbb27-f427-4150-a413-a10d6394096f.jpg?im_w=720', 37);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4d612d12-5b4e-463c-a42b-afa0a72e0518.jpg?im_w=720', 37);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2c973d2c-84fb-4523-b74e-a3decc74abd3.jpg?im_w=720', 37);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/626ec57e-4001-4928-ab11-9709dc29945b.jpg?im_w=720', 37);
insert into location(id, latitude, longitude, city_name)
values (38, 37.561, 126.921, '서울');
insert into review (id, star, review)
values (38, 5, 28);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (38, 'The Blossom in Hongdae #301', 'Yeonnam-dong, Mapo-gu의 개인실', 90000, '개인실', 1, 1, 1, 38, 38, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/c9190324-646a-438f-a1bf-2ef957f515a2.jpg?im_w=720', 38);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/703a7d07-c934-4bec-b9dc-066a4cdc4641.jpg?im_w=720', 38);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c7297f52-d8a7-4d94-afeb-b2fd0973cb21.jpg?im_w=720', 38);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/67fc500f-467b-404b-a9e8-1d546324c1eb.jpg?im_w=720', 38);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9816d9f7-dd97-4e91-9e10-ed8d92beb7f2.jpg?im_w=720', 38);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0d819675-4430-45e7-b87f-63c8c61a4108.jpg?im_w=720', 38);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c1125d17-838a-4337-99ec-200aa66120e8.jpg?im_w=720', 38);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/87364e55-b497-431f-b424-2888c5b29b53.jpg?im_w=720', 38);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bcbab8aa-ce89-4dec-bab1-f6653d410650.jpg?im_w=720', 38);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a699fb58-9b57-4d7b-ae54-68bc25d1c583.jpg?im_w=720', 38);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/602444f5-f2c5-4274-ac9c-4a00d4025098.jpg?im_w=720', 38);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b9bc500c-ad8b-4020-b435-30f8e8ded797.jpg?im_w=720', 38);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/503d24c4-2059-42a2-bf5e-e7948a911e32.jpg?im_w=720', 38);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9914760b-22f1-41c9-85f9-ad182f695511.jpg?im_w=720', 38);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3b3491f9-2664-4e65-91d9-a286b3b10016.jpg?im_w=720', 38);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6850324f-2319-4ffa-b637-ba33f887e8b2.jpg?im_w=720', 38);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9e2247ab-0f3e-42e6-9739-164f9c24ce8d.jpg?im_w=720', 38);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d8e7b2ca-9418-48af-9470-d297183d1ad4.jpg?im_w=720', 38);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b44e59fc-e8aa-4f01-94f6-00321e8b3a22.jpg?im_w=720', 38);
insert into location(id, latitude, longitude, city_name)
values (39, 37.591, 127.012, '서울');
insert into review (id, star, review)
values (39, 5, 98);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (39, 'Kevins home 3 (For one person.)', '성북구의 아파트 전체', 95000, '집 전체', 1, 1, 1, 39, 39, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/2afd6b49-159e-436b-893d-498bcaa4350e.jpg?im_w=720', 39);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/56ac81ff-433c-4e95-92d2-9ebd859af4e3.jpg?im_w=720', 39);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/82aa0743-2720-44b2-be4f-0f8aec95dfa3.jpg?im_w=720', 39);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/113f6534-22a5-4923-845f-2e8a609e51ee.jpg?im_w=720', 39);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a56d3dfd-df88-40c6-acab-f3826ea49c0c.jpg?im_w=720', 39);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2515f275-0e7d-49fe-a911-20c205b2588b.jpg?im_w=720', 39);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c10829b3-73ef-4528-b505-f587d8db3415.jpg?im_w=720', 39);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/90dc666c-0fe2-42bc-9000-6ea143b860a1.jpg?im_w=720', 39);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9356effc-805a-4490-ad11-0e84ae8986ba.jpg?im_w=720', 39);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1c0b32de-1888-43df-b560-e90a7bc7600f.jpg?im_w=720', 39);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4af05440-2e74-49b9-9317-c9bbab66eea8.jpg?im_w=720', 39);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a082282d-7d68-4690-b2cf-4487acbbcd26.jpg?im_w=720', 39);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e503002a-c016-446a-b97d-dee33ee57f56.jpg?im_w=720', 39);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6c4e2cc4-d943-447d-a701-a31d82178548.jpg?im_w=720', 39);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b2855b7d-b5b2-43d8-9dc2-afa2b7717303.jpg?im_w=720', 39);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f724c446-6e0d-49cd-8a0f-dc11851b8c8e.jpg?im_w=720', 39);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d829dc41-9a33-4fa2-99bc-1ee87884112e.jpg?im_w=720', 39);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5b6af1cc-39c1-4875-b511-70c1cbd8b939.jpg?im_w=720', 39);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/61e44bb3-0981-4f1e-97d4-4362faf45941.jpg?im_w=720', 39);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6272a8c3-6c90-4ba4-bcb6-62dba2a3804c.jpg?im_w=720', 39);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d8bcf637-0e48-4c98-a569-8ba7e0638cd6.jpg?im_w=720', 39);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/437ac739-1b25-4df8-bd49-395345e1bf66.jpg?im_w=720', 39);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9916b53f-61f6-464b-bf2b-6e0c15c7f44d.jpg?im_w=720', 39);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b1cec547-4a36-4636-ad53-01bd796efe6f.jpg?im_w=720', 39);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/42d5bba2-a30b-47fb-a3c5-c2e4a1700d2a.jpg?im_w=720', 39);
insert into location(id, latitude, longitude, city_name)
values (40, 37.58, 127.005, '서울');
insert into review (id, star, review)
values (40, 4.5, 55);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (40, '대학로 Mins House!!401',
        'Ihwa-dong, Jongno-gu의 게스트용 별채 전체', 100000, '집 전체', 1, 2, 0, 40, 40, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/ce32c273-7ce6-49de-bd79-2413fcae84d5.jpg?im_w=720', 40);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8d959e6d-c7aa-4979-bbf4-3f9d65993d34.jpg?im_w=720', 40);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d9546211-7a66-4e39-a1b2-6d180db71bf4.jpg?im_w=720', 40);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f55e4d2b-090a-4bad-a3fc-10509a60bebd.jpg?im_w=720', 40);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6f0d7027-8954-4f7f-b6e9-4c161b3b5af3.jpg?im_w=720', 40);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d0bce30d-e764-4b8e-bb00-e93cb80c4b53.jpg?im_w=720', 40);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ce1396c6-3f63-41ff-8abd-a573188c7301.jpg?im_w=720', 40);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/75a1e008-0cd9-46a4-9268-eb1d01ab245f.jpg?im_w=720', 40);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b7cd7616-4ed9-44f3-ae83-9d0a4843ac15.jpg?im_w=720', 40);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3682c1be-96e8-4851-931e-c1aef17f89b2.jpg?im_w=720', 40);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/22b5d913-dcd4-4819-888e-0d23372deeae.jpg?im_w=720', 40);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5986b5a1-50a9-411d-a259-f78d033ac028.jpg?im_w=720', 40);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3b5a4b4b-3b9b-4fe7-ad6c-f63cc99d9187.jpg?im_w=720', 40);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c274dc07-194f-410c-ad38-e5e1ae2803bb.jpg?im_w=720', 40);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6587aec6-88ed-478e-bf95-973465ed111a.jpg?im_w=720', 40);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a5fcaf77-6003-432e-8dfe-cdcd48fa71c5.jpg?im_w=720', 40);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/926e2437-dad9-43c5-8c2e-f7efec310314.jpg?im_w=720', 40);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1569248f-01a1-406e-8ad3-8dfb1780a7cf.jpg?im_w=720', 40);
insert into location(id, latitude, longitude, city_name)
values (41, 37.575, 127.02, '서울');
insert into review (id, star, review)
values (41, 5, 194);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (41, 'dmyk_"Trois"', '종로구의 게스트용 별채 전체', 100000, '집 전체', 1, 2, 1, 41, 41, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/c32e84f8-77c4-442c-8d11-566835f3412c.jpg?im_w=720', 41);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0e2f35b2-afff-4247-8da7-74f612be0fd7.jpg?im_w=720', 41);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4c904049-898d-4fe0-b35e-56bb0c345050.jpg?im_w=720', 41);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9f2900fd-d865-4dfe-95a2-2b862ec6024d.jpg?im_w=720', 41);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a771881a-656c-42a4-8bfc-b370f559f6a3.jpg?im_w=720', 41);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d1a01679-7adc-4a5c-b92c-c76e6ad563ab.jpg?im_w=720', 41);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5668c52b-fed9-4c05-b7ad-0572388959c3.jpg?im_w=720', 41);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/771f5064-0b6d-4544-acae-b5c05a0c26ad.jpg?im_w=720', 41);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2091ff18-9473-44fa-8bbd-ec863951f899.jpg?im_w=720', 41);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9dd633fc-d961-426b-8644-32d680a86b59.jpg?im_w=720', 41);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/386977ec-3453-4e01-b48a-fa489cb95b9b.jpg?im_w=720', 41);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/89e9e4ef-2d1e-4ca7-b27a-1d237d4f1007.jpg?im_w=720', 41);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e50589b1-ef91-428f-ae77-e174c4a297a1.jpg?im_w=720', 41);
insert into location(id, latitude, longitude, city_name)
values (42, 37.579, 127.023, '서울');
insert into review (id, star, review)
values (42, 4.5, 3);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (42, 'HOSTEL SEOUL - Double room with a bathroom', 'Sungin 2(i)-dong, Jongno-gu의 개인실', 95000, '개인실', 0, 2, 1, 42,
        42, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49131805/original/cc1399a4-e57a-45fe-a889-f46fb51e9089.jpeg?im_w=720',
        42);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49131805/original/f40b5394-42b9-4e71-ab39-7593dee4d5aa.jpeg?im_w=720',
        42);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8012bdbf-e281-4fc8-b645-ef663143135d.jpg?im_w=720', 42);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/46bf7e9a-23dc-4174-864f-8967b7859175.jpg?im_w=720', 42);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/daf17c3d-3520-4103-8135-38fc6e6865aa.jpg?im_w=720', 42);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9f52c84f-e648-4208-916e-194e64ec48fa.jpg?im_w=720', 42);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ed01fcd7-a882-41e7-a5b2-662ba2a36938.jpg?im_w=720', 42);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a0528d71-018f-45c1-bee9-d38b5dcf29a6.jpg?im_w=720', 42);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c5264df5-f483-4021-96dd-ef85f184a7c2.jpg?im_w=720', 42);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/45d9e8ca-1d15-4dda-b4a7-02696cbce714.jpg?im_w=720', 42);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49131805/original/cd93726e-f0f6-4bf9-9095-02398c5c2d4b.jpeg?im_w=720',
        42);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49131805/original/8e435b9c-0119-4242-8619-468efcde62b8.jpeg?im_w=720',
        42);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49131805/original/9371e6b6-c713-4195-943f-55219160e19d.jpeg?im_w=720',
        42);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49131805/original/e4401327-34c5-4e9d-9dcc-aaf3629d1045.jpeg?im_w=720',
        42);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49131805/original/13505471-f261-4ded-b590-7b52ad414bca.jpeg?im_w=720',
        42);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49131805/original/3b8593cd-a293-4bf1-adf0-2ba72359727a.jpeg?im_w=720',
        42);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49131805/original/01535e0a-3c2b-4519-9beb-3a145bf316d7.jpeg?im_w=720',
        42);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49131805/original/7ca6c8ef-2e87-4fba-82a2-bae7b2a14d0a.jpeg?im_w=720',
        42);
insert into location(id, latitude, longitude, city_name)
values (43, 37.568, 126.99, '서울');
insert into review (id, star, review)
values (43, 4.5, 29);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (43, '종로3가역 학원가 중심 탑골공원근처  가성비 갑 숙소 - 2', '종로구의 개인실', 95000, '개인실', 1, 1, 1, 43, 43, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/65e75106-eded-466e-a6df-d9f180e0cee8.jpg?im_w=720', 43);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d77acbe8-124d-42a7-9409-5ecfe6582972.jpg?im_w=720', 43);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/77121720-a331-49c4-9307-102de63381e0.jpg?im_w=720', 43);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/889b0a61-a4d3-4fc5-bb55-bc28fc41571e.jpg?im_w=720', 43);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/017db03f-2aa1-4bee-92bd-7041a3cfd86e.jpg?im_w=720', 43);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/345bacda-161c-4548-8ed9-6d18d7f709ca.jpg?im_w=720', 43);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/eacd0d08-b7dc-440f-b231-c909a5a41431.jpg?im_w=720', 43);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/785cb5d8-007a-495a-b32f-390552619602.jpg?im_w=720', 43);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4045d0a3-1d60-42ec-aba5-622384f60100.jpg?im_w=720', 43);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/256170ab-0050-44a6-b39e-febf1dea4648.jpg?im_w=720', 43);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4d48667b-2bc2-4874-9e53-dc44c35b8ac4.jpg?im_w=720', 43);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/364a66dc-89f1-4a70-9199-d05133bc140f.jpg?im_w=720', 43);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ab0e20d0-8b11-4419-8ea6-6ddec9527228.jpg?im_w=720', 43);
insert into location(id, latitude, longitude, city_name)
values (44, 37.576, 127.02, '서울');
insert into review (id, star, review)
values (44, 4.5, 149);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (44, 'dmyk_"Backpacker"', '종로구의 게스트 스위트 전체', 100000, '집 전체', 2, 2, 1, 44, 44, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/b57066bf-fa72-4a4e-bb51-5f6fc911a4d2.jpg?im_w=720', 44);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/49d6005d-dcae-41cf-b2b5-70338d80e3e3.jpg?im_w=720', 44);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b39990da-ccbe-49f5-810f-231138e887dc.jpg?im_w=720', 44);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/64b35906-8cd2-42b5-996a-7bc2089b8b4a.jpg?im_w=720', 44);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/37648088-ca31-4e8e-9192-111a7acdd695.jpg?im_w=720', 44);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7de521d6-cba1-48a0-85d8-0c6d36d0b278.jpg?im_w=720', 44);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ba22df06-d668-4961-9213-fc686cc5c4af.jpg?im_w=720', 44);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/951ae468-9de9-4d29-9f3f-416ffbe79232.jpg?im_w=720', 44);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/508e381f-9dbe-4f0f-9987-1ac44d51909a.jpg?im_w=720', 44);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ed856b04-b121-40af-a5b0-83f29cf83817.jpg?im_w=720', 44);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f541fc15-ddd1-49e7-a62c-fbd9e102515b.jpg?im_w=720', 44);
insert into location(id, latitude, longitude, city_name)
values (45, 37.575, 126.99, '서울');
insert into review (id, star, review)
values (45, 4.5, 19);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (45, '익선동의 감성 숙소❤️
넷플릭스 무료시청 가능^^!', 'Waryong-dong, Jongno-gu의 부티크 호텔의 객실', 100000, '개인실', 1, 2, 1, 45, 45, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/b85a86ee-1560-4282-92ca-45b2a9646393.jpg?im_w=720', 45);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7e256e2c-0760-470f-935c-aea5f649a329.jpg?im_w=720', 45);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bac742b9-024c-4d32-8cc6-6c0879e6e6dc.jpg?im_w=720', 45);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e183a1c2-1a3e-4940-96b2-174e7c05ec72.jpg?im_w=720', 45);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/430d8369-9a99-4353-9f95-9cb1d4cfc340.jpg?im_w=720', 45);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c8b9d649-a509-4da1-a39c-275d389021e9.jpg?im_w=720', 45);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/90dea4db-65f2-4cbc-908f-b3c6b156eebf.jpg?im_w=720', 45);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/76eb1a8e-236a-46d6-8d5e-a81a8c192fb0.jpg?im_w=720', 45);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/502011c8-a2e9-472f-9917-d835df62c8b0.jpg?im_w=720', 45);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f2fec240-da5b-45b8-8976-9ff60ff08011.jpg?im_w=720', 45);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/22b8a619-068b-4eba-a6e6-3e070012feec.jpg?im_w=720', 45);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/afb731b3-dd96-4336-b041-73eb7573d320.jpg?im_w=720', 45);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a9b0a1d2-c970-4455-abae-0e015344f976.jpg?im_w=720', 45);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f82079d0-f13b-4492-8a40-9e7cb87b9f7d.jpg?im_w=720', 45);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/65cfecd6-4444-4a74-953c-ad2fcb607186.jpg?im_w=720', 45);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ab2c2fd4-3f14-4b1a-a935-d6e827d0716d.jpg?im_w=720', 45);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/43d62b2a-28a8-406a-8569-3ed44df169d2.jpg?im_w=720', 45);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/654e7b76-34a3-4749-be85-002c440d4c6b.jpg?im_w=720', 45);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0969d371-27b1-4f3c-af62-5328c792989c.jpg?im_w=720', 45);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d43fb6ca-17ce-429d-a8a9-57d027037291.jpg?im_w=720', 45);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a23d3460-cb76-46cb-91e6-d234e9ec421d.jpg?im_w=720', 45);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6443ccd6-6cfa-4633-b8fd-cae387556728.jpg?im_w=720', 45);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/32b8cdcd-a681-4dac-b995-2838d2136795.jpg?im_w=720', 45);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0b72ed53-4e9e-4e6f-bdbf-07b07ae1bd42.jpg?im_w=720', 45);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9f5ae076-2850-4291-af18-2e35d37c7dc7.jpg?im_w=720', 45);
insert into location(id, latitude, longitude, city_name)
values (46, 37.555, 126.934, '서울');
insert into review (id, star, review)
values (46, 4.5, 6);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (46, 'DODO House shinchon', 'Sinchon-dong, Seodaemun-gu의 개인실', 100000, '개인실', 1, 1, 1, 46, 46, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/498d26f1-0645-43dd-91ef-d8031343eb00.jpg?im_w=720', 46);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/980f393f-6a25-4cf6-83c8-cc5e2e2044b7.jpg?im_w=720', 46);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/72e96c22-7f6d-4331-b749-560d12a9c846.jpg?im_w=720', 46);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0dc1f917-26e0-4bee-b280-9084f506ce0b.jpg?im_w=720', 46);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/00b042a9-8afc-4129-8c5d-3a7367f6f7ed.jpg?im_w=720', 46);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6725c86b-0bdf-45a6-b99f-002359d05170.jpg?im_w=720', 46);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/40ac5f30-5f88-4738-8d4e-2522116dbf81.jpg?im_w=720', 46);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/82d3ee9b-0a2a-4c4a-8037-bba1ec159af5.jpg?im_w=720', 46);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2d873354-64c5-488f-acf3-05674c2ce6d7.jpg?im_w=720', 46);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/aa5776de-827a-461f-91b2-886d422b712f.jpg?im_w=720', 46);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b173dba1-0647-47e3-9bec-ad7f59dbed8a.jpg?im_w=720', 46);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dc7c38f9-8976-44d7-9c4a-6d9792816615.jpg?im_w=720', 46);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f8224c95-76b7-4c7f-bb97-28efcac834ce.jpg?im_w=720', 46);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5fcf0031-9ed1-4bbf-8e53-d0caccc7aff7.jpg?im_w=720', 46);
insert into location(id, latitude, longitude, city_name)
values (47, 37.483, 126.909, '서울');
insert into review (id, star, review)
values (47, 0, 0);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (47, '역세권 가성비좋은 깔끔 넓은 원룸❤️', 'Jowon-dong, Gwanak-gu의 콘도(아파트) 전체', 95000, '집 전체', 1, 2, 1, 47, 47, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/91a1d845-753b-4ef0-baf7-b69c4d9e47d5.jpg?im_w=720', 47);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6d0912d4-2482-4e5a-b1da-2f481f1863e1.jpg?im_w=720', 47);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6c77b24b-3935-46d6-bfbe-2c95aee027d6.jpg?im_w=720', 47);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8f6d49b1-0b85-44a0-ab04-9b14b45e8d4d.jpg?im_w=720', 47);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9370d836-0930-4dfe-9d00-c3901816d042.jpg?im_w=720', 47);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a026c075-979a-41da-b40d-0176b65d02f3.jpg?im_w=720', 47);
insert into location(id, latitude, longitude, city_name)
values (48, 37.583, 127.051, '서울');
insert into review (id, star, review)
values (48, 5, 10);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (48, '(Quarantine available) garden house Uni of Seoul', '동대문구의 초소형 주택', 100000, '집 전체', 2, 2, 1, 48, 48, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/dd631db5-b666-4b22-a198-9a7a239bab26.jpg?im_w=720', 48);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2a88de3a-df6a-4ffa-b443-46fdf7e92ab7.jpg?im_w=720', 48);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/355c2879-8925-493b-bbc0-5c55238e7213.jpg?im_w=720', 48);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a108f46d-f1d7-4cbe-b53b-4966c551ba8a.jpg?im_w=720', 48);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/06c664a3-dd15-4ec3-9bbc-5b63378d8948.jpg?im_w=720', 48);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2847520a-179a-47c8-ad55-cd0536e677c6.jpg?im_w=720', 48);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8dce2b29-9c44-406f-ae3c-ffcb2f41023e.jpg?im_w=720', 48);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8d1682aa-229d-4f25-ae68-a99c2b696504.jpg?im_w=720', 48);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/57da27fa-5b42-4174-96c5-5018aa5bb279.jpg?im_w=720', 48);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7a7c6348-42ba-4ef8-abe8-c4b78d509846.jpg?im_w=720', 48);
insert into location(id, latitude, longitude, city_name)
values (49, 37.563, 126.999, '서울');
insert into review (id, star, review)
values (49, 4.5, 56);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (49, '(WOMEN-여성용 ROOM)*Best for Solo*Capsule room', '중구의 호텔 객실', 90000, '호텔 객실', 1, 1, 1, 49, 49, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/9524ce87-ac8c-4549-b1ad-7b34c6ab6da6.jpg?im_w=720', 49);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fc60c949-f426-4954-98b5-cba04e19005a.jpg?im_w=720', 49);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/764ab90f-68ab-4ad3-be71-12cc51c6ae09.jpg?im_w=720', 49);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/41dd12d2-927b-4fb1-8037-bdfc6ed19a98.jpg?im_w=720', 49);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4e3154bb-9941-4083-b55f-5b26a839f349.jpg?im_w=720', 49);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/07982ba7-b3c2-4d61-8478-2b609bb12bc5.jpg?im_w=720', 49);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0fd8cac9-4830-402e-b3c5-8b751c643788.jpg?im_w=720', 49);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/451d8851-8344-4d05-b62c-a18ec47ed7bb.jpg?im_w=720', 49);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ee58975d-11a3-4072-9ec8-9974e1044011.jpg?im_w=720', 49);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6169c065-33f5-4f8c-a515-e36a6ba98979.jpg?im_w=720', 49);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/06bfb92a-e337-4646-858d-302c72068efa.jpg?im_w=720', 49);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/93657f87-76d2-41e7-9189-038c3c071ef0.jpg?im_w=720', 49);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/85b2732f-99fa-48a5-9d22-eff0c11003b4.jpg?im_w=720', 49);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2120837d-ea58-427a-8221-4d45dfc466a2.jpg?im_w=720', 49);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c0d18d05-3d0a-46af-88f2-13578ae538fe.jpg?im_w=720', 49);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c4d7341f-554a-4fa5-aaf8-83e16bb72c50.jpg?im_w=720', 49);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e3764077-7d78-4a63-a0c3-24a3fa700f92.jpg?im_w=720', 49);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d2ea95dd-f31d-4253-8e78-cb822e61594e.jpg?im_w=720', 49);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1f5c975a-8e49-433b-bfa6-fc006178e509.jpg?im_w=720', 49);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9e6f5f9a-477a-4c96-a026-07c41242a46f.jpg?im_w=720', 49);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a368e267-2e41-4119-8b81-e58c0714bb4f.jpg?im_w=720', 49);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/11c78489-80a2-4431-a295-b80c9d620b4a.jpg?im_w=720', 49);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1c631681-0fd1-48b4-8558-21c97f1d6c3c.jpg?im_w=720', 49);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d31343b1-2aa4-4d42-a53b-64973be27033.jpg?im_w=720', 49);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/942b4eef-a863-4738-a5ad-f2f6125897fb.jpg?im_w=720', 49);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4d1b315e-d19e-46ad-a249-d9607c62cfae.jpg?im_w=720', 49);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9d431d15-2c06-4ced-808d-e3f7234042ae.jpg?im_w=720', 49);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/56976132-6805-46cc-9c77-64dcb6118fd5.jpg?im_w=720', 49);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/890e2b72-9ebe-453f-903f-28c3f396ca7c.jpg?im_w=720', 49);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6896fd84-cdda-49c2-a08b-b313c3e934e1.jpg?im_w=720', 49);
insert into location(id, latitude, longitude, city_name)
values (50, 37.546, 127.052, '서울');
insert into review (id, star, review)
values (50, 0, 0);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (50, '성수 가성비  감성파티룸', 'Seongsu 2(i)-ga 1(il)-dong, Seongdong-gu의 레지던스 전체', 100000, '집 전체', 1, 4, 0, 50, 50, 1,
        1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/c12e50ae-1e32-46da-b63a-b4965a0200a4.jpg?im_w=720', 50);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/32a7fa46-62f6-4d8c-ad56-61790d2ec1ca.jpg?im_w=720', 50);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4ead5063-40b9-4bb0-b0b0-f712d1d6c78b.jpg?im_w=720', 50);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/62afde60-c446-4f98-8339-55e3cf71dd98.jpg?im_w=720', 50);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ed1904bb-5cbe-4686-a99f-5ec1b14785db.jpg?im_w=720', 50);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/eda26524-4b02-422a-b9f4-36e2f5c93daa.jpg?im_w=720', 50);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5a10b3ba-2866-4620-a51e-e85059d7d9fc.jpg?im_w=720', 50);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a5e2abfd-18e3-4a8b-bf2a-d42d9dfaefa9.jpg?im_w=720', 50);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/832f9f5b-ec17-414e-ba4f-ec1a29a75dba.jpg?im_w=720', 50);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/62f7a542-84ed-4293-8023-b03e5e52ba1e.jpg?im_w=720', 50);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/142bf946-ad1a-4ed7-9326-7060c245345e.jpg?im_w=720', 50);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8fef69df-e5c7-4c89-87cd-572a12539654.jpg?im_w=720', 50);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f6fa6c92-b193-4f2e-a49b-b6fff5f5f36f.jpg?im_w=720', 50);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/24a6c144-d90c-494e-8014-afa4e2567721.jpg?im_w=720', 50);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/694e0bc2-f23b-4790-9411-f75969e0c483.jpg?im_w=720', 50);
insert into location(id, latitude, longitude, city_name)
values (51, 37.781, 126.711, '경기');
insert into review (id, star, review)
values (51, 5, 195);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (51, '태양스테이 SunStay - 파주 헤이리 감성 숙소', '파주시의 타운하우스 전체', 100000, '집 전체', 2, 3, 1, 51, 51, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/c8dadca0-0363-4582-aeea-93f6d688e9dd.jpg?im_w=720', 51);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/53d6f09f-a29f-474f-a745-4618689470b6.jpg?im_w=720', 51);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5ad2ba22-242e-4aea-a437-69b07604f5bd.jpg?im_w=720', 51);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c97dd010-0ebe-438f-86ce-5ca6d7c02f1f.jpg?im_w=720', 51);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9003421b-0386-4e92-a9f9-3257cc4a237f.jpg?im_w=720', 51);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/64579140-6808-44e5-875e-9a02ac63b8fe.jpg?im_w=720', 51);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/712e7206-0b78-4217-a5b4-2f9990a056df.jpg?im_w=720', 51);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1b78d748-fa73-41a8-be5c-578e6defe2ba.jpg?im_w=720', 51);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/671c902d-3bc1-488a-957b-9a99da055d76.jpg?im_w=720', 51);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5c23e38f-2441-4ca5-9124-825bdba9af83.jpg?im_w=720', 51);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c3810838-9e2e-431c-a781-e9595c0eda74.jpg?im_w=720', 51);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a4f77a70-fcdc-4a4a-a183-d08f85495279.jpg?im_w=720', 51);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/427ca7a3-2c9a-4b53-89be-6de6951ed232.jpg?im_w=720', 51);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d7556f9c-db1e-4987-9769-d166d6f65035.jpg?im_w=720', 51);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d48f5e62-5510-4e88-9f4d-83d0981e586c.jpg?im_w=720', 51);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/df0c34d6-30d0-4feb-968c-1bbc583eba55.jpg?im_w=720', 51);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a2359af5-e23c-47a9-998a-5d7e64d7fe93.jpg?im_w=720', 51);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e2d97319-1c9b-45fa-8ed5-df83660761a0.jpg?im_w=720', 51);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c24890ca-c89e-46f4-82b6-54d3f74c171a.jpg?im_w=720', 51);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/669c6aa4-087a-4a37-8f0b-d0afec485082.jpg?im_w=720', 51);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e4eb94f4-8fed-4211-bdb4-acc587202c32.jpg?im_w=720', 51);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b78532ba-39ac-4c31-ae69-080e441ce670.jpg?im_w=720', 51);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9df15464-93a2-46db-a8db-b25ee21f5cbc.jpg?im_w=720', 51);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/32d2cd34-568d-4b30-b5d1-44fb99af4a12.jpg?im_w=720', 51);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/784250af-43bf-4e3f-ba97-b41a64d31c5f.jpg?im_w=720', 51);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d24568be-0d19-402b-8949-2cde2591b8e3.jpg?im_w=720', 51);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/50d94083-df99-4b0d-9dae-7802cc0f8ce7.jpg?im_w=720', 51);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/83db8056-df1f-4087-98cb-e3640aa4de14.jpg?im_w=720', 51);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ca6132b7-2ada-47fa-9d6f-d1332189f07f.jpg?im_w=720', 51);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/80716086-8acb-4d37-83ec-6f033da47c34.jpg?im_w=720', 51);
insert into location(id, latitude, longitude, city_name)
values (52, 37.494, 127.419, '경기');
insert into review (id, star, review)
values (52, 5, 36);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (52, '나만의 휴식(Only me) - 편백나무 발코니 룸(동)
 (전원주택, 자가격리 미운영)', 'Yangpyoung-gun, Yangpyeong의 개인실', 90000, '개인실', 1, 1, 1, 52, 52, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/65d82a99-0fa2-49f5-b514-3cc756517bd6.jpg?im_w=720', 52);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/299ecbda-e894-4eac-8759-a83f8a4ccbfc.jpg?im_w=720', 52);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/89702071-f254-4609-88ec-1b03a94ae532.jpg?im_w=720', 52);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/58fb2ac9-8456-4ddb-b1bd-377ab97cb0ae.jpg?im_w=720', 52);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b1155663-5cde-42de-b076-664464060b96.jpg?im_w=720', 52);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fb94f2d9-4e13-482d-a513-2276ee058c08.jpg?im_w=720', 52);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4c814c65-d585-47fb-924c-d14809ab4311.jpg?im_w=720', 52);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/440e597a-d2e5-44f7-a853-9fe3dbc7b88e.jpg?im_w=720', 52);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7ad99ea2-804d-419b-8e86-faaba5256421.jpg?im_w=720', 52);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/576a7d9b-efc6-452e-a012-5f120f79edea.jpg?im_w=720', 52);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c1d31dda-ac3f-407e-848c-083dedd33f45.jpg?im_w=720', 52);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c38a91f8-04bd-4566-a962-fb3faadce95e.jpg?im_w=720', 52);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/75278d45-33bb-409c-b4a2-f1c29332d237.jpg?im_w=720', 52);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4a83e699-0f3a-4216-937e-34714bb7cb63.jpg?im_w=720', 52);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0e80cc04-0dd1-4515-920d-9b1efd7e63f3.jpg?im_w=720', 52);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bd6e9e1f-45ed-4473-9fc2-8c4178441ad0.jpg?im_w=720', 52);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8b1e7a1b-17fd-4d71-bf40-527c0f7def42.jpg?im_w=720', 52);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/eacbd595-5614-4af7-97c3-f924b6b4ed40.jpg?im_w=720', 52);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bf387711-1b41-4e7b-a260-340bdcbc1452.jpg?im_w=720', 52);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/88e69fe5-b372-4210-811b-5056f6632c70.jpg?im_w=720', 52);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5b4e0363-fd2f-44e4-b139-876320392cf2.jpg?im_w=720', 52);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9e2fb287-d40a-4aa7-a219-601eaf7ade04.jpg?im_w=720', 52);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a90eaf88-36ce-49c8-b5ca-fb78723f436d.jpg?im_w=720', 52);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f1e23bc5-7253-434b-b3be-b87efea47402.jpg?im_w=720', 52);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5798966c-880e-4bf7-b658-925ec0223d55.jpg?im_w=720', 52);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9ca8906a-12dd-49eb-a904-bb0ab9f13b9e.jpg?im_w=720', 52);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7bcf23e8-dad2-42bc-b5dc-e66b5964b3fb.jpg?im_w=720', 52);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/19657919-231c-4720-a50b-1b4b455e6675.jpg?im_w=720', 52);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/48ff4a66-32dd-4ae3-8937-97023ca1a130.jpg?im_w=720', 52);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ac476cc1-0ea7-4867-8ef7-a8e1a6e78fca.jpg?im_w=720', 52);
insert into location(id, latitude, longitude, city_name)
values (53, 37.663, 126.506, '경기');
insert into review (id, star, review)
values (53, 5, 151);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (53, '다락(多樂)-개인', 'Buleun-myeon, Kanghwa의 개인실', 100000, '개인실', 0, 3, 2, 53, 53, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/e676cd7b-a209-4ca7-a543-7f10f4bee17b.jpg?im_w=720', 53);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/53d09e0a-a21c-42d2-9d0d-dece13a70ceb.jpg?im_w=720', 53);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4a4562c7-a0c6-4b03-aa95-c630a7f0e5a9.jpg?im_w=720', 53);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fafe4319-1f63-458b-bc35-1c8085f69e61.jpg?im_w=720', 53);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/affe460d-4853-4269-b010-714389fbdca8.jpg?im_w=720', 53);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0b1d3e40-b2c5-4abf-a08d-a6e313f4df9c.jpg?im_w=720', 53);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/23761281-8147-414d-8fd5-0dfe979896df.jpg?im_w=720', 53);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bc2cbf90-2aaa-4e05-9c45-3ca3e6adc708.jpg?im_w=720', 53);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fb4d072a-d5de-4fc2-a16e-d2db2ca949e0.jpg?im_w=720', 53);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c3ab70d8-9941-4010-b273-37c09cdcb494.jpg?im_w=720', 53);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d4cd325a-ab19-4e26-b7dd-1634a005607e.jpg?im_w=720', 53);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f31de5f0-3842-4b07-bb60-8213ca88a2dd.jpg?im_w=720', 53);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4e1d146c-62dc-4d31-8ef1-31f7bfedd79d.jpg?im_w=720', 53);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f38c84c3-f9fa-44bd-83c0-273653731547.jpg?im_w=720', 53);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/60da0aa6-7668-422a-be8a-024c6ad445ba.jpg?im_w=720', 53);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b8262810-af58-4070-8523-1445bc2ca8e0.jpg?im_w=720', 53);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a1add5ee-741b-43eb-9590-46f85747d3b7.jpg?im_w=720', 53);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/88190069-4844-4c7b-ab83-2697a2a80301.jpg?im_w=720', 53);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9c82b435-3df0-4c19-a8c5-469af20390f8.jpg?im_w=720', 53);
insert into location(id, latitude, longitude, city_name)
values (54, 37.269, 127.715, '경기');
insert into review (id, star, review)
values (54, 5, 13);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (54, 'Beginend_여주 강천_너른 마당이 있는 작업실', 'Gangcheon-myeon, Yeoju-gun의 게스트용 별채 전체', 80000, '집 전체', 1, 3, 1, 54, 54, 1,
        1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/9a8b1d9d-ac77-4147-b419-022d3b6a9241.jpg?im_w=720', 54);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bb2af001-156e-42ce-b038-9a382115c8af.jpg?im_w=720', 54);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a1685dfd-2b7f-47cc-aff8-21415feb342e.jpg?im_w=720', 54);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c18a3626-d856-45c4-a130-94cca42a4114.jpg?im_w=720', 54);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cb2cba11-0ccf-48ee-b771-498a091ade97.jpg?im_w=720', 54);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e14d728a-fc02-4187-bf3d-78ace740a2ea.jpg?im_w=720', 54);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1420451f-e189-4c2f-8960-5b259f933485.jpg?im_w=720', 54);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/800bd770-f16c-410e-84be-98d3e227f64b.jpg?im_w=720', 54);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5ef98e21-1ab4-4bfa-a1a9-95ace9bd1acb.jpg?im_w=720', 54);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0222fd7a-7eff-4139-b9e8-fccb0b62c0d0.jpg?im_w=720', 54);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5292910a-6f67-4419-a96f-12492608bf8c.jpg?im_w=720', 54);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2c9e3112-cd2d-4b3a-acab-d1df7e888bc6.jpg?im_w=720', 54);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8f064e41-45cb-4759-b7a9-a9fe49da9287.jpg?im_w=720', 54);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3a323edb-46bf-4030-a24f-231b1c6e3b51.jpg?im_w=720', 54);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/76cb52b2-bb23-4657-912a-5882ee837969.jpg?im_w=720', 54);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b032c1b6-009a-4b61-b783-864bf221346c.jpg?im_w=720', 54);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d9faa603-d6a3-4bb9-a963-71dfcb6ae1f6.jpg?im_w=720', 54);
insert into location(id, latitude, longitude, city_name)
values (55, 37.781, 126.71, '경기');
insert into review (id, star, review)
values (55, 5, 221);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (55, '단독 테라스가 있는 스테이소프트(stay.soft) 입니다.', 'Tanhyeon-myeon, Paju-si의 집 전체', 95000, '집 전체', 1, 2, 1, 55, 55, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/d1b282f3-597f-4d25-a36a-d8696ef0e722.jpg?im_w=720', 55);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3025f84e-3c08-4eab-8a1b-da2739d1d16c.jpg?im_w=720', 55);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cf14c0d0-127a-4992-8b0d-1bbcb3d80283.jpg?im_w=720', 55);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bbe68762-3fe1-4f0a-81f3-e9654905c221.jpg?im_w=720', 55);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cc29ff42-bcb5-48cd-8e56-5e22fba3df3e.jpg?im_w=720', 55);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/022a88c7-cbc2-413c-9e53-9338a4ccf7a2.jpg?im_w=720', 55);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b7a53c24-3c1b-484d-8c15-03ffff214990.jpg?im_w=720', 55);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/35f56047-4348-474d-bc52-35e3669f2e59.jpg?im_w=720', 55);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a501fc87-cc14-43ab-8344-a812526c34ca.jpg?im_w=720', 55);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bb57f90a-4beb-4117-bb80-be0428ccac94.jpg?im_w=720', 55);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/091e58df-7cc9-4f8d-a7ec-7957b5557278.jpg?im_w=720', 55);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/eebc77a7-4020-4007-b0a5-ecefc458e509.jpg?im_w=720', 55);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7347f133-3cfd-415d-8ff6-ad899231c05e.jpg?im_w=720', 55);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7cd49812-b1ce-40d3-9349-859f3db288e2.jpg?im_w=720', 55);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2d81154e-8fb7-4c4f-ad43-9fcc4ed09d6a.jpg?im_w=720', 55);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dbb9e095-18c5-40b5-a4d3-4f889b54647c.jpg?im_w=720', 55);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ff043720-0b87-497f-9dcb-844d6c3924fb.jpg?im_w=720', 55);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0dd2d916-528a-4406-94c4-c08e7ecd84f5.jpg?im_w=720', 55);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0b4686ff-008f-4ab4-8d5f-907979f30283.jpg?im_w=720', 55);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b71163c2-3beb-4bb4-b5cc-e68fb8b4da28.jpg?im_w=720', 55);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/131ec74c-7220-4e12-ae6e-f3df8e3769d6.jpg?im_w=720', 55);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/273a04fe-1653-4fd9-b343-933e3bea6c38.jpg?im_w=720', 55);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ffd35abf-d933-4d61-b894-c8a80e06ee7e.jpg?im_w=720', 55);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/94b6b6e3-53a0-4c88-9128-1688dca7b211.jpg?im_w=720', 55);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f9485b21-8dfb-40b5-8d86-be09bc1cb222.jpg?im_w=720', 55);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bd0269fb-c10a-4945-a57f-b1479720da6b.jpg?im_w=720', 55);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/98e357b2-303a-469c-ba1f-73c1d476b8e9.jpg?im_w=720', 55);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1d620347-4c39-4ae3-a4de-c3158d5d961e.jpg?im_w=720', 55);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8d993371-c36e-4cc2-a6db-e87c9915370b.jpg?im_w=720', 55);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6923dca6-1249-4c8f-bd11-e9019b18430f.jpg?im_w=720', 55);
insert into location(id, latitude, longitude, city_name)
values (56, 37.71, 126.933, '경기');
insert into review (id, star, review)
values (56, 5, 68);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (56, '일영댁의 루프탑', 'Jangheung-myeon, Yangju-si의 게스트용 별채 전체', 90000, '집 전체', 2, 4, 1, 56, 56, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/a317fbfd-e121-4bcb-ac8b-f5720aaa016d.jpg?im_w=720', 56);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8a518449-1d87-4f5b-91db-e40e759db974.jpg?im_w=720', 56);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4725d94b-3f3b-4567-b5d1-bb08a3a131a0.jpg?im_w=720', 56);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cd05cf09-c7cf-4058-b6eb-f030bd4b76f4.jpg?im_w=720', 56);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9273d0a4-a6de-422f-a33b-ea7f78c36504.jpg?im_w=720', 56);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b6922083-d261-4a3b-a094-091c1e278e25.jpg?im_w=720', 56);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/791a9bc1-af5a-46b1-960e-181075bcb1ba.jpg?im_w=720', 56);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ff8e60de-017b-4071-a389-eb556b80655f.jpg?im_w=720', 56);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c6548f52-dbd9-4985-9773-674451262c24.jpg?im_w=720', 56);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bd108df7-a740-47f2-8803-f7660e24ede3.jpg?im_w=720', 56);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7a8813fb-84d4-44af-a0a1-3968691e928f.jpg?im_w=720', 56);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f49f39cb-6316-46bb-a515-bee1d98117f0.jpg?im_w=720', 56);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ef784fe9-1a56-4f81-9768-0d32cc05be6d.jpg?im_w=720', 56);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/81d04dd9-19f5-449c-9f52-8457dd8ef6ba.jpg?im_w=720', 56);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fee68c25-360a-46e7-b16e-4d43a24e7de0.jpg?im_w=720', 56);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8c7bf879-7c10-4bae-8109-ff1a06b20e00.jpg?im_w=720', 56);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0092d470-b19f-4790-9c88-b35e128f7ca8.jpg?im_w=720', 56);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/29e5e2dc-9d36-4b66-a0cf-1a2b42bacc67.jpg?im_w=720', 56);
insert into location(id, latitude, longitude, city_name)
values (57, 37.911, 127.204, '경기');
insert into review (id, star, review)
values (57, 0, 1);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (57, '기모하우스2', 'Sinbuk-myeon, Pocheon-si의 집 전체', 100000, '집 전체', 3, 6, 0, 57, 57, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/d7c79341-a3a7-4fec-abbb-b86cb4ea80c9.jpg?im_w=720', 57);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/943f3ef6-5f71-42fe-bd83-64271a68cf0b.jpg?im_w=720', 57);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fd959493-1783-4eeb-968a-9cd9fdda8ef1.jpg?im_w=720', 57);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bee3903f-1a8a-49b7-a7a9-e07dc268d859.jpg?im_w=720', 57);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/38230b65-c459-4181-b1a8-7faf2667fbf2.jpg?im_w=720', 57);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/50bfc234-ae26-4ac4-b0e2-1792da314007.jpg?im_w=720', 57);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0a07f3b1-dfb9-42a3-857b-2c7b6f771b4d.jpg?im_w=720', 57);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6653066e-5d94-4dd3-a072-58e98394b62b.jpg?im_w=720', 57);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3241da29-aaa4-497f-8e66-56f37df1f560.jpg?im_w=720', 57);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/524b67f9-3bcc-486c-afcd-098e2f7ddfce.jpg?im_w=720', 57);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/df2bb25b-907b-4e15-9dcf-6c7a86162cb5.jpg?im_w=720', 57);
insert into location(id, latitude, longitude, city_name)
values (58, 37.78, 126.71, '경기');
insert into review (id, star, review)
values (58, 5, 34);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (58, '프라이빗한 야외테라스 공간과 영화관이 공존하는 힐링하우스', 'Tanhyeon-myeon, Paju-si의 게스트용 별채 전체', 79000, '집 전체', 1, 3, 1, 58, 58, 1,
        1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/3069eba3-7a1a-41c1-96ea-a07bb4cb06ca.jpg?im_w=720', 58);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47931991/original/92b8f945-3595-4761-a427-eb05e93e373b.jpeg?im_w=720',
        58);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47931991/original/a8a077fb-4ffd-4b80-a549-8009cccaceab.jpeg?im_w=720',
        58);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8ac654c5-7c1e-4503-b984-3b31eb7164bb.jpg?im_w=720', 58);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cf961bab-e76d-46cb-ad8f-103f88466969.jpg?im_w=720', 58);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47931991/original/7bcd7d32-62a6-4c38-b6db-db67b666fc16.jpeg?im_w=720',
        58);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47931991/original/5a5a1e55-9955-4425-be1d-1b873503b648.jpeg?im_w=720',
        58);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6aeea1e7-b6a4-4840-85d3-47723229cc22.jpg?im_w=720', 58);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/570f8046-177f-49e7-9290-cbe6e8d6321b.jpg?im_w=720', 58);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f4b22cf7-f2f7-43ea-9bca-1edc7b95877b.jpg?im_w=720', 58);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/46ac806f-f3a5-46d5-8d31-889ac9ff1530.jpg?im_w=720', 58);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47931991/original/54965e03-1403-4943-8a45-6ea9037628fd.jpeg?im_w=720',
        58);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fdc24052-2599-4a75-b615-e8e8c5275eaa.jpg?im_w=720', 58);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/56625408-ae83-4212-9dd0-1d8128428807.jpg?im_w=720', 58);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47931991/original/0b946a3f-343f-4bb0-945e-e00fc94b2aa4.jpeg?im_w=720',
        58);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/85fdaa47-9e4e-4249-9f3c-a50e663ee8dc.jpg?im_w=720', 58);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4f5e2892-d90a-4969-9ce5-e03eaf197202.jpg?im_w=720', 58);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9558523f-0cdf-4e8d-b4a2-140ccbcd9ca8.jpg?im_w=720', 58);
insert into location(id, latitude, longitude, city_name)
values (59, 37.576, 127.186, '경기');
insert into review (id, star, review)
values (59, 5, 10);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (59, '미사 파머버니 스테이', 'Seon-dong, Hanam-si의 콘도(아파트) 전체', 75000, '집 전체', 1, 2, 1, 59, 59, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/1090d9db-8dc3-46d6-be36-9ff3cd37c04b.jpg?im_w=720', 59);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c0d3847f-c1cc-415f-a4c5-eeaab7eb00ff.jpg?im_w=720', 59);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d24df167-2863-49dc-be99-3879a37e10a6.jpg?im_w=720', 59);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/670ed4e6-c960-4b11-a4ee-36b76123d99f.jpg?im_w=720', 59);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a52b3000-45fe-43b6-9801-adf33dafc706.jpg?im_w=720', 59);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/073428a6-49f0-47f8-8172-4a2833605f9c.jpg?im_w=720', 59);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/94d48a3b-b945-486d-8fa3-b74c772d17d0.jpg?im_w=720', 59);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d44faf04-724d-46e9-8e90-1571dc98cb41.jpg?im_w=720', 59);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f0b1928b-d478-4236-b4e6-5e7a572fef29.jpg?im_w=720', 59);
insert into location(id, latitude, longitude, city_name)
values (60, 37.834, 127.594, '경기');
insert into review (id, star, review)
values (60, 5, 15);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (60, '춘천 유유자적 삼동_yuyujajeok, 편히쉬어가는곳', 'Seo-myeon, Chuncheon-si의 집 전체', 100000, '집 전체', 1, 2, 1, 60, 60, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/a3c8be8b-764f-4ce4-9c1d-3c5191f52323.jpg?im_w=720', 60);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6c7811d0-d8d1-40fb-849f-116f5fb52e1b.jpg?im_w=720', 60);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c09ac227-30eb-4b46-8c4e-e2938e980a81.jpg?im_w=720', 60);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b1b65205-ea9f-4943-8aea-9ec4ba6782d4.jpg?im_w=720', 60);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9fdddcc3-acc4-445b-b736-6c003ce3623f.jpg?im_w=720', 60);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/14b3ed5b-b7a0-4c01-ba39-bece72f303d7.jpg?im_w=720', 60);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49336798/original/86bb9561-752a-456b-9c24-05462092f640.jpeg?im_w=720',
        60);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49336798/original/3bdd4b89-1f55-4cde-bc47-3516a15ef10e.jpeg?im_w=720',
        60);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2beaad39-0c2e-4fee-9764-0b1bb2dfb2d3.jpg?im_w=720', 60);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f1a24e56-78e9-4b91-8440-e9da81c9f3a0.jpg?im_w=720', 60);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5f9917bc-5656-4908-9870-3f18a62299d3.jpg?im_w=720', 60);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49336798/original/f4fcd93c-0991-49d6-b39a-2e54122c0818.jpeg?im_w=720',
        60);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49336798/original/ee2818cf-05df-42cd-820c-8c8c43dea1aa.jpeg?im_w=720',
        60);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3784e8bf-c815-497c-a3ca-f5e6269f9d20.jpg?im_w=720', 60);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d6a0b210-2e22-4a03-9b33-0b4376305562.jpg?im_w=720', 60);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fbbab78f-d066-4f3e-bf74-3763ca09ba13.jpg?im_w=720', 60);
insert into location(id, latitude, longitude, city_name)
values (61, 37.712, 126.762, '경기');
insert into review (id, star, review)
values (61, 5, 36);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (61, '★테라스하우스ㅡ바베큐가능', 'Unjeong 3(sam)-dong, Paju-si의 집 전체', 100000, '집 전체', 1, 4, 1, 61, 61, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/fbe889e8-63de-4005-88cc-6611d8d96c6f.jpg?im_w=720', 61);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a9929a8f-1fb9-4692-b828-63006c5d2029.jpg?im_w=720', 61);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b60987de-257d-4e62-aa50-02a883e88bfa.jpg?im_w=720', 61);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d0de397a-ddee-4f8f-a77a-580c1b62dae2.jpg?im_w=720', 61);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/209fdb82-685d-4579-85d2-3a15795fce9a.jpg?im_w=720', 61);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44524529/original/ee2a5ea6-4b27-4fe4-bb07-2c5139e48b7c.jpeg?im_w=720',
        61);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/730a957d-d839-46b4-886e-eb62c4b1fe9e.jpg?im_w=720', 61);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/42172f09-a0d6-471c-aa08-aeb5279ead1f.jpg?im_w=720', 61);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8e9d5a53-dbfd-4f73-a9fc-d118edcd1219.jpg?im_w=720', 61);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44524529/original/3754c5f1-7990-4bc0-85ae-cacdd58dd200.jpeg?im_w=720',
        61);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/67f77870-e91f-49f2-8d94-352981279468.jpg?im_w=720', 61);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/99b4b96a-e299-4e2e-ad9e-716d1ce240bc.jpg?im_w=720', 61);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/41ed1868-f194-4404-b093-1b19147c10a6.jpg?im_w=720', 61);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44524529/original/76fcfb62-af96-4b55-9147-6b6b52ee5b72.jpeg?im_w=720',
        61);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/36eee615-c410-4637-8aa0-fecbfa6fc654.jpg?im_w=720', 61);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fe1e03bd-8a94-48ae-91a6-a9d4a577e78c.jpg?im_w=720', 61);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44524529/original/c895b637-10c1-475d-b959-bab3622a3631.jpeg?im_w=720',
        61);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9febbf9d-02d8-47fb-a4b0-a0dbc326be13.jpg?im_w=720', 61);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e53d67d1-d94e-4065-86f6-61644cd4cd60.jpg?im_w=720', 61);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/558469d7-9944-4ef5-b5ce-892b6581d066.jpg?im_w=720', 61);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44524529/original/7357e9d3-d29e-4eb6-a3f4-3e55f02e4500.jpeg?im_w=720',
        61);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bf803b8b-521d-4ac5-b857-8bf15d92a690.jpg?im_w=720', 61);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/223a81c6-c878-4fda-a73c-812e24e670be.jpg?im_w=720', 61);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fc55d773-907d-491e-9538-96bcee49a141.jpg?im_w=720', 61);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/eac1e7c3-2bc6-4389-8379-9eb66638575a.jpg?im_w=720', 61);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44524529/original/140c660a-e15f-49f7-9d59-7aa9d0829162.jpeg?im_w=720',
        61);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e3497aa0-fbf9-46a9-a34c-3f46c25f59a3.jpg?im_w=720', 61);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8f253563-e6a2-4fb0-b07b-4b427176056f.jpg?im_w=720', 61);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/238d0d2c-f479-4c11-9919-f2289373e7a6.jpg?im_w=720', 61);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8b9a37cd-8285-40c7-8eec-c74388d34cd0.jpg?im_w=720', 61);
insert into location(id, latitude, longitude, city_name)
values (62, 37.556, 126.935, '경기');
insert into review (id, star, review)
values (62, 4.5, 17);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (62, '#31 Sinchon Sta 2mins Hongdae 8mins Blue Mansion', '마포구의 집 전체', 100000, '집 전체', 1, 1, 1, 62, 62, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/29aa0a8e-b6bd-4310-bd90-1866b56e1d54.jpg?im_w=720', 62);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4a8035d5-9f43-463b-ae04-5d48360956ab.jpg?im_w=720', 62);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/89a7d409-4147-4e9e-bc11-e2201488135d.jpg?im_w=720', 62);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a3d9fbd0-1e82-4057-aac0-4f16b6a84aa1.jpg?im_w=720', 62);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/70991420-c698-4775-b31c-c2e7cda23ded.jpg?im_w=720', 62);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/10dedcbd-2cf5-4a5c-a193-54d2b425227d.jpg?im_w=720', 62);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b601e914-d854-4291-8470-e43292eee9e0.jpg?im_w=720', 62);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a03f7dde-0c92-4008-b363-94cc8b8767c8.jpg?im_w=720', 62);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8786e0d2-31ed-478f-9e12-d277ff9d8d38.jpg?im_w=720', 62);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e906ba99-ea43-4d6e-84e0-71a591661fc4.jpg?im_w=720', 62);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ff92b493-4c4c-4738-a6a5-0a1636d3badb.jpg?im_w=720', 62);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a383e171-9cfd-49ae-b48c-a261a83a7cb3.jpg?im_w=720', 62);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/96e118e7-9687-424f-9034-e198d37ae036.jpg?im_w=720', 62);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/95ed4f63-c448-4a8f-97cc-4f0d6f9835d2.jpg?im_w=720', 62);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b83a55f8-1818-483b-ab22-455046e5e60a.jpg?im_w=720', 62);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6236e4a3-510c-4910-aec0-20507fc3259b.jpg?im_w=720', 62);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fb75598d-18fd-4114-88fe-eefd48449344.jpg?im_w=720', 62);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c51c66a7-9fc6-41b6-a4cb-b026fe8c901a.jpg?im_w=720', 62);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b7ff51bb-e6a8-4788-b38c-73e458d0b649.jpg?im_w=720', 62);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cd09b650-45f8-49a6-9fc1-a661f85ff4e7.jpg?im_w=720', 62);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ad1ec3c7-a314-48a3-9da9-b67dfb77f318.jpg?im_w=720', 62);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3e051faf-f503-4adb-a66c-990f5ebe7bc0.jpg?im_w=720', 62);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e99891e0-d902-424f-b34d-8335ef671ff9.jpg?im_w=720', 62);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/392eb653-b5f2-4536-b800-e9b9eec930ac.jpg?im_w=720', 62);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2b184052-b0c1-4710-97cf-a3c04d839909.jpg?im_w=720', 62);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9ea3b09c-77f8-4ea9-a5f0-82e26009fdee.jpg?im_w=720', 62);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bc8731aa-ff3f-4f9e-b7c0-113b27ac567b.jpg?im_w=720', 62);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9901cc48-61f7-42bf-9124-516d0078f4a6.jpg?im_w=720', 62);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7345ccdf-3800-4a87-8799-389bcc2ab9a2.jpg?im_w=720', 62);
insert into location(id, latitude, longitude, city_name)
values (63, 37.588, 127.031, '경기');
insert into review (id, star, review)
values (63, 0, 0);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (63, 'One- Room Low Price', '성북구의 아파트 전체', 97000, '집 전체', 1, 1, 1, 63, 63, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/49ab015f-9110-4bba-818a-e8b9e0412a3e.jpg?im_w=720', 63);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/db283f51-c4e1-4858-9833-92ae05753cc4.jpg?im_w=720', 63);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/58f7e528-2a59-4e4d-976c-0361d9b6ab9b.jpg?im_w=720', 63);
insert into location(id, latitude, longitude, city_name)
values (64, 37.527, 126.907, '경기');
insert into review (id, star, review)
values (64, 5, 229);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (64, '나무, 새, 고양이 [독채]', 'Yeongdeungpo-dong, Yeongdeungpo-gu의 집 전체', 95000, '집 전체', 1, 2, 1, 64, 64, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/49fd87ac-bf86-4ea0-9375-b233e898e0dd.png?im_w=720',
        64);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/71636cee-5220-47b0-ad3c-feb5671cf7cb.png?im_w=720',
        64);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/39247db5-b9f7-4e30-b214-3572d38f26d4.png?im_w=720',
        64);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/545ebe46-875c-4edc-ba69-40f618284124.jpeg?im_w=720',
        64);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/4e1dc53a-fdfb-4abd-a6c1-42f914b6a1d8.png?im_w=720',
        64);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/718794d8-61d3-48b7-9c40-e94f27b0c4eb.png?im_w=720',
        64);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/c81a9c7d-577c-40ea-b7f0-1c0514e70b11.png?im_w=720',
        64);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/a66e53f0-c3ee-4199-a781-4d1859bfccea.png?im_w=720',
        64);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/4585b685-2ab7-485c-8cc5-d63c2c5c2696.png?im_w=720',
        64);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/55919b0d-2293-40a1-978a-f53438e56ac1.png?im_w=720',
        64);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/a1e664fb-596a-4858-ab8c-ce30344f4d5a.png?im_w=720',
        64);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/e6669eef-8814-43f7-88ab-eaf01ecedbeb.png?im_w=720',
        64);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/9d1fd822-a752-4904-9f89-7964e52e4053.png?im_w=720',
        64);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/89f4f92e-b31d-480c-a99b-833162fbc211.png?im_w=720',
        64);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/43dfb28c-717d-424b-8228-5bbf8fe31a17.png?im_w=720',
        64);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/5dd01249-5e32-4f7f-bf74-7a7511afc8aa.png?im_w=720',
        64);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/90fbb5dc-73bc-4345-866b-097ef3d0276f.png?im_w=720',
        64);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/6dc3f75a-dfe2-497c-a868-bfd5a97571af.png?im_w=720',
        64);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/e36113cc-b3c3-4e61-9269-7e92b247a1dc.png?im_w=720',
        64);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/37c1f9e1-c900-48b5-9bb1-567165ed5c51.png?im_w=720',
        64);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/43778e64-fbfd-4888-a66c-939d875f06fa.png?im_w=720',
        64);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/0b5e6d88-ca12-4fd8-b4db-45b18612f8e9.png?im_w=720',
        64);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/132b3532-194a-4190-b011-74b3ad0a6bc0.png?im_w=720',
        64);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/b622ba2d-1be7-4b72-9e74-0f675a59489e.png?im_w=720',
        64);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/46fe1857-53af-4fdc-8cf9-14b8837660df.png?im_w=720',
        64);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/ec064ac4-146d-4576-8356-2bb9d45c485d.png?im_w=720',
        64);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/f689fe35-ecb2-4647-afa1-fe709549dd52.png?im_w=720',
        64);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/02b831a3-4512-4ce9-92f4-2f4587a4e769.png?im_w=720',
        64);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/0f7f8c76-d0a2-4fca-abb9-372f3e37503e.png?im_w=720',
        64);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43124823/original/fb0070e9-345e-4907-8caf-e68a1d0b434d.png?im_w=720',
        64);
insert into location(id, latitude, longitude, city_name)
values (65, 37.877, 127.738, '경기');
insert into review (id, star, review)
values (65, 5, 259);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (65, '언제라도 봄(단독주택전체) - 오직 한 팀만 사용', 'Hyoja-dong, Chuncheon의 집 전체', 90000, '집 전체', 4, 4, 1, 65, 65, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/094dd64f-371d-4ec6-b9cc-3e55f333d49b.jpg?im_w=720', 65);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7ca9463f-3895-45ce-ac5d-ed05a23fb6d2.jpg?im_w=720', 65);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/867ca78d-076a-4efd-8999-415d8519ae22.jpg?im_w=720', 65);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bd5a21d3-9027-41e1-981d-d68febee7381.jpg?im_w=720', 65);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a322ff76-15ae-42e4-b3c3-2bd00d6a4baa.jpg?im_w=720', 65);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4aff0f58-2ce7-4a9c-a1f4-5a8fe040ae94.jpg?im_w=720', 65);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/948a7202-95bc-4cdf-803d-27ae64384fb4.jpg?im_w=720', 65);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bfe5f478-173e-4e82-972c-64f1b352f422.jpg?im_w=720', 65);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/233569c1-21e1-481d-a3b2-df88d9cd00d6.jpg?im_w=720', 65);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1965567e-cd0d-417f-9244-d670d70cb224.jpg?im_w=720', 65);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/76ea66d1-e73a-4ec4-8f15-b3b3d06df9bc.jpg?im_w=720', 65);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d205ead7-6136-4282-9a66-d7b0fcbf19d0.jpg?im_w=720', 65);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/65d424f6-36f2-4e77-b695-3cf95caff6d4.jpg?im_w=720', 65);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3960f6d9-2c03-4392-9ddf-a24394f811f3.jpg?im_w=720', 65);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/df54808a-6a6f-4b9a-a9b5-f1a3caa7c512.jpg?im_w=720', 65);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c85e7dd5-63b7-4a27-b2f4-78c1688d0ee9.jpg?im_w=720', 65);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fddc6bf0-a334-49e4-8fd9-0befb8f353bf.jpg?im_w=720', 65);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1450a9eb-a0c2-4e8d-9769-f3f0d8af8067.jpg?im_w=720', 65);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2f58be43-a684-4721-8b0a-8fb9bdad617b.jpg?im_w=720', 65);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b469db6f-5966-47cc-b258-4c1f11d1f0ec.jpg?im_w=720', 65);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c1008d9b-3064-4d99-9052-2a7ba847d8ed.jpg?im_w=720', 65);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9597b634-6538-4e94-bf71-7548f256dd79.jpg?im_w=720', 65);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d54ab563-9da9-4822-b52a-134305c0193d.jpg?im_w=720', 65);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3f53d335-1a09-4d45-887e-fef0d196def1.jpg?im_w=720', 65);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ae018b1d-1a49-497e-b3bd-c4d87c8fc2c0.jpg?im_w=720', 65);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8eeb2ea3-0357-47ce-8fbd-a87f684fef96.jpg?im_w=720', 65);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/347e8a67-b491-42dc-9adc-f19f75326c91.jpg?im_w=720', 65);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/561db74b-3e4f-42a4-a99e-8113b0d4c000.jpg?im_w=720', 65);
insert into location(id, latitude, longitude, city_name)
values (66, 37.444, 127.565, '경기');
insert into review (id, star, review)
values (66, 5, 115);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (66, '양평 산수유 마을 별채/ in Yang-Pyeong (separate entrance)', '양평군의 개인실', 95000, '개인실', 1, 2, 1, 66, 66, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/ff910610-f79a-437e-967f-c33091a2451c.jpg?im_w=720', 66);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8eb421d0-5aac-4cb9-9971-c6aa1568057e.jpg?im_w=720', 66);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f429ce34-807e-49bd-9b33-574ed40fe1e7.jpg?im_w=720', 66);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7fb8b8b0-e60c-45f8-8c4f-33b76611cb32.jpg?im_w=720', 66);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ff7473eb-bc94-483a-8b7c-721cb04f4c03.jpg?im_w=720', 66);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/58df7c20-a8a7-499f-b8b3-c108b456f2da.jpg?im_w=720', 66);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5cba8855-93e7-4cc6-a6d2-3b940aa985e5.jpg?im_w=720', 66);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f6674600-3170-4e74-a525-2034ab7a411a.jpg?im_w=720', 66);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6a6bd072-0da6-45e1-ab66-b337b1383a30.jpg?im_w=720', 66);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3bd65158-3e1d-4c7b-9ec0-c3cbf7788c19.jpg?im_w=720', 66);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/25c8b3e0-01c6-44e0-b912-eb05c0f9bd4f.jpg?im_w=720', 66);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d90bba7d-5b1a-4ec0-9e1b-e0b2599246d5.jpg?im_w=720', 66);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0e73e429-3dfa-432e-b951-2e255a4eef1e.jpg?im_w=720', 66);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5c434f22-0faf-48de-8eb7-373b6165d0ab.jpg?im_w=720', 66);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/48a1b2e3-4eb2-4bd1-b346-29893646047f.jpg?im_w=720', 66);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/93814fb8-704e-419c-8797-9dd4dca774b1.jpg?im_w=720', 66);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fa7ba5d2-b58a-4bca-b461-6fef697dbd69.jpg?im_w=720', 66);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d87e3163-41b8-474c-a82d-94dea043d1c7.jpg?im_w=720', 66);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/88ec6830-3180-48ab-84a9-aeea386191dd.jpg?im_w=720', 66);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/86f6d6a5-a620-4274-8a1b-79e6a96b9fa4.jpg?im_w=720', 66);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6d2c54a3-1a98-4965-8511-acedeeccca6f.jpg?im_w=720', 66);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cedfa2c1-8205-4b58-b6b8-cded3dd4d323.jpg?im_w=720', 66);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3354c112-f6c9-4b55-b48d-3e8f66472f00.jpg?im_w=720', 66);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c37da6a3-247d-4194-90fd-2beffbbcaee3.jpg?im_w=720', 66);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8ebe3b6c-fd3f-4520-98f7-5e0c9ac7702b.jpg?im_w=720', 66);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e9feef3a-6505-4e69-846d-4dd43e611bfc.jpg?im_w=720', 66);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3f51e8cd-3bb2-4e8a-a758-efe87e8d865b.jpg?im_w=720', 66);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/eaf5c164-792a-4f15-b6a4-d984395d710a.jpg?im_w=720', 66);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3b8949c5-d35a-462f-99ae-7bf4ff3c80b8.jpg?im_w=720', 66);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b4b9943c-0468-47fd-9f6e-4de449ceb6d3.jpg?im_w=720', 66);
insert into location(id, latitude, longitude, city_name)
values (67, 37.501, 127.035, '경기');
insert into review (id, star, review)
values (67, 4.5, 20);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (67, '☆역삼역도보2분#417', 'Yeoksam 1(il)-dong, Gangnam-gu의 초소형 주택', 100000, '집 전체', 1, 1, 1, 67, 67, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/98f9b3e3-11c2-4b9c-a543-f765b1e0f913.jpg?im_w=720', 67);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/992eedac-b6d5-48a5-8ca8-2e027dcd97c1.jpg?im_w=720', 67);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/831e83e7-e7fe-4b76-990f-6d8feee84291.jpg?im_w=720', 67);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8dab2db8-ef04-471a-857f-d61c1ea13567.jpg?im_w=720', 67);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/59cc7abd-f642-4548-838d-16e2e657f842.jpg?im_w=720', 67);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/47fc8c9d-377b-4b43-8519-10bdc3636068.jpg?im_w=720', 67);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/59ce19e9-4e60-4820-9251-7aacf2d001d6.jpg?im_w=720', 67);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/33c7e9d2-fb01-4a15-a72c-ad13d55a7ff0.jpg?im_w=720', 67);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/91677694-8304-49f4-a3a6-fdeb1ff2c89f.jpg?im_w=720', 67);
insert into location(id, latitude, longitude, city_name)
values (68, 37.568, 126.99, '경기');
insert into review (id, star, review)
values (68, 4.5, 29);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (68, '종로3가역 학원가 중심 탑골공원근처  가성비 갑 숙소 - 2', '종로구의 개인실', 95000, '개인실', 1, 1, 1, 68, 68, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/65e75106-eded-466e-a6df-d9f180e0cee8.jpg?im_w=720', 68);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d77acbe8-124d-42a7-9409-5ecfe6582972.jpg?im_w=720', 68);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/77121720-a331-49c4-9307-102de63381e0.jpg?im_w=720', 68);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/889b0a61-a4d3-4fc5-bb55-bc28fc41571e.jpg?im_w=720', 68);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/017db03f-2aa1-4bee-92bd-7041a3cfd86e.jpg?im_w=720', 68);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/345bacda-161c-4548-8ed9-6d18d7f709ca.jpg?im_w=720', 68);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/eacd0d08-b7dc-440f-b231-c909a5a41431.jpg?im_w=720', 68);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/785cb5d8-007a-495a-b32f-390552619602.jpg?im_w=720', 68);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4045d0a3-1d60-42ec-aba5-622384f60100.jpg?im_w=720', 68);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/256170ab-0050-44a6-b39e-febf1dea4648.jpg?im_w=720', 68);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4d48667b-2bc2-4874-9e53-dc44c35b8ac4.jpg?im_w=720', 68);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/364a66dc-89f1-4a70-9199-d05133bc140f.jpg?im_w=720', 68);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ab0e20d0-8b11-4419-8ea6-6ddec9527228.jpg?im_w=720', 68);
insert into location(id, latitude, longitude, city_name)
values (69, 37.547, 126.924, '경기');
insert into review (id, star, review)
values (69, 5, 5);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (69, '☆Netflix☆Hongdae_Sangsu sta.20sec 갬성돋는 나만의 공간♡', 'Sangsu-dong, Mapo-gu의 콘도(아파트) 전체', 100000, '집 전체', 1, 2,
        1, 69, 69, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/f2f4d084-a4f3-4048-b4c9-5d464cee8a7c.jpg?im_w=720', 69);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a3838477-d54f-40c3-9e59-5da6153bb757.jpg?im_w=720', 69);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d0ac0b42-da60-4eb9-9a6f-aaa9f54d7afc.jpg?im_w=720', 69);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8338f0a3-d966-496b-a927-85507e9ac8b3.jpg?im_w=720', 69);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/94414f30-586a-41e7-bf03-1d31c18a6540.jpg?im_w=720', 69);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8ca80227-0fb1-4f7f-a3c7-51f1eae67351.jpg?im_w=720', 69);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e580c191-df46-41a7-9966-d19148691f51.jpg?im_w=720', 69);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ccfdfaca-890c-4aae-a4c5-f74c9b10f065.jpg?im_w=720', 69);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/79b67869-7959-4e4b-97ba-19409d0805f8.jpg?im_w=720', 69);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4ae2cc5a-62c1-47eb-8d93-ee526e159e77.jpg?im_w=720', 69);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d5629509-0ea0-4058-b4a1-ca23cc8ade26.jpg?im_w=720', 69);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1cf471f3-009e-4a17-aa5a-50c8c2af7ada.jpg?im_w=720', 69);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c1529a27-cd8d-4952-a315-ffea3991313b.jpg?im_w=720', 69);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/df29fdbd-a1de-4376-91f3-9131cda3483a.jpg?im_w=720', 69);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b2024cb4-eee7-4494-8266-ee497bd9140f.jpg?im_w=720', 69);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3618120f-7010-4114-9dc2-516cde79e0f5.jpg?im_w=720', 69);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c11b2630-dea3-45bc-93c1-22162e3db6d4.jpg?im_w=720', 69);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b3edf350-4018-4e0c-b26b-04721001c2b1.jpg?im_w=720', 69);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/15ce84e5-a9ee-4e2d-aef4-70de9b688ed2.jpg?im_w=720', 69);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4dec2590-39cb-4032-ab85-0b48e799e7fc.jpg?im_w=720', 69);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7177064c-7cd9-4c85-b28a-35076ee69c77.jpg?im_w=720', 69);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6adf7ed2-b9cc-42de-bf51-61e08d06d2f0.jpg?im_w=720', 69);
insert into location(id, latitude, longitude, city_name)
values (70, 37.478, 126.962, '경기');
insert into review (id, star, review)
values (70, 4.5, 56);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (70, '낙성대역 3분 역세권 숙소 - B02호', 'Gwanak-gu의 아파트 전체', 100000, '집 전체', 1, 1, 1, 70, 70, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/e1b962a2-db94-4229-9be5-0ae4e3f1108f.jpg?im_w=720', 70);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/38495c02-ba2d-4bee-b569-67b6bbe2c07b.jpg?im_w=720', 70);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0c372e3b-67cd-489f-9fa9-acad3a4376cd.jpg?im_w=720', 70);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/141eb352-e4f9-4ec3-b47c-92051968bae5.jpg?im_w=720', 70);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/30708eaf-2920-4ff1-90e6-401d6414bad0.jpg?im_w=720', 70);
insert into location(id, latitude, longitude, city_name)
values (71, 37.579, 127.023, '경기');
insert into review (id, star, review)
values (71, 0, 2);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (71, 'HOSTEL SEOUL - Double room with a bathroom', 'Sungin 2(i)-dong, Jongno-gu의 개인실', 95000, '개인실', 0, 2, 1, 71,
        71, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/1b363415-58b7-4a1f-9d61-a2a6b10e3996.jpg?im_w=720', 71);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f6c93e58-9cb5-47e3-842b-b042c1894979.jpg?im_w=720', 71);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49239379/original/ac61924d-d7cd-4e71-b45c-ded668968e9c.jpeg?im_w=720',
        71);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49150712/original/c8e15eee-e1a0-4e91-912d-4bf2fca6860b.jpeg?im_w=720',
        71);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49131805/original/f40b5394-42b9-4e71-ab39-7593dee4d5aa.jpeg?im_w=720',
        71);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8012bdbf-e281-4fc8-b645-ef663143135d.jpg?im_w=720', 71);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/46bf7e9a-23dc-4174-864f-8967b7859175.jpg?im_w=720', 71);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/daf17c3d-3520-4103-8135-38fc6e6865aa.jpg?im_w=720', 71);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9f52c84f-e648-4208-916e-194e64ec48fa.jpg?im_w=720', 71);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ed01fcd7-a882-41e7-a5b2-662ba2a36938.jpg?im_w=720', 71);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a0528d71-018f-45c1-bee9-d38b5dcf29a6.jpg?im_w=720', 71);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c5264df5-f483-4021-96dd-ef85f184a7c2.jpg?im_w=720', 71);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/45d9e8ca-1d15-4dda-b4a7-02696cbce714.jpg?im_w=720', 71);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49150712/original/4bdb422a-949b-47d8-85d7-eac0dc2b8caa.jpeg?im_w=720',
        71);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49150712/original/190c7b35-04b1-4519-a66d-e217530f7bdd.jpeg?im_w=720',
        71);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49150712/original/b808fea9-3f14-4fd8-881e-79e55fa6ce34.jpeg?im_w=720',
        71);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49239379/original/a2e2dabd-49a6-4862-84f8-b79dd38d9605.jpeg?im_w=720',
        71);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49239379/original/ee47672b-9a15-40ce-9e79-eed71d07619b.jpeg?im_w=720',
        71);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c4517a03-8adf-403b-8896-a51124df5806.jpg?im_w=720', 71);
insert into location(id, latitude, longitude, city_name)
values (72, 37.711, 126.932, '경기');
insert into review (id, star, review)
values (72, 5, 310);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (72, '일영댁 1층  서울근교에서 전원을 느낄수있는 곳  ♪♪', 'Yangju-si의 게스트용 별채 전체', 90000, '집 전체', 2, 4, 1, 72, 72, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/d583afe8-6540-4fa6-8cf2-58cd2d71bebf.jpg?im_w=720', 72);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2c9e1756-3e46-4fe7-9c97-3e8ee8e45b55.jpg?im_w=720', 72);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/82d16429-77b6-4436-bed7-6275f0116228.jpg?im_w=720', 72);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cf8cc7af-fb80-4d04-88ba-d44a7c90dab5.jpg?im_w=720', 72);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/24347da9-edac-4501-9438-45fcb43674ed.jpg?im_w=720', 72);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cca02cd3-591d-4541-83e0-e33deb84a545.jpg?im_w=720', 72);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0eb94903-9913-4e44-8afd-7290adc8bea4.jpg?im_w=720', 72);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ed166805-dc55-4eab-bae8-74bde2fb6d7b.jpg?im_w=720', 72);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/16f7d1f5-eb4e-4113-9164-2c9898645389.jpg?im_w=720', 72);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/36338047-cd1f-4d64-8186-13e562f5a92b.jpg?im_w=720', 72);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f3c5455e-ecce-4253-aaef-4fef39ea1266.jpg?im_w=720', 72);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5aaa6dfc-a876-4c48-a5d7-4ce8e769a2f9.jpg?im_w=720', 72);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8d5e69b8-749c-4c55-8bf1-6413edaf6ae5.jpg?im_w=720', 72);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/874d0d30-1cd6-447f-88e8-79a5555759cf.jpg?im_w=720', 72);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f1f0abf6-8a3d-4661-848a-ebbe2ef1ead9.jpg?im_w=720', 72);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4e371d28-960b-4068-a00a-fbc5962cdf31.jpg?im_w=720', 72);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/159759f4-1f49-4417-b24c-19738834a61c.jpg?im_w=720', 72);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/98a736e1-538b-446a-b521-b402bd5a5d59.jpg?im_w=720', 72);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7c162db2-5993-4dce-bed1-f03708cb594c.jpg?im_w=720', 72);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/39793b50-8c27-49be-9a09-ef36442e9f7e.jpg?im_w=720', 72);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/84f4c5a5-3afc-4e3f-b15e-ec0deeda7823.jpg?im_w=720', 72);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ccbae13b-6c17-4b0c-a4b5-b2c2d1b043b9.jpg?im_w=720', 72);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bf9b6961-bbb6-436b-880a-842549f39562.jpg?im_w=720', 72);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bc59c509-af6c-475d-97ce-75233220682d.jpg?im_w=720', 72);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4bb2a9ab-6c7e-463c-b411-04a5ab8f149f.jpg?im_w=720', 72);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/99936f07-7503-4143-ac22-d498122e88e0.jpg?im_w=720', 72);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/095c96cd-c4ca-4700-a41f-45f36cb20985.jpg?im_w=720', 72);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2f3aa767-f063-4d01-aa7b-7cf223134315.jpg?im_w=720', 72);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/23abf5a6-0c5a-493f-aa2e-fec1c717162b.jpg?im_w=720', 72);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/848095ab-5a9e-40ec-bc2f-bc348ccf81f1.jpg?im_w=720', 72);
insert into location(id, latitude, longitude, city_name)
values (73, 37.716, 127.706, '경기');
insert into review (id, star, review)
values (73, 5, 75);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (73, '운공_새소리가 들리는 시골의 작은 한옥', 'Bukbang-myeon, Hongcheon의 게스트용 별채 전체', 89000, '집 전체', 1, 2, 1, 73, 73, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/f73b5bf5-5230-48d3-a39c-e5b565b7a757.jpg?im_w=720', 73);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bfec9f53-0b3e-45cf-8a89-be46316c10ca.jpg?im_w=720', 73);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/51bf6b9a-a466-4e06-9309-362ef6eecc52.jpg?im_w=720', 73);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dbffaf1a-2f6f-4236-874d-de089fc580db.jpg?im_w=720', 73);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/084d931b-8598-4e3e-bb76-f7ee8046661c.jpg?im_w=720', 73);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e4425f8f-2d65-4dca-9e51-64da87f9fbec.jpg?im_w=720', 73);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/928e1915-15ce-42e9-9c0d-39b44d8d359a.jpg?im_w=720', 73);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cb56bb0d-a350-4b61-bca6-5f2de9d8e51f.jpg?im_w=720', 73);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7d44ff7c-e3f1-48d3-856d-e98b772c8270.jpg?im_w=720', 73);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1804ba69-369b-4f57-adc4-15a167f972ab.jpg?im_w=720', 73);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b75bd073-5788-4713-93a0-807988ad5ad9.jpg?im_w=720', 73);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0358f71a-267f-487e-a5c0-34f79536d330.jpg?im_w=720', 73);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4b037bc1-d377-4254-901a-eda521bdeaf7.jpg?im_w=720', 73);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/99bc6bd2-07f9-4bca-8249-6f27fa9df063.jpg?im_w=720', 73);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ddfcfc88-79b8-4efb-90bc-806def663c57.jpg?im_w=720', 73);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7f81752f-4231-4432-a11c-e6dee4c619b4.jpg?im_w=720', 73);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/141f93ee-400d-4878-b534-ada80f1c4188.jpg?im_w=720', 73);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3051cdd3-56d5-409a-90db-786330785049.jpg?im_w=720', 73);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9a207765-ae55-4dde-8cb8-98d1feed2572.jpg?im_w=720', 73);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/35e56671-719c-499d-a6ed-6922f33c3a22.jpg?im_w=720', 73);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/33b4a278-b069-408f-aecf-5b34b1a82ca8.jpg?im_w=720', 73);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c47f03f8-9afb-49f9-9c83-5e3bce4613b7.jpg?im_w=720', 73);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/49ba42d4-55e9-49eb-8407-f8f9ab875efb.jpg?im_w=720', 73);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dc5e4d44-4ecd-4b9e-a65a-7aa4ee424b4f.jpg?im_w=720', 73);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/75a522c5-6ef8-4da4-8b1c-ab03319dd82c.jpg?im_w=720', 73);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9e2696c5-9cbe-4bc9-a309-64ccdbcaac0b.jpg?im_w=720', 73);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8facc76e-dd92-40c9-b628-f075dd8299de.jpg?im_w=720', 73);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/521133ca-c7a2-4859-9bcf-74c2c0a7e76f.jpg?im_w=720', 73);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fbb5baa6-f454-4f8a-9ff4-f6a727b4191b.jpg?im_w=720', 73);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0c8ba8a2-d297-4756-8d88-00ffd8524c9c.jpg?im_w=720', 73);
insert into location(id, latitude, longitude, city_name)
values (74, 37.662, 126.506, '경기');
insert into review (id, star, review)
values (74, 5, 54);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (74, '다락(多樂)-guesthouse', 'Buleun-myeon, Kanghwa의 개인실', 90000, '개인실', 0, 2, 2, 74, 74, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/ca39d492-4c26-4f63-b1b5-eed7d39fe45c.jpg?im_w=720', 74);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/53d09e0a-a21c-42d2-9d0d-dece13a70ceb.jpg?im_w=720', 74);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bc2cbf90-2aaa-4e05-9c45-3ca3e6adc708.jpg?im_w=720', 74);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4a4562c7-a0c6-4b03-aa95-c630a7f0e5a9.jpg?im_w=720', 74);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/affe460d-4853-4269-b010-714389fbdca8.jpg?im_w=720', 74);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fafe4319-1f63-458b-bc35-1c8085f69e61.jpg?im_w=720', 74);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0b1d3e40-b2c5-4abf-a08d-a6e313f4df9c.jpg?im_w=720', 74);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3a14a7da-104c-4eda-808a-96968a0232e7.jpg?im_w=720', 74);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/13eb5dd5-5cfa-42ef-9a80-293481c3f30d.jpg?im_w=720', 74);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/efbff560-dcfe-4f60-a75d-115302e6f8eb.jpg?im_w=720', 74);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bb93c2e2-0578-42fd-a473-db69d50e2238.jpg?im_w=720', 74);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ff205422-7a28-4f0f-9673-583b2bb63a7c.jpg?im_w=720', 74);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e7173cef-2bcc-4971-964e-2bc8d5f91856.jpg?im_w=720', 74);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/77445e56-73d4-4a9c-b19b-b9e6e42a57f2.jpg?im_w=720', 74);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c8ad1223-e5bb-4c56-8021-713b70d5c2e8.jpg?im_w=720', 74);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/287da5c0-964a-46cc-b173-a98f8f787b7f.jpg?im_w=720', 74);
insert into location(id, latitude, longitude, city_name)
values (75, 37.579, 127.023, '경기');
insert into review (id, star, review)
values (75, 0, 0);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (75, 'HOSTEL SEOUL - Single Room with a bathroom (301)', 'Sungin 2(i)-dong, Jongno-gu의 개인실', 95000, '개인실', 0, 1,
        1, 75, 75, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49658744/original/fe02bf3a-b99e-4c22-8f62-5f8fdb70556c.jpeg?im_w=720',
        75);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49507837/original/576cc5b7-8114-4466-9376-45c259780fd5.jpeg?im_w=720',
        75);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49507837/original/edd18b3e-ca0e-4e92-af7b-9119f279dce0.jpeg?im_w=720',
        75);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1b363415-58b7-4a1f-9d61-a2a6b10e3996.jpg?im_w=720', 75);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f6c93e58-9cb5-47e3-842b-b042c1894979.jpg?im_w=720', 75);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49239379/original/ac61924d-d7cd-4e71-b45c-ded668968e9c.jpeg?im_w=720',
        75);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49150712/original/c8e15eee-e1a0-4e91-912d-4bf2fca6860b.jpeg?im_w=720',
        75);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49131805/original/f40b5394-42b9-4e71-ab39-7593dee4d5aa.jpeg?im_w=720',
        75);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8012bdbf-e281-4fc8-b645-ef663143135d.jpg?im_w=720', 75);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/46bf7e9a-23dc-4174-864f-8967b7859175.jpg?im_w=720', 75);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/daf17c3d-3520-4103-8135-38fc6e6865aa.jpg?im_w=720', 75);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9f52c84f-e648-4208-916e-194e64ec48fa.jpg?im_w=720', 75);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ed01fcd7-a882-41e7-a5b2-662ba2a36938.jpg?im_w=720', 75);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a0528d71-018f-45c1-bee9-d38b5dcf29a6.jpg?im_w=720', 75);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c5264df5-f483-4021-96dd-ef85f184a7c2.jpg?im_w=720', 75);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/45d9e8ca-1d15-4dda-b4a7-02696cbce714.jpg?im_w=720', 75);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49150712/original/4bdb422a-949b-47d8-85d7-eac0dc2b8caa.jpeg?im_w=720',
        75);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49150712/original/190c7b35-04b1-4519-a66d-e217530f7bdd.jpeg?im_w=720',
        75);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49150712/original/b808fea9-3f14-4fd8-881e-79e55fa6ce34.jpeg?im_w=720',
        75);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49239379/original/a2e2dabd-49a6-4862-84f8-b79dd38d9605.jpeg?im_w=720',
        75);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49239379/original/ee47672b-9a15-40ce-9e79-eed71d07619b.jpeg?im_w=720',
        75);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c4517a03-8adf-403b-8896-a51124df5806.jpg?im_w=720', 75);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49658744/original/82a32b30-7041-422e-af9f-fcb4919cdd8e.jpeg?im_w=720',
        75);
insert into location(id, latitude, longitude, city_name)
values (76, 37.638, 126.625, '경기');
insert into review (id, star, review)
values (76, 5, 6);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (76, 'Penthouse, new apartment in a nice neighborhood', 'Yangchon-eup, Gimpo-si의 개인실', 80000, '개인실', 0, 2, 1, 76,
        76, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/a645551f-0392-4b3b-a8d2-2add8fe334f8.jpg?im_w=720', 76);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c9c55d96-4443-44bf-a9fd-15978d5935c8.jpg?im_w=720', 76);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fd45eae1-8cbb-4ff9-b68a-4c5c6327d78b.jpg?im_w=720', 76);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5c691184-0d14-416c-9788-ee25ad87f214.jpg?im_w=720', 76);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/196e8a32-00fd-4380-a3fb-f242e4b7d718.jpg?im_w=720', 76);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4a5a37cb-e339-4411-8e73-efdfe8e76cbf.jpg?im_w=720', 76);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7bef0c62-bfee-4040-9b16-baf921688d8d.jpg?im_w=720', 76);
insert into location(id, latitude, longitude, city_name)
values (77, 37.586, 127.029, '경기');
insert into review (id, star, review)
values (77, 4, 3);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (77, 'Noble Residence Korea Univ. 2nd with toilet (02)', '성북구의 개인실', 95000, '개인실', 1, 1, 1, 77, 77, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44042339/original/e8ef0ee8-d7d9-423a-9b33-c5e7527c85d2.jpeg?im_w=720',
        77);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a15f6d25-99de-4072-a3bd-4aa961b4f1bd.jpg?im_w=720', 77);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44042339/original/22cde3b5-093d-4b08-8992-62073062b45c.jpeg?im_w=720',
        77);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44042339/original/81bec41b-bcaf-4bd1-865e-4dd708d74658.jpeg?im_w=720',
        77);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44042339/original/61383a05-6750-4ace-84c7-1932af1f5516.jpeg?im_w=720',
        77);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44042339/original/940edbe9-0a72-4017-a21d-4ea807b29f51.jpeg?im_w=720',
        77);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44042339/original/1de13c3f-d706-4f87-b9d0-b2f848524177.jpeg?im_w=720',
        77);
insert into location(id, latitude, longitude, city_name)
values (78, 37.885, 127.755, '경기');
insert into review (id, star, review)
values (78, 5, 17);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (78, '벨라루나W♡   도심속 휴양지 ♡ 노천스파 즐기러 오세요♡', 'Hupyeong-dong, Chuncheon의 집 전체', 90000, '집 전체', 1, 2, 1, 78, 78, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/b2e3b21c-68c5-4fab-a546-b9f776103e58.jpg?im_w=720', 78);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a629a164-0026-409c-8ce7-72fb85fc78c9.jpg?im_w=720', 78);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3758073d-cfe4-4ff1-aad5-c0a506dc540a.jpg?im_w=720', 78);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e13bb492-eb4c-4f7b-be92-135621696eb9.jpg?im_w=720', 78);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e101d197-17cb-4cae-81ed-a128b8442d7c.jpg?im_w=720', 78);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e3e36132-4b76-4711-82a1-130ae3013822.jpg?im_w=720', 78);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d2acf5c8-42b2-427d-b14c-e3bc8d809bfd.jpg?im_w=720', 78);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/36b9426b-fe17-4077-b539-b1ca2b12d9b7.jpg?im_w=720', 78);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6f206001-e944-4c51-a608-20e589b0358b.jpg?im_w=720', 78);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2c4973e3-47f8-403d-a0a4-9378becef561.jpg?im_w=720', 78);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/66ffc28f-3739-4931-9cc0-e85a17ff4af1.jpg?im_w=720', 78);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/837fa64f-9dbe-4bfa-a31e-4b9ffe07d8f9.jpg?im_w=720', 78);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ec995ad9-73c7-4550-ba96-4a11a7f2f7e3.jpg?im_w=720', 78);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/33f7ebf1-6b79-49e4-b31a-d47717a1ee04.jpg?im_w=720', 78);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0dc4df97-4d1f-4e37-a9f8-a1e28d26baf6.jpg?im_w=720', 78);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ef75ea3e-0c4a-4fdc-acd9-20498f378c99.jpg?im_w=720', 78);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c3433fae-a140-44f1-bd60-e66e80a9d697.jpg?im_w=720', 78);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/48aa5007-ca48-476d-9a1e-5f6823386db2.jpg?im_w=720', 78);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f9b12367-8e80-40f1-9dc5-e43b484286c5.jpg?im_w=720', 78);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a713ecba-7143-4d0c-805a-b99efb96ea2e.jpg?im_w=720', 78);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/837fa04a-7e7e-403b-8c4e-cc3028b34f4c.jpg?im_w=720', 78);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1a3d238c-baca-4eca-a991-0a79092ae153.jpg?im_w=720', 78);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4765b515-e177-4af0-a621-0862e2ad59ca.jpg?im_w=720', 78);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d36ee4d0-9ea7-4361-8a1c-20f0c4ebc88e.jpg?im_w=720', 78);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/61ba3b23-7319-4153-b50a-3e7bd75b7b07.jpg?im_w=720', 78);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f2199284-89d3-4efc-a2ba-d64c725bb100.jpg?im_w=720', 78);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6c0f6a2f-babb-4a35-9de7-502ee9105846.jpg?im_w=720', 78);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bc6bcd3d-66d7-45fd-b9e3-94e29303c388.jpg?im_w=720', 78);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c816e305-ae44-4b79-98ee-b4c2513412d3.jpg?im_w=720', 78);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/839f346b-6e0f-42e9-96bd-b5cb1c8a3d4a.jpg?im_w=720', 78);
insert into location(id, latitude, longitude, city_name)
values (79, 37.58, 127.005, '경기');
insert into review (id, star, review)
values (79, 4.5, 55);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (79, '대학로 Mins House!!401', 'Ihwa-dong, Jongno-gu의 게스트용 별채 전체', 100000, '집 전체', 1, 2, 0, 79, 79, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/ce32c273-7ce6-49de-bd79-2413fcae84d5.jpg?im_w=720', 79);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8d959e6d-c7aa-4979-bbf4-3f9d65993d34.jpg?im_w=720', 79);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d9546211-7a66-4e39-a1b2-6d180db71bf4.jpg?im_w=720', 79);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f55e4d2b-090a-4bad-a3fc-10509a60bebd.jpg?im_w=720', 79);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6f0d7027-8954-4f7f-b6e9-4c161b3b5af3.jpg?im_w=720', 79);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d0bce30d-e764-4b8e-bb00-e93cb80c4b53.jpg?im_w=720', 79);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ce1396c6-3f63-41ff-8abd-a573188c7301.jpg?im_w=720', 79);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/75a1e008-0cd9-46a4-9268-eb1d01ab245f.jpg?im_w=720', 79);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b7cd7616-4ed9-44f3-ae83-9d0a4843ac15.jpg?im_w=720', 79);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3682c1be-96e8-4851-931e-c1aef17f89b2.jpg?im_w=720', 79);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/22b5d913-dcd4-4819-888e-0d23372deeae.jpg?im_w=720', 79);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5986b5a1-50a9-411d-a259-f78d033ac028.jpg?im_w=720', 79);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3b5a4b4b-3b9b-4fe7-ad6c-f63cc99d9187.jpg?im_w=720', 79);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c274dc07-194f-410c-ad38-e5e1ae2803bb.jpg?im_w=720', 79);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6587aec6-88ed-478e-bf95-973465ed111a.jpg?im_w=720', 79);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a5fcaf77-6003-432e-8dfe-cdcd48fa71c5.jpg?im_w=720', 79);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/926e2437-dad9-43c5-8c2e-f7efec310314.jpg?im_w=720', 79);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1569248f-01a1-406e-8ad3-8dfb1780a7cf.jpg?im_w=720', 79);
insert into location(id, latitude, longitude, city_name)
values (80, 37.496, 127.42, '경기');
insert into review (id, star, review)
values (80, 5, 8);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (80, '나만의 휴식(Only me) - 편백나무 가든 룸
(전원주택, 자가격리 미운영)', 'Yangpyoung-gun, Yangpyeong의 개인실', 90000, '개인실', 1, 1, 1, 80, 80, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/8d7f0fb4-8fb6-4f06-9832-90e99ef06531.jpg?im_w=720', 80);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8a6b0a79-4f22-4fcd-bfea-3d1dc06204ae.jpg?im_w=720', 80);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/12bbe21f-e105-4ba8-a8c8-42af31e9a6f4.jpg?im_w=720', 80);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/643df8d1-9541-477e-83f2-65a4084c94f2.jpg?im_w=720', 80);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/77183baf-1e82-48fd-abed-3a1d74e69c0f.jpg?im_w=720', 80);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b36605a2-0195-487f-9247-6c1ed5d1040b.jpg?im_w=720', 80);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cd63dd9d-baf5-480c-bfd2-a4be41ac5afc.jpg?im_w=720', 80);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9a3be4ca-e3a1-47a1-9244-a82d3cdeb5e2.jpg?im_w=720', 80);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/75fae6a2-ef57-4c42-836c-2df9fff1f9db.jpg?im_w=720', 80);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/39082237-73da-407e-9860-2b4d9d658757.jpg?im_w=720', 80);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c0ddfaff-5b33-4927-bc85-17f8d49486f6.jpg?im_w=720', 80);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/90a458ef-5fbd-4aaa-9477-f24b815ef296.jpg?im_w=720', 80);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b037022c-0773-4e33-b29a-0140c7846924.jpg?im_w=720', 80);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e8542874-c150-4f80-9e22-fdb9b9499137.jpg?im_w=720', 80);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/143f0dfa-1b06-4ca1-975e-7356010965ac.jpg?im_w=720', 80);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4cf1294e-f4e3-4da3-9048-73c5b279918e.jpg?im_w=720', 80);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b2a5f604-5311-4f4e-ac78-10f47f395020.jpg?im_w=720', 80);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/907849e2-1f71-49d4-b869-518b47dfa633.jpg?im_w=720', 80);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c423319b-a6ca-4081-8220-4809343e4e95.jpg?im_w=720', 80);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/51d6f666-9d78-4118-b7ad-61964b2d5142.jpg?im_w=720', 80);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f0e79f9f-2e22-4a8f-8d56-5c6abdf33331.jpg?im_w=720', 80);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dd9a55cc-7317-4166-bb69-1c51b4104fd0.jpg?im_w=720', 80);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e865dcd9-81e7-4ec3-a1ab-1f46c512ad9d.jpg?im_w=720', 80);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/de75ddfd-9701-4927-809a-c6d2090203fb.jpg?im_w=720', 80);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/53d2c2d7-4039-4e45-ae91-6125104f845a.jpg?im_w=720', 80);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7838adfa-825c-4089-b4b9-331d41d4ae29.jpg?im_w=720', 80);
insert into location(id, latitude, longitude, city_name)
values (81, 37.26, 127.06, '경기');
insert into review (id, star, review)
values (81, 4.5, 3);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (81, '삼성 전자 3분 # 장기출장 # 편안한 휴식이 되는 공간 # 원룸전체 # 깨끗한 새집', 'Yeongtong-gu, Suwon-si의 아파트 전체', 98000, '집 전체', 1, 1, 1,
        81, 81, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/780334cd-44eb-40bd-8912-463446afbb0f.jpg?im_w=720', 81);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b417d4a2-0f97-4112-b4ce-91a5181694f2.jpg?im_w=720', 81);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/45978253-b856-415b-bcaf-06d0e74bf5d2.jpg?im_w=720', 81);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ff6f014e-369d-4584-a6a4-f6a4112e0227.jpg?im_w=720', 81);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e8c254f1-07cd-4a6b-9f44-fb22f1cf6b2b.jpg?im_w=720', 81);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bc2d5ee4-3980-429a-b39e-588883ea927a.jpg?im_w=720', 81);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6c9c7a46-7ef6-4ed6-b3c9-ad01c5e53e06.jpg?im_w=720', 81);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/48e522b2-4147-41e5-85e3-0d55d328608d.jpg?im_w=720', 81);
insert into location(id, latitude, longitude, city_name)
values (82, 37.445, 127.559, '경기');
insert into review (id, star, review)
values (82, 5, 111);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (82, '양평 산수유마을 별채', 'Gaegun-myeon, Yangpyeong-gun의 게스트용 별채 전체', 85000, '집 전체', 0, 2, 1, 82, 82, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/d50ec0bc-250d-4ed5-9e91-411060f423c0.jpg?im_w=720', 82);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/78c6e12c-28ad-460e-833b-2b6b7a89074c.jpg?im_w=720', 82);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4a8fa3f1-ee1f-482c-aed3-18725c1754f0.jpg?im_w=720', 82);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/eb63e443-9e97-49c7-baba-3692740e99e2.jpg?im_w=720', 82);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/986a29c7-cb08-4c0e-a14e-aaffaac9d625.jpg?im_w=720', 82);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/861dcff8-5d7f-4259-b30b-f1e9da326bbb.jpg?im_w=720', 82);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0e92b561-357e-40e4-8204-7ea863b1ec69.jpg?im_w=720', 82);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d734e522-d3a5-42c6-9cd5-41b14df591dd.jpg?im_w=720', 82);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d4275d4c-859b-4273-92e7-d0c95d708e9e.jpg?im_w=720', 82);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b8c81624-9ac7-43fd-b6fa-d2121ae0b138.jpg?im_w=720', 82);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/75f7a40c-b290-4bbc-85cb-56712095c647.jpg?im_w=720', 82);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7f8eeb44-7898-4d84-8411-31d8b5f262a5.jpg?im_w=720', 82);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/40881751-fe18-4358-a7f6-807cf7d2e6bc.jpg?im_w=720', 82);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/85d5801f-38f2-4eaf-baa1-a4163775b2f9.jpg?im_w=720', 82);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ef2fc451-7c41-4a88-ae0b-e1844646e5a6.jpg?im_w=720', 82);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9f13dc0f-28a8-4dcf-89d2-7b0c05afc949.jpg?im_w=720', 82);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a9bf3d9b-2eeb-4631-9084-1b6594d152df.jpg?im_w=720', 82);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/49472fd3-62f6-45cf-838c-09bcaf9011a2.jpg?im_w=720', 82);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d9a65aaa-f084-44b2-99c9-beda7e3945d3.jpg?im_w=720', 82);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/38178dc4-11ed-48c9-a0ee-7dbf8727b4f5.jpg?im_w=720', 82);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6d559a18-9795-42c8-998f-c8d41ae1b416.jpg?im_w=720', 82);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9fb3a449-db66-4f5d-84a7-0887fa89143d.jpg?im_w=720', 82);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3c6a0fdd-9d1c-45c8-8ae3-76507f301c2c.jpg?im_w=720', 82);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7b9e764c-94ea-43c6-b34c-52e960f54fcb.jpg?im_w=720', 82);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2dd31e25-4b5e-4bb9-b5b5-45f8e26a3340.jpg?im_w=720', 82);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5cfd0a72-35ee-4532-a104-71c5c515cd33.jpg?im_w=720', 82);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dc7f971f-00db-481e-af22-b89d2a70255a.jpg?im_w=720', 82);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/21c31599-826e-46da-a4cc-941085da91ee.jpg?im_w=720', 82);
insert into location(id, latitude, longitude, city_name)
values (83, 37.569, 126.99, '경기');
insert into review (id, star, review)
values (83, 5, 28);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (83, '종로3가역 종각역 국일관 YBM어학원근처 가성비 갑 숙소 -  1', '종로구의 개인실', 95000, '개인실', 1, 1, 1, 83, 83, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/348aad06-6b03-4725-b37d-6adb38eac034.jpg?im_w=720', 83);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8473d030-4134-48f7-87ff-960810b69e95.jpg?im_w=720', 83);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c8678e29-5441-4d81-983e-d124491d6661.jpg?im_w=720', 83);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f50e87d9-53f2-41f2-9fa2-9fc7bc87fad6.jpg?im_w=720', 83);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d31186ab-16b4-46b1-8290-07021ca317c1.jpg?im_w=720', 83);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3d4b9bda-b9bd-4720-a770-a3a0a475e45f.jpg?im_w=720', 83);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d14b0e31-d3fa-4fa2-b242-ae013a355081.jpg?im_w=720', 83);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/be45b09b-b08e-4b79-9dfc-f08f6e14bbea.jpg?im_w=720', 83);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6fa21f23-bb75-43ee-a359-fafea67a3271.jpg?im_w=720', 83);
insert into location(id, latitude, longitude, city_name)
values (84, 37.26, 127.06, '경기');
insert into review (id, star, review)
values (84, 4.5, 19);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (84, '삼성 전자 도보 3분 #장기출장 #원룸 전체 # 깨끗하고 아늑한 공간', 'Yeongtong-gu, Suwon-si의 콘도(아파트) 전체', 98000, '집 전체', 1, 1, 1, 84,
        84, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/0b3a6b22-fe15-45a8-adff-e809f09a37b8.jpg?im_w=720', 84);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/83047c59-579c-4280-b529-a11f78032bf3.jpg?im_w=720', 84);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/131db977-cd8b-4e26-a5ed-25fbe6ec4641.jpg?im_w=720', 84);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9b06c00a-59b7-4ba9-a8ce-64bc62b3a622.jpg?im_w=720', 84);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2b91d18d-88d9-4b1d-a0e1-08597237fe29.jpg?im_w=720', 84);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3e7b1517-e94b-4e28-b131-5c365c0ad1d7.jpg?im_w=720', 84);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/79ed5894-a370-4ab6-a842-6e3f3908106e.jpg?im_w=720', 84);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/47138eae-f1fe-47e0-adfa-74efaab55873.jpg?im_w=720', 84);
insert into location(id, latitude, longitude, city_name)
values (85, 37.349, 127.153, '경기');
insert into review (id, star, review)
values (85, 5, 436);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (85, 'Enjoy Atelier and Fresh Air  레몬하우스', 'Opo-eup, Gwangju-si의 저택 전체', 90000, '집 전체', 1, 2, 2, 85, 85, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/7224999/aef89358_original.jpg?im_w=720', 85);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/94c189cd-6a20-4e3d-b268-a369d4b3dd2f.jpg?im_w=720', 85);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/02b56960-b343-4e1c-9082-1f90dda66e84.jpg?im_w=720', 85);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/047952e5-709d-4a57-9ad8-3392192243b1.jpg?im_w=720', 85);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/977a10af-a068-414a-b916-a770718b92d2.jpg?im_w=720', 85);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7299203/48355de9_original.jpg?im_w=720', 85);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fea13ea3-ec90-4b72-97b5-4c50fe0346f6.jpg?im_w=720', 85);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7224970/f92ef32c_original.jpg?im_w=720', 85);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7225041/5e252d76_original.jpg?im_w=720', 85);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7225240/31d8047b_original.jpg?im_w=720', 85);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7225170/f3c64010_original.jpg?im_w=720', 85);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/50845515/3ad9d526_original.jpg?im_w=720', 85);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7225279/f207b757_original.jpg?im_w=720', 85);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7225884/4f380a7d_original.jpg?im_w=720', 85);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/50845030/ad7c26a2_original.jpg?im_w=720', 85);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7226063/0b021f2f_original.jpg?im_w=720', 85);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7225158/1442a761_original.jpg?im_w=720', 85);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7225942/45498f10_original.jpg?im_w=720', 85);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/39551032/4034c26c_original.jpg?im_w=720', 85);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/50846524/0a565a99_original.jpg?im_w=720', 85);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/eecd88ac-1db0-40ee-97bd-1cc03837e7f2.jpg?im_w=720', 85);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/55681003/b9ddd4a1_original.jpg?im_w=720', 85);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/de4e47d6-945b-400b-8004-3bec0c5a0652.jpg?im_w=720', 85);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-581658/original/39904ad4-1ab8-430a-8217-b5d22064a899.jpeg?im_w=720',
        85);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/495754b2-cc36-4a18-8844-feebedd657be.jpg?im_w=720', 85);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/55681108/35a8f45b_original.jpg?im_w=720', 85);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/40060700/99c6c7ca_original.jpg?im_w=720', 85);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/61134085/7c91f173_original.jpg?im_w=720', 85);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1fa0c209-6337-4b1b-81f9-c4ee8482f312.jpg?im_w=720', 85);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fddace0d-79b5-4027-a3fc-df41dffed7a5.jpg?im_w=720', 85);
insert into location(id, latitude, longitude, city_name)
values (86, 37.984, 127.051, '경기');
insert into review (id, star, review)
values (86, 4.5, 124);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (86, '옐로우 타이니 하우스 Yellow Tiny House', '연천군의 게스트용 별채 전체', 84000, '집 전체', 1, 4, 1, 86, 86, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/dc13b623-27d8-41dc-9e1a-ba8d301e8be3.jpg?im_w=720', 86);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/16251b13-3404-437e-9bf4-fe4392e0d191.jpg?im_w=720', 86);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/17c19daf-abde-4846-9aa2-6abc153bb961.jpg?im_w=720', 86);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/48b1319f-8e06-408a-a3ac-92208c0be85a.jpg?im_w=720', 86);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8ee43193-a63c-4640-bcb2-54aec5f2b789.jpg?im_w=720', 86);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8b0caac0-b17c-4872-98ac-72671572b147.jpg?im_w=720', 86);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2ba4813b-30ea-4633-8fdf-3ce31287c5f8.jpg?im_w=720', 86);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/83673e66-feb7-4598-b08b-18a7906db976.jpg?im_w=720', 86);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f94c4ca0-5e46-4966-8b90-e0d8b24853c5.jpg?im_w=720', 86);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2bd08a04-621f-4033-9acf-9306f51fded7.jpg?im_w=720', 86);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6067c9f1-ac3b-4fe7-a2e5-febc9c8f8c57.jpg?im_w=720', 86);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d43eaf00-decd-495e-9df7-a4374174327d.jpg?im_w=720', 86);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/751bf153-4ce2-4954-850f-74666dfdd56f.jpg?im_w=720', 86);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/383f61bf-4d13-4399-b128-023ff90ea535.jpg?im_w=720', 86);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bf397d12-a876-4919-a74a-345e0939562b.jpg?im_w=720', 86);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7de8c792-68b2-49b3-a8aa-80998f38a0be.jpg?im_w=720', 86);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1580f611-1413-4fd3-ad97-b2448bf40149.jpg?im_w=720', 86);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b7bbebe7-2835-4302-bed7-fdac3b25689c.jpg?im_w=720', 86);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/16b7ebb1-802b-4edd-91b5-f4483bcd8dec.jpg?im_w=720', 86);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fb2c7100-7965-4703-be0c-6f8ba7c831f0.jpg?im_w=720', 86);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a583a702-ee9e-4a03-86ca-bbd1034680fd.jpg?im_w=720', 86);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/421534dc-73f6-4b68-8a1d-7b814f7ebcf6.jpg?im_w=720', 86);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1d752b3d-924c-4a26-bae0-4aeb99315688.jpg?im_w=720', 86);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9756a4a6-3643-40c6-b009-88d4049ed010.jpg?im_w=720', 86);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bf6a0c0a-d3b3-4c1a-959c-0417206d9fc4.jpg?im_w=720', 86);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/aac83686-fea9-40be-b7da-59c7b233b2b4.jpg?im_w=720', 86);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/79a916f3-3f05-48f2-95de-851e3360d3e1.jpg?im_w=720', 86);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2090e03c-471c-474d-a51b-909ccba6369b.jpg?im_w=720', 86);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/585ff0f4-0216-49a0-a094-2faa790378f2.jpg?im_w=720', 86);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ab8427f2-b2ec-41d6-ab0c-9da2ebc01863.jpg?im_w=720', 86);
insert into location(id, latitude, longitude, city_name)
values (87, 37.714, 126.763, '경기');
insert into review (id, star, review)
values (87, 5, 62);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (87, '• Saudade 사우다지 🌱', 'Unjeong 3(sam)-dong, Paju-si의 집 전체', 100000, '집 전체', 2, 6, 2, 87, 87, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/5e22526a-3973-4a4c-94b6-acfc8859e3d4.jpg?im_w=720', 87);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a08df792-6896-4c77-a067-2a4ddf846f37.jpg?im_w=720', 87);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43026496/original/ea2b747d-d449-443d-b1ff-d3b5f12070ed.jpeg?im_w=720',
        87);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/93e525e4-0bca-4402-a384-3c1d9d760915.jpg?im_w=720', 87);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6d5facc2-ec8d-4370-8f0d-15ecc664d01e.jpg?im_w=720', 87);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fee17237-2ddf-4697-91db-1cb4857c830c.jpg?im_w=720', 87);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43026496/original/e929594d-12b5-4815-8ffd-9af1e5a56735.jpeg?im_w=720',
        87);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43026496/original/70856a11-33e6-4dc9-895c-745cc1be6a97.jpeg?im_w=720',
        87);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43026496/original/df1c219b-e5ac-42a5-a44a-41f68731911c.jpeg?im_w=720',
        87);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4a1ca157-8898-4143-96b9-2152f060ece9.jpg?im_w=720', 87);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/043a07e1-81b3-4d22-ab2e-8749c6e459d7.jpg?im_w=720', 87);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43026496/original/77face35-d179-4e12-ab18-c5ee7e2924bf.jpeg?im_w=720',
        87);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43026496/original/0e7273cb-3950-4585-be11-72cb04f57859.jpeg?im_w=720',
        87);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43026496/original/c6837590-e6ab-4f75-b65b-a5b1ee424cba.jpeg?im_w=720',
        87);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43026496/original/67769a9a-e95e-47b9-b486-7adced763f32.jpeg?im_w=720',
        87);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ae35c7c3-c1e4-4b25-bd3a-21a53ddaa4f5.jpg?im_w=720', 87);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cf30fc27-6e80-4c48-b756-5fc19efcfd22.jpg?im_w=720', 87);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/507903e8-9383-4ff7-8d7f-aa65cae5f363.jpg?im_w=720', 87);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/df0e614c-065e-42b2-910d-9489bc5461b1.jpg?im_w=720', 87);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5255e884-52c9-43d3-90b4-1361785ba38a.jpg?im_w=720', 87);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e193bf63-6a4b-4685-bc08-c05786984695.jpg?im_w=720', 87);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9eb8a59f-7917-44ed-b4fd-9de54b87267a.jpg?im_w=720', 87);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/48d07aaf-3dd1-4001-a3cb-81667931045e.jpg?im_w=720', 87);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6d191d56-69ec-4cb7-8c94-d1d034870309.jpg?im_w=720', 87);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/81e23fd1-d552-422e-9adf-f98cca9d0b52.jpg?im_w=720', 87);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/82dccad7-9a3a-432d-80b3-102b2757606b.jpg?im_w=720', 87);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bfaee99f-130f-40c7-a672-8dc107201616.jpg?im_w=720', 87);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c8379b8d-0347-4714-9a0a-f9771f7636dc.jpg?im_w=720', 87);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b39262c7-ef39-49da-903d-2418216c56ce.jpg?im_w=720', 87);
insert into location(id, latitude, longitude, city_name)
values (88, 37.484, 126.953, '경기');
insert into review (id, star, review)
values (88, 5, 32);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (88, 'Cozy & Clean Studio at SNU Station #101', 'Jungang-dong, Gwanak-gu의 콘도(아파트) 전체', 85000, '집 전체', 1, 1, 1,
        88, 88, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/92a21b61-c9e3-411c-8360-2e0ad9f7bb14.jpg?im_w=720', 88);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/02fc58b0-7977-45f8-97f7-1276d2a624b8.jpg?im_w=720', 88);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/10cd2f2e-63fb-4f90-8c84-d187380a9ee7.jpg?im_w=720', 88);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/71857c86-d11c-4a3f-b27d-88817af91cd6.jpg?im_w=720', 88);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5f27dfa6-cd27-487f-9231-b4471ff36cd2.jpg?im_w=720', 88);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/de0cb983-29b2-4d29-a1d1-63adc073b444.jpg?im_w=720', 88);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3d34c36d-3fa0-4ff4-8673-f03d2aba5ef7.jpg?im_w=720', 88);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3e46040b-2328-4f57-a0ff-7fdcdc2aa435.jpg?im_w=720', 88);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8acd3bd5-7d81-4f17-98fd-f16b55382572.jpg?im_w=720', 88);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7acd6e2b-5497-4640-881e-4eb07b446546.jpg?im_w=720', 88);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c1a1cb11-2cae-4b9c-9b4f-6f361536fd4f.jpg?im_w=720', 88);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c87d2762-1520-450a-b340-0323cfe6bb72.jpg?im_w=720', 88);
insert into location(id, latitude, longitude, city_name)
values (89, 37.658, 127.067, '경기');
insert into review (id, star, review)
values (89, 5, 165);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (89, 'KIMS ROOFTOP HOUSE #502', 'Sanggye-dong, Nowon-gu의 개인실', 100000, '개인실', 1, 2, 1, 89, 89, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/f42ed3cb-2ee9-489c-97d8-6872fb30eae0.jpg?im_w=720', 89);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0f4aad18-04d0-4d62-94f9-22185be4af0d.jpg?im_w=720', 89);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8fc1e39a-ee0e-4f93-8d2d-f7225bfcf0c8.jpg?im_w=720', 89);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f43d609a-569a-4453-8f58-233d1d3ca08f.jpg?im_w=720', 89);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f759b76d-563c-46d1-8478-5dd3d84c9c53.jpg?im_w=720', 89);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dffb989c-c9e2-40c5-8b30-b685b5206f8b.jpg?im_w=720', 89);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2b40bef4-3854-4692-a3f7-afc024c67764.jpg?im_w=720', 89);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5f540fc5-5a79-456e-b3fb-7694f86e48c8.jpg?im_w=720', 89);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9539603c-2490-40e9-a707-ffda67622bc9.jpg?im_w=720', 89);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f59f684e-276f-41f5-94c7-4c7c53dee842.jpg?im_w=720', 89);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4de3a7b3-3e48-46e7-9f19-042463183f69.jpg?im_w=720', 89);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/de27bcbd-5f30-4d24-978a-d989138bfaa1.jpg?im_w=720', 89);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9506d52f-f0f7-4a4b-afa3-bcfd0f4e0f54.jpg?im_w=720', 89);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3d2bbd6e-7f1d-4964-9db7-3318646e8c82.jpg?im_w=720', 89);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7403ec44-504e-49cd-9f82-514461b2ac42.jpg?im_w=720', 89);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3e519f14-24fb-4d14-af28-2fd7ed0c8b5b.jpg?im_w=720', 89);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/830b9718-a723-4c8e-aa6f-3028fd6f092d.jpg?im_w=720', 89);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a44ba7d9-e8d6-4dde-8716-bb92aaddd369.jpg?im_w=720', 89);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0c4877f4-b013-4b32-82f0-37c090b902dd.jpg?im_w=720', 89);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f577b1d6-fbeb-41fe-b31a-e0f6de30ef78.jpg?im_w=720', 89);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e97b5106-03a3-4485-8059-fd8d91f13b3c.jpg?im_w=720', 89);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6ef1c5e2-00c4-4743-ba23-5681214c5a5a.jpg?im_w=720', 89);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5b759c85-7fbd-46f6-9add-15bc70f6e160.jpg?im_w=720', 89);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9cafc4d4-5498-4289-8647-fb5263e72530.jpg?im_w=720', 89);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1504c98f-2610-4c34-94f0-409b9e13f73a.jpg?im_w=720', 89);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/55283410-6d82-4320-8bba-aa4409d8b238.jpg?im_w=720', 89);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/43ab00c7-01fb-48eb-aaed-6781c1b4e652.jpg?im_w=720', 89);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e3086c65-ceaa-4ab2-97ae-7882441ab114.jpg?im_w=720', 89);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a492c024-82ea-4bdf-89b4-f263da6b01f8.jpg?im_w=720', 89);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/049f0456-1907-4f1b-b059-9a0007fe9247.jpg?im_w=720', 89);
insert into location(id, latitude, longitude, city_name)
values (90, 37.556, 126.932, '경기');
insert into review (id, star, review)
values (90, 5, 10);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (90, '#ONLY자가격리 & 장기숙박 #프리미엄 도시감성 #숙소설명 꼭 읽어주세요 #402', 'Sinchon-dong, Seodaemun-gu의 아파트 전체', 85000, '집 전체', 1, 4,
        1, 90, 90, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46135031/original/22d3e85e-ace1-487f-8063-120b487b6aea.jpeg?im_w=720',
        90);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46135031/original/01bc5ce3-c870-441a-b59a-04e33cc2c5e0.jpeg?im_w=720',
        90);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46135031/original/59f680bd-f74d-4b4f-837c-32ed799f7808.jpeg?im_w=720',
        90);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46135031/original/1ea0b433-0c5d-4b35-a136-7288edf826f7.jpeg?im_w=720',
        90);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46135031/original/7f392af1-31d5-48ac-a13f-6b8ecaea0031.jpeg?im_w=720',
        90);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46135031/original/8a481b38-cb5b-4fb4-9539-5c20281aeb60.jpeg?im_w=720',
        90);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46135031/original/f66ed51a-9585-4e42-a8ba-9a19406e293d.jpeg?im_w=720',
        90);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46135031/original/dc083bc3-9f78-4a42-87a4-263570cd1742.jpeg?im_w=720',
        90);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46135031/original/6f3c48b2-9751-48f2-9cac-27712f760ab3.jpeg?im_w=720',
        90);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46135031/original/5209263f-2129-4a90-9534-8ccc8ef4cc2a.jpeg?im_w=720',
        90);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46135031/original/6ad89059-478a-4b6c-80f0-71a45452c76f.jpeg?im_w=720',
        90);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46135031/original/4b41a9af-7a9e-43c7-ba19-94dd2ff2c500.jpeg?im_w=720',
        90);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46135031/original/9491b2ac-539b-44ff-a0ca-d61e5f48d2fd.jpeg?im_w=720',
        90);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46135031/original/cc5f4f26-2791-46b5-9560-636caa0bbd20.jpeg?im_w=720',
        90);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46135031/original/4d8b0b76-9aa2-41bb-8550-2fb1f4c36c46.jpeg?im_w=720',
        90);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46135031/original/d12ebfce-8124-4f06-88ad-040088eecf61.jpeg?im_w=720',
        90);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46135031/original/46b5f2cc-4868-41ef-836d-719e976e481a.jpeg?im_w=720',
        90);
insert into location(id, latitude, longitude, city_name)
values (91, 37.567, 126.827, '경기');
insert into review (id, star, review)
values (91, 5, 9);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (91, '9호선/공항철도 마곡나루역 직접 연결 보타닉뷰 하우스 (Magongnaru station)', '강서구의 아파트 전체', 95000, '집 전체', 1, 2, 1, 91, 91, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/8e255ee3-b7e1-4d10-90bf-65954d7ed56b.jpg?im_w=720', 91);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5b122b8d-ef6f-4da7-aad7-66ad1e7fd312.jpg?im_w=720', 91);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b16f2f4c-b884-4c80-9b77-b279727f8b22.jpg?im_w=720', 91);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b6081358-4423-4bca-a88b-c4c7127b8e17.jpg?im_w=720', 91);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/79e4fe4a-258b-4fa0-8a7d-6fe9fd00b7cd.jpg?im_w=720', 91);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5ef2a64f-7a9e-436b-bc80-468d9aa9c5a2.jpg?im_w=720', 91);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7335e252-0070-4f6d-94be-5ffec25744e3.jpg?im_w=720', 91);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/886bfafa-dfa9-4303-87ea-4986243d40c4.jpg?im_w=720', 91);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d62aee71-21e2-455e-9366-40e4bb807dd4.jpg?im_w=720', 91);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1d7eb3d8-1466-4262-9338-a290a979d848.jpg?im_w=720', 91);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/87812480-e986-4242-afb9-2336383e8cfd.jpg?im_w=720', 91);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1f3d4b4c-66eb-4d8b-8d11-530a13cc2532.jpg?im_w=720', 91);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a4d3be78-3039-4e7f-9fae-55dc36e77bbf.jpg?im_w=720', 91);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7c1d1c1c-48b7-4f77-b54e-224416a1007b.jpg?im_w=720', 91);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7534ad1a-aa11-4e7d-878c-8b4eef04e764.jpg?im_w=720', 91);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f69b1b58-721d-438f-a9c1-2d1ec714eb9f.jpg?im_w=720', 91);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0f28a313-84bd-4673-9c25-04558cd03bca.jpg?im_w=720', 91);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bcdcb296-684e-478a-97c0-9ec295f4f251.jpg?im_w=720', 91);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b2cff116-5ce3-4661-8dca-2e0863bbe22c.jpg?im_w=720', 91);
insert into location(id, latitude, longitude, city_name)
values (92, 37.564, 127.191, '경기');
insert into review (id, star, review)
values (92, 5, 60);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (92, '🌼복층펜트하우스#1🌼 BEST 힐링+에캉스+커플우정여행+NETFLIX(미사역1분+무료주차)', 'Hanam-si의 아파트 전체', 100000, '집 전체', 2, 2, 1, 92, 92,
        1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46302375/original/48e515b2-3218-4cc9-9c30-283915dae322.jpeg?im_w=720',
        92);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46302375/original/aa575ac9-afb6-4ee4-ab06-e00067b7365c.jpeg?im_w=720',
        92);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46302375/original/3bc98ae4-7401-4d77-b1d7-3c1d177ddd7e.jpeg?im_w=720',
        92);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46302375/original/9a56b199-8277-46ab-b231-14bc8ee59b53.jpeg?im_w=720',
        92);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46302375/original/848f6ca4-2636-4345-b834-dca856f7dfe7.jpeg?im_w=720',
        92);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46302375/original/42cad2d0-742a-4205-8a3c-988b5320faff.jpeg?im_w=720',
        92);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46302375/original/1f9a4f24-ff8a-4af9-93f2-a7d5b4d888ab.jpeg?im_w=720',
        92);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46302375/original/71bc3a5b-ea8d-401f-b329-d162247e2a57.jpeg?im_w=720',
        92);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46302375/original/fdd7dc43-5683-4531-b17a-6acb780ef9ee.jpeg?im_w=720',
        92);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46302375/original/7d7e6abc-feaf-407d-a550-9447ae142e3a.jpeg?im_w=720',
        92);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46302375/original/bba39faf-a4c6-4b81-afac-ced69df1f234.jpeg?im_w=720',
        92);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46302375/original/759d19a0-53a1-4690-a4ad-a36b6d8c6fbd.jpeg?im_w=720',
        92);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46302375/original/33965d11-b62c-4c9a-8fef-56a66f7fa4ab.jpeg?im_w=720',
        92);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46302375/original/84c14349-4a3f-4e40-ab3b-82c6b218f69f.jpeg?im_w=720',
        92);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46302375/original/256445c1-e394-4745-bc27-febd0c48d2b7.jpeg?im_w=720',
        92);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46302375/original/4335bbba-d2b6-4469-ad91-4c69663024f6.jpeg?im_w=720',
        92);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46302375/original/9b900b08-ef06-4311-90d4-5be24a52db08.jpeg?im_w=720',
        92);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46302375/original/1a89ce17-ec59-4e03-bb3a-94dd2bb13dc9.jpeg?im_w=720',
        92);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46302375/original/e9ef40d9-3d5f-4592-842c-081b9b8a0497.jpeg?im_w=720',
        92);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46302375/original/4e910d8c-fe46-4609-9ef6-259c903e7b88.jpeg?im_w=720',
        92);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46302375/original/b92f5b95-f8b0-4b61-bec9-39e565495676.jpeg?im_w=720',
        92);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46302375/original/ec147dbb-dcf6-4f43-bd0b-f6f575a5f280.jpeg?im_w=720',
        92);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46302375/original/de28a241-854a-4460-ad57-dac978136e15.jpeg?im_w=720',
        92);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46302375/original/900db139-2291-491b-b31d-b960155a87b3.jpeg?im_w=720',
        92);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46302375/original/27ec2b36-5bcf-4959-a7ca-6558f9d92c20.jpeg?im_w=720',
        92);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46302375/original/20c3959b-040e-49e7-a7a0-b14168d0556f.jpeg?im_w=720',
        92);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46302375/original/5fa787ec-23b8-4b57-a43a-bbaaea2c087c.jpeg?im_w=720',
        92);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46302375/original/37fffb04-7c57-4857-9e84-dec980a43aef.jpeg?im_w=720',
        92);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46302375/original/ad6a35fd-12b9-41f1-a2b4-b35be0148217.jpeg?im_w=720',
        92);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46302375/original/82e2e34e-30e3-4f49-8f0d-daca4033a17c.jpeg?im_w=720',
        92);
insert into location(id, latitude, longitude, city_name)
values (93, 37.579, 127.023, '경기');
insert into review (id, star, review)
values (93, 4.5, 3);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (93, 'HOSTEL SEOUL - Double room with a bathroom', 'Sungin 2(i)-dong, Jongno-gu의 개인실', 95000, '개인실', 0, 2, 1, 93,
        93, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49131805/original/cc1399a4-e57a-45fe-a889-f46fb51e9089.jpeg?im_w=720',
        93);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49131805/original/f40b5394-42b9-4e71-ab39-7593dee4d5aa.jpeg?im_w=720',
        93);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8012bdbf-e281-4fc8-b645-ef663143135d.jpg?im_w=720', 93);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/46bf7e9a-23dc-4174-864f-8967b7859175.jpg?im_w=720', 93);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/daf17c3d-3520-4103-8135-38fc6e6865aa.jpg?im_w=720', 93);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9f52c84f-e648-4208-916e-194e64ec48fa.jpg?im_w=720', 93);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ed01fcd7-a882-41e7-a5b2-662ba2a36938.jpg?im_w=720', 93);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a0528d71-018f-45c1-bee9-d38b5dcf29a6.jpg?im_w=720', 93);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c5264df5-f483-4021-96dd-ef85f184a7c2.jpg?im_w=720', 93);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/45d9e8ca-1d15-4dda-b4a7-02696cbce714.jpg?im_w=720', 93);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49131805/original/cd93726e-f0f6-4bf9-9095-02398c5c2d4b.jpeg?im_w=720',
        93);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49131805/original/8e435b9c-0119-4242-8619-468efcde62b8.jpeg?im_w=720',
        93);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49131805/original/9371e6b6-c713-4195-943f-55219160e19d.jpeg?im_w=720',
        93);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49131805/original/e4401327-34c5-4e9d-9dcc-aaf3629d1045.jpeg?im_w=720',
        93);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49131805/original/13505471-f261-4ded-b590-7b52ad414bca.jpeg?im_w=720',
        93);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49131805/original/3b8593cd-a293-4bf1-adf0-2ba72359727a.jpeg?im_w=720',
        93);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49131805/original/01535e0a-3c2b-4519-9beb-3a145bf316d7.jpeg?im_w=720',
        93);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49131805/original/7ca6c8ef-2e87-4fba-82a2-bae7b2a14d0a.jpeg?im_w=720',
        93);
insert into location(id, latitude, longitude, city_name)
values (94, 37.296, 127.071, '경기');
insert into review (id, star, review)
values (94, 4.5, 24);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (94, '상현역 복층 아늑한집', 'Suji-gu, Yongin-si의 아파트 전체', 95000, '집 전체', 1, 4, 1, 94, 94, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/b01b6f49-05fb-42c0-9e77-e7526d8276a4.jpg?im_w=720', 94);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6425bb27-8a35-4788-bc30-939d732a137c.jpg?im_w=720', 94);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e7aa1a53-b718-44bb-8042-fe834759b015.jpg?im_w=720', 94);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/be387dce-d865-429c-a18b-9766bad15c06.jpg?im_w=720', 94);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c935a5e2-6231-4ae0-8079-afcf0c6c081f.jpg?im_w=720', 94);
insert into location(id, latitude, longitude, city_name)
values (95, 37.54, 126.642, '경기');
insert into review (id, star, review)
values (95, 5, 156);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (95, '햇살 가득한 테라스가 있는 감성 공간 GRU1763', 'Gyeongseo-dong, Seo-gu의 집 전체', 95000, '집 전체', 1, 2, 1, 95, 95, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/4ed1e076-fa50-4363-b95c-fc8f46b8dbbf.jpg?im_w=720', 95);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d98fe3b8-89e7-4e67-a296-ff6975d4d0c8.jpg?im_w=720', 95);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0874fdfe-a9d4-4ec5-92e4-80e568176d11.jpg?im_w=720', 95);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3b6fad36-2899-4713-986a-f7a27b1a256a.jpg?im_w=720', 95);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/64130c8e-abde-4a23-a36f-3b26ca4b719f.jpg?im_w=720', 95);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7eca8f12-d249-4049-b1fa-d7189b5dd1d2.jpg?im_w=720', 95);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ffce2429-a442-47f6-9988-99b03c11ad08.jpg?im_w=720', 95);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f67e54b5-4eef-4922-8463-cb562ca01a0b.jpg?im_w=720', 95);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a1f3f5ae-bbae-4aba-a86d-d623bb890efd.jpg?im_w=720', 95);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1d9cb2ef-0ba9-4d12-8eac-66fc2d778cd3.jpg?im_w=720', 95);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/73701c7c-ffa3-4eef-be07-1c25530f96fa.jpg?im_w=720', 95);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1924284c-b47f-4297-86e7-11f54b6d5a9d.jpg?im_w=720', 95);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9b65d08b-8e1d-4bc1-978b-75c93ac05273.jpg?im_w=720', 95);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a1841414-8cf8-4bfa-8e29-b7cf0c10ba4b.jpg?im_w=720', 95);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ef028ea6-3d93-4b71-9f4c-048f8cba669a.jpg?im_w=720', 95);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c4f59402-5a79-4baf-84a9-4475acd05cf9.jpg?im_w=720', 95);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/452bfed9-ee11-4d6a-b85c-c804e0f86853.jpg?im_w=720', 95);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/59f3480b-e9eb-4e3f-91e8-90ef1a9d1634.jpg?im_w=720', 95);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a55d6a50-7405-40ea-b586-4639fef6c1c4.jpg?im_w=720', 95);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2b5c1919-e1af-4052-8161-95a7f1a37555.jpg?im_w=720', 95);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c3f8f28b-29f2-4676-9ff4-ed90a2ba9883.jpg?im_w=720', 95);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/833d218d-9d6c-4ad5-a310-0acd8db54250.jpg?im_w=720', 95);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3e0e9b7a-ec45-44db-a91e-86b7840831fe.jpg?im_w=720', 95);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cdb793d8-660d-4a53-ae6d-ab8df4aba613.jpg?im_w=720', 95);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/993deeea-a7ee-4dd5-b29c-c422b7cfe746.jpg?im_w=720', 95);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0ea5e7ea-e05f-4344-8e49-a4c49ff1878e.jpg?im_w=720', 95);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1ac3cc9b-dbe8-48d6-abbc-cf19575ffe73.jpg?im_w=720', 95);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/44f65c98-d6e4-461a-a9e0-4abb39cb7339.jpg?im_w=720', 95);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/29382c7b-b6ac-4089-85cb-3b080de1ee28.jpg?im_w=720', 95);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/81334687-127b-4356-bf13-2474451d7ed1.jpg?im_w=720', 95);
insert into location(id, latitude, longitude, city_name)
values (96, 37.544, 126.984, '경기');
insert into review (id, star, review)
values (96, 5, 237);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (96, '청년별장  #1 이태원 루프탑 벽난로', '용산구의 집 전체', 97000, '집 전체', 1, 6, 1, 96, 96, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/b46ade14-c59a-48a0-9ea6-5149e712d97b.jpg?im_w=720', 96);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6d784698-a796-48bd-975e-5e4191704c2e.jpg?im_w=720', 96);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d9705f2b-c0c4-4cbd-9184-156bafaa139d.jpg?im_w=720', 96);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/53d2524d-ace4-4cb6-b052-bba88e400b9d.jpg?im_w=720', 96);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/011f63f8-32c3-47a6-b03c-6936a3c429a0.jpg?im_w=720', 96);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7fc47532-2ec6-40a2-b42f-3246a870b5be.jpg?im_w=720', 96);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/56e80aba-6921-459e-836c-5ca1d0f1d501.jpg?im_w=720', 96);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1f394a93-8eb1-4452-adfb-6d2b9132ec67.jpg?im_w=720', 96);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5a979adb-dd30-4f81-9cee-13b437a38a49.jpg?im_w=720', 96);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2e28bdc1-f1b0-4149-a1b1-40c5c83d6253.jpg?im_w=720', 96);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bd9705be-948c-458a-94e3-d6113cb59d01.jpg?im_w=720', 96);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ed8f4ff1-c4a2-4490-a51b-e336b409a46c.jpg?im_w=720', 96);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bf3bd178-ad96-4844-a9e3-b027faecae53.jpg?im_w=720', 96);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/42dcaff8-6c84-4442-bbae-6e09b1d8caee.jpg?im_w=720', 96);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/310f5813-1428-4e98-824b-e72283d8cd95.jpg?im_w=720', 96);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4bbb5217-6c01-4fd8-9606-e7f9b9bc7d17.jpg?im_w=720', 96);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5be97a13-0288-4764-9a1f-6b007f9bc66e.jpg?im_w=720', 96);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0f6f0352-6293-4852-9452-3cd78e210405.jpg?im_w=720', 96);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9e184841-9414-4ac2-ae54-359d6d35f1a1.jpg?im_w=720', 96);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d723e743-e3ef-40e9-88b5-48c43c50a4e0.jpg?im_w=720', 96);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e9abf57d-c2f6-4b1e-b3ea-26de1ef6f319.jpg?im_w=720', 96);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6383e1e1-6b91-4536-9b17-e0f33b23b020.jpg?im_w=720', 96);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/73651f51-6b4e-44f7-94b7-50f9c90e289a.jpg?im_w=720', 96);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2ea3937b-be9f-480d-8f66-ec2d388a33c7.jpg?im_w=720', 96);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fca483d1-fa43-4e8b-a47d-e7666242e6d6.jpg?im_w=720', 96);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d21874fc-4cf5-4c62-a388-65520e853e40.jpg?im_w=720', 96);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/11064c6b-3d3d-48e1-9189-1b3237ac06de.jpg?im_w=720', 96);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fe33585d-2d05-4f1d-b182-659887c12d5b.jpg?im_w=720', 96);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f9cded07-f52c-4e46-8531-4e5229f8ce56.jpg?im_w=720', 96);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d8e37c99-7da1-4689-942f-834b06400e81.jpg?im_w=720', 96);
insert into location(id, latitude, longitude, city_name)
values (97, 37.286, 127.06, '경기');
insert into review (id, star, review)
values (97, 5, 7);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (97, '[HAUS 광교] 최고의 호수뷰, 오픈특가, 좋은위치, 43인치 TV, 무료주차, 감성숙소', 'Woncheon-dong, Yeongtong-gu, Suwon-si의 아파트 전체',
        100000, '집 전체', 1, 2, 1, 97, 97, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/6039fd4f-ff6e-49bc-bf38-70baa411f46a.jpg?im_w=720', 97);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/95a7c94e-7dfa-4d4b-b17c-d4e6a7ce50b7.jpg?im_w=720', 97);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/74c5fd90-5caa-4dea-bbf2-99a0d9e8cec9.jpg?im_w=720', 97);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5b367062-eada-47a4-9a59-c8500abf7923.jpg?im_w=720', 97);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/541e4a3a-f56f-43bc-be4a-6233c2d8970e.jpg?im_w=720', 97);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8faeb572-bc84-40e8-8a2d-159f97147a92.jpg?im_w=720', 97);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b520a9ab-449b-427b-9432-27b4b7f11395.jpg?im_w=720', 97);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d5dd6a00-6aa0-4dd5-aa5f-2a9618993427.jpg?im_w=720', 97);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5b752608-870f-4d87-a5aa-89cd23269df2.jpg?im_w=720', 97);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c1b14ce1-e4e0-4bc7-892c-6ec6c840dd48.jpg?im_w=720', 97);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dea74d09-a762-4dac-a0c5-78833b48f108.jpg?im_w=720', 97);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c7dcc029-7a63-4e57-83ce-fd0204d8f912.jpg?im_w=720', 97);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d154f9a2-808e-41e0-af76-4c79b98ae335.jpg?im_w=720', 97);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a52baaab-a8ad-4a02-ad27-7ce409d2f459.jpg?im_w=720', 97);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/79d62994-65c8-4ef1-913b-a9095ac3d47a.jpg?im_w=720', 97);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8b4d841a-02b8-4e9e-8bd4-2f04f40e1572.jpg?im_w=720', 97);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ed3c353a-d6b1-4acb-bb29-584aaf7b6c38.jpg?im_w=720', 97);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d7e334d4-66fd-46c8-87e5-46119c6b5771.jpg?im_w=720', 97);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e4210863-dc6b-410c-adf4-36f1e3363cc3.jpg?im_w=720', 97);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/186dbd16-4e33-40e1-ad8a-3a86ed59a340.jpg?im_w=720', 97);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f2dbb109-160f-4298-a691-6128b8707a7e.jpg?im_w=720', 97);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/990c2979-2511-4508-a561-bbdfcb528a44.jpg?im_w=720', 97);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ccdfcd81-c69f-43fb-922f-b70c10f6b070.jpg?im_w=720', 97);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e29afaa0-d687-4270-94eb-42d88376773b.jpg?im_w=720', 97);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2565a926-4a26-44f3-ba2c-1d601f7f7cf6.jpg?im_w=720', 97);
insert into location(id, latitude, longitude, city_name)
values (98, 37.521, 127.392, '경기');
insert into review (id, star, review)
values (98, 5, 15);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (98, '도곡리 겨울의 집', '양평군의 집 전체', 90000, '집 전체', 2, 2, 1, 98, 98, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/227e185b-9e63-400c-a6e2-ba6d900aa463.jpg?im_w=720', 98);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9edecd96-4a4f-4899-9bf4-040da24bea9f.jpg?im_w=720', 98);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5bec5a8a-b491-4f40-b0cb-e8a9d537c98a.jpg?im_w=720', 98);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/418d0b80-65eb-4aa1-a9c7-4cb757be3fe7.jpg?im_w=720', 98);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/25282c2e-20d1-47b8-9fb0-370cec5965ef.jpg?im_w=720', 98);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1e859676-89f7-4340-a937-4a4837dc3c37.jpg?im_w=720', 98);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e829c5b4-527f-4f77-8006-f2192deb1c08.jpg?im_w=720', 98);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a2d64386-cf5e-4b4d-bfd3-e1b828046b6e.jpg?im_w=720', 98);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/34912e4d-ad3f-4d82-8bdb-3233f71b35c0.jpg?im_w=720', 98);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2e6a9b11-9dfa-4649-8edf-14f04b3a7966.jpg?im_w=720', 98);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/89f044fd-e504-4bad-93de-07b8edc82f6c.jpg?im_w=720', 98);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ac9a6d2b-5174-428a-891d-6a11dd996518.jpg?im_w=720', 98);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9d92a7a8-03ee-4cda-8371-38d2de10a538.jpg?im_w=720', 98);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/40695bc0-ce8d-4d4e-8907-499bf1177d9b.jpg?im_w=720', 98);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/08ca0e6a-94cc-4ae2-99a7-6edd48b2c7ff.jpg?im_w=720', 98);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0df1d096-fbfa-4b00-ab16-53e0cc72f283.jpg?im_w=720', 98);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3e721234-5a86-4a27-b7a9-bf827c4386f6.jpg?im_w=720', 98);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0940a304-cb15-42e3-90f2-dcdf9197aa93.jpg?im_w=720', 98);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3e12c485-b2ab-4491-81a9-1d98e7411dfb.jpg?im_w=720', 98);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8402dc62-eb79-4dfc-9a74-596d3fe0e0b6.jpg?im_w=720', 98);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/df9e5835-0a45-4652-9432-5b3d85e1bb04.jpg?im_w=720', 98);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3d206b6e-334f-4583-98a5-9248f58ea9d0.jpg?im_w=720', 98);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5406bdd2-2495-4d10-b05f-ebea77a38d26.jpg?im_w=720', 98);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/832c2969-abfd-4535-aa88-c77e3d137f4e.jpg?im_w=720', 98);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b11607c2-f47b-401f-bd14-2360375534e7.jpg?im_w=720', 98);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/07599a25-5029-4b51-b25d-4f543b094a74.jpg?im_w=720', 98);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d70e1ee8-3da1-4416-b5b8-4bfcb4852432.jpg?im_w=720', 98);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/adb98260-3d59-4c4f-91e7-92134dbc7ae8.jpg?im_w=720', 98);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b53cb977-9f24-405a-ac19-a2039bb01eef.jpg?im_w=720', 98);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9f6d42a6-1e6a-45aa-b73b-746a50a8c47e.jpg?im_w=720', 98);
insert into location(id, latitude, longitude, city_name)
values (99, 37.517, 126.533, '경기');
insert into review (id, star, review)
values (99, 4.5, 63);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (99, '영종도 전망 좋은 집  "빈스하우스"(단독베란다/미니화로구이,BBQ/2인)', '중구의 개인실', 85000, '개인실', 1, 2, 1, 99, 99, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/f73dc044-8318-4c21-b2d4-1de27088a0e6.jpg?im_w=720', 99);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-41186231-unapproved/original/e3bd8a12-3191-4619-88ca-8157a977fd79.JPEG?im_w=720',
        99);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-41186231-unapproved/original/56769c7a-deeb-483c-a61c-c1bd6dc85510.JPEG?im_w=720',
        99);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-41186231-unapproved/original/1f1894cb-2d07-4ff9-b326-025aaa099b51.JPEG?im_w=720',
        99);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-41186231-unapproved/original/d1816219-4778-4365-a66a-17ad271dae8f.JPEG?im_w=720',
        99);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-41186231-unapproved/original/0ba556bd-00d2-410c-8a57-683f87510980.JPEG?im_w=720',
        99);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-41186231-unapproved/original/8ef28b2f-bd13-4a6a-974a-296c7637f95b.JPEG?im_w=720',
        99);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-41186231-unapproved/original/18b7e2ca-ee8d-4526-8516-f1d40f999754.JPEG?im_w=720',
        99);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-41186231-unapproved/original/0513b3cf-2179-4a03-96d0-b8fbf348ad80.JPEG?im_w=720',
        99);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-41186231-unapproved/original/0c9175aa-7c15-4fbe-927d-28fd477b1944.JPEG?im_w=720',
        99);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-41186231-unapproved/original/1fb61de5-b5b3-4680-9953-41b27e78f9b9.JPEG?im_w=720',
        99);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-41186231-unapproved/original/66b53494-7fcf-4271-997e-2db252b7f975.JPEG?im_w=720',
        99);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-41186231-unapproved/original/985efba8-7262-4fd5-9c6c-6a304f12f4e7.JPEG?im_w=720',
        99);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-41186231-unapproved/original/39e82f4e-28c4-46b4-ae7d-952ef10a82de.JPEG?im_w=720',
        99);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-41186231-unapproved/original/51de96f9-0074-4b57-a37f-0be6817eb749.JPEG?im_w=720',
        99);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-41186231-unapproved/original/f018a9ac-7e70-40ec-828b-a239b54cf497.JPEG?im_w=720',
        99);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-41186231-unapproved/original/e17e70c9-f855-4563-8030-ce417a85ce05.JPEG?im_w=720',
        99);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-41186231-unapproved/original/46166c93-3160-4563-9a63-c2be6dd51a25.JPEG?im_w=720',
        99);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-41186231-unapproved/original/772acb41-fc2a-4200-8f35-4ec7a9f2c954.JPEG?im_w=720',
        99);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-41186231-unapproved/original/343f4987-f3ce-42db-85c8-7d3873d239c8.JPEG?im_w=720',
        99);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-41186231-unapproved/original/8a093a1d-f212-48a0-8589-495b07fef17d.JPEG?im_w=720',
        99);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-41186231-unapproved/original/b07c1638-1ac7-4ab1-b633-a048e9bd1410.JPEG?im_w=720',
        99);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-41186231-unapproved/original/5b59187c-d920-45b1-8d8e-07fd72a70506.JPEG?im_w=720',
        99);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-41186231-unapproved/original/e8c237ee-74b3-4382-b027-02b07358afea.JPEG?im_w=720',
        99);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-41186231-unapproved/original/52460973-8b89-4190-8077-0b53ed29d016.JPEG?im_w=720',
        99);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-41186231-unapproved/original/b5eacd89-b340-4e13-959f-bd90e412697f.JPEG?im_w=720',
        99);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-41186231-unapproved/original/6851a10e-41a6-41ab-8e8d-6c37ce1d558a.JPEG?im_w=720',
        99);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-41186231-unapproved/original/d6b4b973-6304-4657-9008-16ac622b4cd1.JPEG?im_w=720',
        99);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-41186231-unapproved/original/886d814c-e7f7-4c4c-8c03-dcec7bd3193c.JPEG?im_w=720',
        99);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-41186231-unapproved/original/60ad8f9f-4a68-4446-8a20-13af2dffb8da.JPEG?im_w=720',
        99);
insert into location(id, latitude, longitude, city_name)
values (100, 37.776, 126.794, '경기');
insert into review (id, star, review)
values (100, 5, 12);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (100, '사인웨이브 _별채예약', 'Wollong-myeon, Paju-si의 게스트용 별채 전체', 100000, '집 전체', 1, 2, 1, 100, 100, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47417062/original/645acd11-bd59-48bd-8875-9a39bd417a2f.jpeg?im_w=720',
        100);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/74ee1529-c816-4f73-876b-b383774e0cb3.jpg?im_w=720', 100);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0125929a-a0b1-405b-9eec-7904318d59fc.jpg?im_w=720', 100);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47417062/original/38530e40-da62-4da6-b66a-227c1ad04109.jpeg?im_w=720',
        100);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2cae97ee-763b-43cc-bba8-ca955def0fb4.jpg?im_w=720', 100);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47417062/original/20d69103-b49e-4c40-b65b-fd169df36fd2.jpeg?im_w=720',
        100);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/113105c2-7cf7-4996-b08f-9d55901bd87a.jpg?im_w=720', 100);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/15c3168e-013a-4a7e-adb8-d17c5a004833.jpg?im_w=720', 100);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2e9b449c-150a-4e9c-8f0f-7c4dec55e076.jpg?im_w=720', 100);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/79d030d4-9665-45e6-b2af-74200bbb48c1.jpg?im_w=720', 100);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47417062/original/dd9577bf-755d-4798-b47d-ca87bf028994.jpeg?im_w=720',
        100);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d57f4d09-7c0e-41f9-ba18-950a2d3dd86b.jpg?im_w=720', 100);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47417062/original/ec167770-b056-44f8-a1a3-702691eb6cea.jpeg?im_w=720',
        100);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47417062/original/eeeaeb00-621a-4a7f-b738-7fbc046602ab.jpeg?im_w=720',
        100);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47417062/original/928b9566-eaf0-4777-b259-c636443f5e86.jpeg?im_w=720',
        100);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47417062/original/64bf6acc-a257-4598-920b-818857f31f78.jpeg?im_w=720',
        100);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3eea5c07-0de0-4081-9e92-266e15b52422.jpg?im_w=720', 100);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-47417062/original/bdd441a7-5830-49da-a77d-2626fff93562.jpeg?im_w=720',
        100);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f50ed409-bdec-434e-9da0-1e165c94e7da.jpg?im_w=720', 100);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e34b2cee-7db1-4ee4-b827-0c047da03f7a.jpg?im_w=720', 100);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cfcf28bb-8646-40a1-8b0d-b75ef5d3af06.jpg?im_w=720', 100);
insert into location(id, latitude, longitude, city_name)
values (101, 33.442, 126.279, '제주');
insert into review (id, star, review)
values (101, 0, 0);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (101, '독립된 공간에서 편하게 즐기는  제주  살이', 'Hallim-eub, Cheju의 전원주택 전체', 100000, '집 전체', 0, 4, 1, 101, 101, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/74f40c5d-f802-433a-97f7-e608d6576b09.jpg?im_w=720', 101);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/165fb3ec-69ce-40ef-b429-e741c792b348.jpg?im_w=720', 101);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ea002bb9-4d06-4b8f-9a09-c1feb012f638.jpg?im_w=720', 101);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49018587/original/0fa22bd2-d588-4374-a86e-7f43be9b08e7.jpeg?im_w=720',
        101);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/881f33cc-a57e-40f7-8179-bf70b97605b8.jpg?im_w=720', 101);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5033c515-7e0b-48b3-aaa0-bb5dcdd1df75.jpg?im_w=720', 101);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49018587/original/5901ebe8-8215-443c-8404-9011d8ea6a57.jpeg?im_w=720',
        101);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49018587/original/16645654-7338-44ea-8b68-4707940a9c75.jpeg?im_w=720',
        101);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49018587/original/01c632d2-876a-4e7e-a011-695eb0d7fd12.jpeg?im_w=720',
        101);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-49018587/original/c1ce4344-6161-41b8-aa7d-071b10828900.jpeg?im_w=720',
        101);
insert into location(id, latitude, longitude, city_name)
values (102, 33.463, 126.933, '제주');
insert into review (id, star, review)
values (102, 5, 9);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (102, '성산일출봉 앞 바다뷰의 아늑한 한 달 살기 숙소', 'Seongsan-eup, Seogwipo-si의 콘도(아파트) 전체', 100000, '집 전체', 1, 2, 1, 102, 102,
        1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/a21db690-1b78-4937-ba4a-8ca18af26477.jpg?im_w=720', 102);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0a2b4e68-4174-42dc-852d-a308e820633d.jpg?im_w=720', 102);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/caaeeecf-9386-417a-8cca-7dd4ed363d29.jpg?im_w=720', 102);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e77ea3e2-fdd4-4e8d-9af0-23a75f72c32d.jpg?im_w=720', 102);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/698e9802-11f7-4660-ab79-1cc9d85c84ef.jpg?im_w=720', 102);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9b4c552c-38b6-43f8-94e4-58f6cf23ea90.jpg?im_w=720', 102);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/63f83130-88a3-4626-98ac-71691f9ae751.jpg?im_w=720', 102);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b9e8184b-c3cd-4048-81b6-ca285307498e.jpg?im_w=720', 102);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/452a9f77-1a6e-4261-b1b6-166c1d4ae2c7.jpg?im_w=720', 102);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/34564059-7fc0-4c5c-8112-dd71ff26eafa.jpg?im_w=720', 102);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/86e81752-cf0f-4d43-b6d2-6e4c559d3e5b.jpg?im_w=720', 102);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6acdedca-b880-48aa-b468-9df941b6fad8.jpg?im_w=720', 102);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0525b553-e9c1-4d65-85d9-0bec43d35ccf.jpg?im_w=720', 102);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9e466af4-9e44-4c6c-a688-e2e13ac4ed02.jpg?im_w=720', 102);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8cc2ff59-cf06-40fb-a2e2-63b4ce9defa0.jpg?im_w=720', 102);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/981b8752-4840-4898-9e86-41677761c8b4.jpg?im_w=720', 102);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/727503c8-c204-4234-90a9-be709f61d76e.jpg?im_w=720', 102);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d4ffd7e6-41dd-4846-b076-66f1ded13d5e.jpg?im_w=720', 102);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/40560956-efce-411f-8e71-54c8e613676f.jpg?im_w=720', 102);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9cb6d30d-085d-4bfb-9296-9de28760e203.jpg?im_w=720', 102);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0e3408cc-974c-49bd-8573-90f97e710f2f.jpg?im_w=720', 102);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/11f48ce0-0d0a-42eb-80fb-724bb0e2a57d.jpg?im_w=720', 102);
insert into location(id, latitude, longitude, city_name)
values (103, 33.49, 126.492, '제주');
insert into review (id, star, review)
values (103, 5, 19);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (103, '연동 레지던스 .!', 'Yeon-dong, Cheju의 레지던스 전체', 100000, '집 전체', 1, 1, 1, 103, 103, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/25df31da-2bd5-4de0-8eb4-d01f41513a9c.jpg?im_w=720', 103);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6574a92b-03ff-43bd-9c95-9ba2f21d6517.jpg?im_w=720', 103);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/90eeed1d-797c-4956-bca9-ff51ccbc650e.jpg?im_w=720', 103);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b0b528ea-ad0a-4108-a909-07f7120b80c9.jpg?im_w=720', 103);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a41374c8-d0c5-4afa-9436-8973224f90cd.jpg?im_w=720', 103);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/45dba921-87bf-4828-824d-381c4d0203df.jpg?im_w=720', 103);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5889704e-4f33-4c8a-acda-7bd5de8d2da5.jpg?im_w=720', 103);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ea17086f-4c89-4c42-b812-c5dac7ba8923.jpg?im_w=720', 103);
insert into location(id, latitude, longitude, city_name)
values (104, 33.248, 126.533, '제주');
insert into review (id, star, review)
values (104, 0, 0);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (104, '디럭스 더블 타운뷰', 'Seogwipo-si의 부티크 호텔의 객실', 100000, '개인실', 1, 2, 1, 104, 104, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/74680eca-b92b-4108-b069-e4088851a71b.jpg?im_w=720', 104);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/533b46c4-323f-4dd6-bace-d3c9678f8bf4.jpg?im_w=720', 104);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3eceb21c-0eea-4728-85d9-e34613031474.jpg?im_w=720', 104);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c6b89e96-4ee6-41ee-8012-61ef6de20309.jpg?im_w=720', 104);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/76711426-448c-4d4c-800e-d91c3a823501.jpg?im_w=720', 104);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4b4e2b78-957e-46c1-a8a6-0fce220609be.jpg?im_w=720', 104);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5b16bf03-97aa-43a3-bee1-4630d8af62bb.jpg?im_w=720', 104);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f37d7bdd-d301-4570-80d9-93d90025f11e.jpg?im_w=720', 104);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1d428fd6-e440-481c-af78-e8690c7d13ba.jpg?im_w=720', 104);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9a90efe2-7c63-45b7-bf55-9d72425a472d.jpg?im_w=720', 104);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cf412b34-0489-4350-8264-a2a72fe3b546.jpg?im_w=720', 104);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/555068d7-a42a-4e88-86c1-0d185955192c.jpg?im_w=720', 104);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d6db9a6d-c45c-4870-907f-960b59879b51.jpg?im_w=720', 104);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c5b62a0f-1ae2-4f7a-a7ae-1a255426579c.jpg?im_w=720', 104);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/df6d6487-a50c-4888-91db-9f23f5b39b63.jpg?im_w=720', 104);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ae7eb37b-1c33-4467-91ba-bea26f285d3a.jpg?im_w=720', 104);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fe0ffafb-83da-4e14-af53-e746460b519c.jpg?im_w=720', 104);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/647c76d5-1941-40b3-bd28-c61df944b93a.jpg?im_w=720', 104);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/26a19b5e-b7ea-43d9-8898-83a15308fa64.jpg?im_w=720', 104);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b462bc96-bd1e-4cc7-a1c0-9182894cb457.jpg?im_w=720', 104);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c5581bc1-4dd7-41a7-8ad1-ec42fad3e821.jpg?im_w=720', 104);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/34fb3781-6d5c-4c22-a370-0d8463e87fc7.jpg?im_w=720', 104);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7275cc67-d7ca-4e7c-a53d-322a48c00de6.jpg?im_w=720', 104);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/93fdcdcf-7e23-4751-bdcc-9e4229e1b9ac.jpg?im_w=720', 104);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6c2fb3c2-abf8-436d-8011-b13f85e53876.jpg?im_w=720', 104);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c2a64a4d-3279-4bc2-a9c8-082e4ffabba1.jpg?im_w=720', 104);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d2a19c52-4353-4af0-a60f-d4ab93e7ffab.jpg?im_w=720', 104);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3b856324-3ec1-4914-b2d3-3c9c87a66535.jpg?im_w=720', 104);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/06439307-8182-4836-bd4e-91b92f6f70d7.jpg?im_w=720', 104);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/daffc19a-840f-401c-9e61-04cbf2989a17.jpg?im_w=720', 104);
insert into location(id, latitude, longitude, city_name)
values (105, 33.499, 126.458, '제주');
insert into review (id, star, review)
values (105, 0, 0);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (105, 'A-201호_이호베이_제주보름살기,2층전용1.5룸,이호해수욕장인근,제주공항서쪽km!!', '제주시의 집 전체', 100000, '집 전체', 1, 2, 1, 105, 105, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/86013e80-ebc1-4fd4-85f9-6ca58c77e1cd.jpg?im_w=720', 105);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/72475e02-dc6f-4a37-ac1c-9e998d286e65.jpg?im_w=720', 105);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f5102acf-df62-4da5-a413-d1273c609df4.jpg?im_w=720', 105);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ae5bea51-141e-4f51-b2fa-cfd2e69040bd.jpg?im_w=720', 105);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5c961c78-5c4e-44ac-a135-23d15592630f.jpg?im_w=720', 105);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/69ad2294-c771-447e-a46c-19272f137b41.jpg?im_w=720', 105);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8cb26baa-4b03-4790-872e-6a7a96c335e1.jpg?im_w=720', 105);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ed779a5c-3ffe-4843-8e45-67890ab3e8cc.jpg?im_w=720', 105);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d95e46d3-9f23-448c-a9fa-e70c3c733b91.jpg?im_w=720', 105);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ff4db4a4-0426-4b1c-a3ef-6659f7cd2613.jpg?im_w=720', 105);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f9747d57-7e9a-4889-92cf-35614c5c469f.jpg?im_w=720', 105);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c2247d08-d9b7-4c89-b71c-db37ef118ee4.jpg?im_w=720', 105);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/45522a67-08d6-449b-b7fc-d362d11456f4.jpg?im_w=720', 105);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0754b2f6-c5ef-4a35-9244-320352a8cd94.jpg?im_w=720', 105);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4ceb142c-6dfb-4789-b518-f784e26ff3dc.jpg?im_w=720', 105);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/51a8b227-66d4-46ed-ba39-e64677a5cc6f.jpg?im_w=720', 105);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6270a9ae-5a79-4a61-bd3d-cee5fdfa71b8.jpg?im_w=720', 105);
insert into location(id, latitude, longitude, city_name)
values (106, 33.452, 126.434, '제주');
insert into review (id, star, review)
values (106, 5, 58);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (106, '[NEW OPEN] 오소록 하우스💫 _나만의 안락하고 편안한 공간', 'Aewol-eup, Cheju의 집 전체', 95000, '집 전체', 1, 2, 1, 106, 106, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/4ff77f88-4110-4ed1-ada3-7fd2de5e45d2.jpg?im_w=720', 106);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c1ee5938-7308-41b9-8bca-913a87248526.jpg?im_w=720', 106);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/930cc2ac-829c-4365-a4b5-9e3f483915f0.jpg?im_w=720', 106);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/186fcdca-74cd-47ae-9283-9655c3cd7d03.jpg?im_w=720', 106);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/57062fae-fede-4041-8bbb-a1e99a9dd112.jpg?im_w=720', 106);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/57bf5470-c3ae-485f-914d-abaff924dd7c.jpg?im_w=720', 106);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/98f9fcab-51c2-445e-b92b-e1e23ac32ef0.jpg?im_w=720', 106);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f8fbd748-55f0-4fda-94fd-eebbcf5fcb3c.jpg?im_w=720', 106);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dc2aa510-d38f-4eb3-92a2-6a51785d8117.jpg?im_w=720', 106);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/05e473b1-13ca-49e9-b3d4-b032c02ebca4.jpg?im_w=720', 106);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/df511bc7-5733-441d-af20-8abc54221539.jpg?im_w=720', 106);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/652e1949-4a13-4ecf-9073-4220047b2dde.jpg?im_w=720', 106);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e2abe8d6-2c4a-4ff8-820c-40502f74d457.jpg?im_w=720', 106);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a5007d60-dc75-42be-b378-40580cf7dd88.jpg?im_w=720', 106);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/075a3977-2f88-4de8-9fea-b74439420b4e.jpg?im_w=720', 106);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7bbb1c4f-4592-4a4f-8b24-12415524a92c.jpg?im_w=720', 106);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1d3a3e2c-d22b-4b3f-8b49-800a5489e3e7.jpg?im_w=720', 106);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fa9493ab-05ac-4b4b-aeb7-43922d5d4a22.jpg?im_w=720', 106);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/32d95e3a-72b6-4656-8dce-f88709604b62.jpg?im_w=720', 106);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/85f4d43d-c8d2-48ef-be81-f2822909d8cb.jpg?im_w=720', 106);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/25454604-d7bd-4bd3-907d-0df6d1e03c16.jpg?im_w=720', 106);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/289216ea-3e5b-495d-80ce-c7a2c74d8c0f.jpg?im_w=720', 106);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/62ea35bf-bb4b-47fd-b767-1406bce911e4.jpg?im_w=720', 106);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d4f9c11b-8924-4965-a8ff-d2e613c02868.jpg?im_w=720', 106);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/53b3cae2-1a72-4d31-82ff-427df1bb4d22.jpg?im_w=720', 106);
insert into location(id, latitude, longitude, city_name)
values (107, 33.548, 126.657, '제주');
insert into review (id, star, review)
values (107, 4.5, 431);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (107, '2인실룸 인피니티리조트 스쿠버다이빙 프리다이빙 서핑 스노쿨링 전객실 오션뷰', 'Jochon-eup의 펜션', 100000, '집 전체', 1, 2, 1, 107, 107, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44323406/original/7d63b55e-2f78-48e7-a7ad-a2029031a2af.jpeg?im_w=720',
        107);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/532a3ba3-d1c3-44b5-a7ad-c97113da2cfe.jpg?im_w=720', 107);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/76305923-d1bf-4f63-ba92-18b2e41353e4.jpg?im_w=720', 107);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/68489c62-e0a0-46e4-bc57-4e4da455f897.jpg?im_w=720', 107);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0e239b48-5e86-41b8-b6ab-a8b0e60dc6f1.jpg?im_w=720', 107);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44323406/original/1036489c-093a-4f4c-8f33-4c07e35dfd2a.jpeg?im_w=720',
        107);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/626ba99c-dd01-44f3-ba65-b6db221fdb4d.jpg?im_w=720', 107);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/825eb084-9c2d-41f8-b988-ac3c4338a7a9.jpg?im_w=720', 107);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dec6ac1a-0004-4cce-95d6-b25deeedb738.jpg?im_w=720', 107);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5bca7030-2d44-40ec-97e6-5394cbd67390.jpg?im_w=720', 107);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5c2eecad-3107-48b1-8789-05989e4f5e91.jpg?im_w=720', 107);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/70f5c942-1566-49ae-9d3f-a237e0ec77da.jpg?im_w=720', 107);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ca2e352e-b87c-4412-8c20-dcc1456a9063.jpg?im_w=720', 107);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0ac04f97-0647-49a9-872b-10dfc152ce54.jpg?im_w=720', 107);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44323406/original/5fa70329-36e3-497f-aa8f-dfd6002dc0c1.jpeg?im_w=720',
        107);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/11ce92db-95bf-4fdf-be02-19d9e44acd7d.jpg?im_w=720', 107);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e858e777-6210-4df0-936f-cef2667e76f7.jpg?im_w=720', 107);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0abe5de2-80b3-4c85-8307-c20e37aba40e.jpg?im_w=720', 107);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/eedbf43f-2fb5-49f9-9c05-27bbc165a18b.jpg?im_w=720', 107);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44323406/original/c780ee07-f3f0-477a-bb4e-c26553fc1159.jpeg?im_w=720',
        107);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44323406/original/03c5ec62-20e8-4a36-aba4-c151f4eac686.jpeg?im_w=720',
        107);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44323406/original/6aacb8da-995b-40fe-a812-496d1d2b7d0a.jpeg?im_w=720',
        107);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44323406/original/1bfd54a3-9d04-4506-9307-eba2668a3df1.jpeg?im_w=720',
        107);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44323406/original/c7b86234-d5a6-472d-b05a-de188a851ed1.jpeg?im_w=720',
        107);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44323406/original/eb639285-1aaf-43a9-a9a8-3a09509f6d29.jpeg?im_w=720',
        107);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-44323406/original/badf9c8d-ac66-4aeb-bd48-edc86a59bd15.jpeg?im_w=720',
        107);
insert into location(id, latitude, longitude, city_name)
values (108, 33.494, 126.492, '제주');
insert into review (id, star, review)
values (108, 4.5, 189);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (108, '(할인중) YAA 공항근처/ 가성비 최고/ 개인실/ 개별욕실/ 주방/ 세탁건조기/ 주차공간', 'Yeon-dong, Jeju-si의 호스텔 객실', 100000, '개인실', 1, 2, 1,
        108, 108, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/c3876756-d8d6-4798-b898-e8306296dc17.jpg?im_w=720', 108);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c0e3f6da-0780-4aad-9d78-39c3d7108f36.jpg?im_w=720', 108);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/153688ad-6c27-4e91-a9c6-71a061413596.jpg?im_w=720', 108);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fea69b88-e856-4af4-a404-c2cc89fb1cc2.jpg?im_w=720', 108);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7b02ab1a-587a-4d8c-ae04-12b301158854.jpg?im_w=720', 108);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7b5a0aef-5e02-4e2e-bbe1-37ce8d136a57.jpg?im_w=720', 108);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/852b5290-b793-478d-864e-615728aa5d72.jpg?im_w=720', 108);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e57f7940-ac54-4d77-83aa-1ea1ceeb87f0.jpg?im_w=720', 108);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c87c915f-cc35-48f3-a6a7-15615c608623.jpg?im_w=720', 108);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c0c78d5a-c2bb-4e8e-b996-bc79c4d8f8dd.jpg?im_w=720', 108);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/930aecc8-0ecf-4d90-b5f3-f13565e43e6f.jpg?im_w=720', 108);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-30340376/original/860df7cf-53ae-4b08-83c1-fa8da87e97cf.jpeg?im_w=720',
        108);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-30340376/original/8ba75c9a-fb8c-4746-90aa-14699fcfe936.jpeg?im_w=720',
        108);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-30340376/original/ff3d07df-90fe-4fd9-b1ee-1e8cbf12c747.jpeg?im_w=720',
        108);
insert into location(id, latitude, longitude, city_name)
values (109, 33.489, 126.494, '제주');
insert into review (id, star, review)
values (109, 5, 19);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (109, '연동한라산 !!', 'Yeon-dong, Cheju의 레지던스 전체', 100000, '집 전체', 1, 2, 1, 109, 109, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/56e866f1-70a6-47c8-b146-4f36584b6dc9.jpg?im_w=720', 109);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/96091641-ed20-461d-8c90-b3465d197775.jpg?im_w=720', 109);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/59ff7b69-a244-4050-a5f8-7f6474f7cbeb.jpg?im_w=720', 109);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0e9885de-701d-412d-b690-3fc8815e6fd1.jpg?im_w=720', 109);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/816f9486-1fbd-4876-8b2b-baa85f3cee1e.jpg?im_w=720', 109);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a4384e7a-de38-40d4-8522-813b9966e924.jpg?im_w=720', 109);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a19a4999-5d4c-4860-aced-9e7cdba3cd84.jpg?im_w=720', 109);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f5680758-7c6d-4d37-b44f-0fe12c4b0fa1.jpg?im_w=720', 109);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3bbb4707-bd5a-4497-8061-0fc1fcdb8531.jpg?im_w=720', 109);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/012be286-e4b6-4a3e-84fc-c43473b97146.jpg?im_w=720', 109);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7fe88574-1ec7-4ce5-b48e-930566cf08e7.jpg?im_w=720', 109);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7f54a70d-2194-4960-8cb8-f1ddf8620f79.jpg?im_w=720', 109);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/14db420a-03ef-40a0-870c-4304fa796df6.jpg?im_w=720', 109);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/91eff60c-799c-4bf4-9811-2cc232f263bd.jpg?im_w=720', 109);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cccb0e59-4ec0-4759-9a0a-2416ebea58b2.jpg?im_w=720', 109);
insert into location(id, latitude, longitude, city_name)
values (110, 33.483, 126.403, '제주');
insert into review (id, star, review)
values (110, 5, 93);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (110, '제주 애월 감성 공유 민박. 별채 2인실', 'Aewol-eup, Jeju-si의 게스트용 별채 전체', 85000, '집 전체', 0, 2, 1, 110, 110, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/eee837a9-c283-41f9-bfa4-1205963de2f9.jpg?im_w=720', 110);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bd6e8e32-490e-4a28-b3f1-d3a62fb3b527.jpg?im_w=720', 110);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1934a04c-a510-4f7f-bf41-b2ae2f11578a.jpg?im_w=720', 110);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b4d9b2e6-7c94-4349-a366-9f825c2c67a4.jpg?im_w=720', 110);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3ba06bd5-f766-43f5-a9bf-2156c57294fa.jpg?im_w=720', 110);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e8b45864-dc46-476f-839b-bc6b665a52cd.jpg?im_w=720', 110);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7b9d3d45-32b6-40ba-b376-279413fe9edc.jpg?im_w=720', 110);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6950aade-04a6-4327-8aac-e4a440d9addd.jpg?im_w=720', 110);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d8bea744-de94-4759-80a2-02ba63b288ea.jpg?im_w=720', 110);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b0faa1ce-b66a-4284-90d4-ce34654bed35.jpg?im_w=720', 110);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/945b3c8c-3953-4115-a7bb-50023708cd40.jpg?im_w=720', 110);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/866f6049-5b3d-471c-81a3-d10ee78de38d.jpg?im_w=720', 110);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0561e5f3-ab6f-40a0-a3f2-57bcdec9b0d8.jpg?im_w=720', 110);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7833a2c3-6fa1-4826-a53a-df2e683769eb.jpg?im_w=720', 110);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4a58450a-aa6f-4554-9d79-5f2d0438444a.jpg?im_w=720', 110);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3754aa75-9068-4f7a-a1c7-ddfaa709059d.jpg?im_w=720', 110);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/431bf153-9f94-4dbc-b547-880876f47e1b.jpg?im_w=720', 110);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dfcdfb8e-da3e-47ea-b189-405c3c06c12c.jpg?im_w=720', 110);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/66d1cba6-76d1-46b0-b5cf-1e57f24b021a.jpg?im_w=720', 110);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e77e504a-573b-4dd8-9ed8-80c0c7cf17ca.jpg?im_w=720', 110);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/894702c7-4ea9-4bbb-a738-30c339a61ff3.jpg?im_w=720', 110);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6b1c0a9e-aca0-4ea0-bc30-ba10762dd255.jpg?im_w=720', 110);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/28a1ee1a-4b3c-4d98-939e-6e81abe4e916.jpg?im_w=720', 110);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/92718916-8c73-480c-8fc4-83c24bb53b62.jpg?im_w=720', 110);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/abbd0c06-a714-4cc3-936c-b57bae332d3d.jpg?im_w=720', 110);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/21d86d87-e05d-49d6-b646-a2e0c2305859.jpg?im_w=720', 110);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/82b72e61-6163-4b89-9fe9-41b341874c12.jpg?im_w=720', 110);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/22c983fb-dddf-4682-aae2-6c8c8f1112eb.jpg?im_w=720', 110);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3f3354b0-12cf-4217-93e4-6da047a62ad4.jpg?im_w=720', 110);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8b8342e3-f354-4a2a-acb1-4ad2cfce8cb9.jpg?im_w=720', 110);
insert into location(id, latitude, longitude, city_name)
values (111, 33.466, 126.337, '제주');
insert into review (id, star, review)
values (111, 5, 133);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (111, '베이스룸(1인실 슈퍼싱글베드) [하버하우스웨스트]', 'Aewol-eup, Jeju-si의 개인실', 90000, '개인실', 1, 1, 2, 111, 111, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/cee1dd2d-1fbf-4ecd-8a78-389263ed15ac.jpg?im_w=720', 111);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1023bb30-dd24-43f8-a785-b22f985ccc9e.jpg?im_w=720', 111);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/261b91e2-c59f-468d-835e-aaa42e92b685.jpg?im_w=720', 111);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2e0ddade-8b66-4b76-8f6a-9a1fec2235e5.jpg?im_w=720', 111);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7cca147f-1fe2-42bb-b26b-197a1ad55bb3.jpg?im_w=720', 111);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b82eb70c-8f63-432d-bf02-7524f431e58a.jpg?im_w=720', 111);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/900d3ba7-4f0c-4530-8ebf-4b812d5f3a9d.jpg?im_w=720', 111);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7b309195-de02-4d22-a9d1-24255df08b8a.jpg?im_w=720', 111);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dc4e00fb-e9a9-44e2-adc3-fa0b8d8a3560.jpg?im_w=720', 111);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/78de0c9c-f3ab-488e-846f-3748ed5770d0.jpg?im_w=720', 111);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3f3a00b0-60fd-4ec9-bc30-0082ab0bf333.jpg?im_w=720', 111);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/58307894-11b1-4ee3-b0cb-f62394b2583f.jpg?im_w=720', 111);
insert into location(id, latitude, longitude, city_name)
values (112, 33.376, 126.217, '제주');
insert into review (id, star, review)
values (112, 5, 75);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (112, '제주 협재 금능 독채(풀옵션) 제주 가옥 한달살기 (월세) 더월령 입니다', 'Hallim-eub, Cheju의 전원주택 전체', 100000, '집 전체', 2, 4, 1, 112,
        112, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-39848173-unapproved/original/fd328600-c025-4219-a21b-93aa34edffb3.JPEG?im_w=720',
        112);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-39848173-unapproved/original/7e6b23f6-aac0-4bb6-aa0c-b1eb49b44311.JPEG?im_w=720',
        112);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-39848173-unapproved/original/d6e1fc48-2e39-400e-bdd3-14edae614fad.JPEG?im_w=720',
        112);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-39848173-unapproved/original/c79015df-3434-43fc-a712-0b8bfe58bb4d.JPEG?im_w=720',
        112);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-39848173-unapproved/original/53792fc4-4ee1-46e3-907a-1f6e77f1ad3c.JPEG?im_w=720',
        112);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/895a94e3-d12f-40bc-826a-4def45dc357a.jpg?im_w=720', 112);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2a0bcd4f-1021-4437-938d-5e8330281423.jpg?im_w=720', 112);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/40416c13-873d-4997-94f2-9f14efa40d83.jpg?im_w=720', 112);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/16cf5420-b92d-48bd-97a6-09a39edc3269.jpg?im_w=720', 112);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-39848173-unapproved/original/30b0f438-fc98-4477-aeff-534c66544780.JPEG?im_w=720',
        112);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b06cf35c-92b1-4637-a496-9afd80dc309c.jpg?im_w=720', 112);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-39848173-unapproved/original/8db51b4e-d809-4997-a4dd-0ecbf20ae2f8.JPEG?im_w=720',
        112);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/474bc9e1-5065-4516-b2cf-5bab840b8320.jpg?im_w=720', 112);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-39848173-unapproved/original/23c89d02-f37f-401b-a55d-e1e76e7b8e6c.JPEG?im_w=720',
        112);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-39848173-unapproved/original/5eebbc18-c71d-4765-8877-1050c34111bd.JPEG?im_w=720',
        112);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3451b51f-87cc-44db-8c3f-34c956d43ef3.jpg?im_w=720', 112);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/76fd8572-4f84-45c3-a5d6-0a8b49be53bb.jpg?im_w=720', 112);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e5c247d1-e2aa-4f8e-a60a-73c1e0d26d50.jpg?im_w=720', 112);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c57e89fd-4e55-4cd4-8be8-45e3cfe32ccb.jpg?im_w=720', 112);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1d680aaa-6ac2-4ec4-b69b-7276eb283726.jpg?im_w=720', 112);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f85f5877-3919-4eca-9a7d-7e91120c4008.jpg?im_w=720', 112);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/79744712-37d6-406c-a9af-318b9cf21cb5.jpg?im_w=720', 112);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-39848173-unapproved/original/504deb04-12dc-44ed-b163-933b7ae82209.JPEG?im_w=720',
        112);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ce315c1b-2c73-4188-80c0-793286e35e6b.jpg?im_w=720', 112);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3c9b9d7f-1ce2-4871-b83e-1071ddb7ec75.jpg?im_w=720', 112);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9a5b5ae3-dcac-421f-9577-680740373691.jpg?im_w=720', 112);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-39848173-unapproved/original/fe21a4b4-710e-4d80-8411-459666b23a95.JPEG?im_w=720',
        112);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/75e48a2d-17e9-4da7-b25a-4cb9ea0b1d76.jpg?im_w=720', 112);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/79695a1b-d610-4d16-9be5-19a7d79c3969.jpg?im_w=720', 112);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/pro_photo_tool/Hosting-39848173-unapproved/original/ea8d0b4d-e69d-4e91-8ec4-e0c6585602a0.JPEG?im_w=720',
        112);
insert into location(id, latitude, longitude, city_name)
values (113, 33.241, 126.335, '제주');
insert into review (id, star, review)
values (113, 5, 36);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (113, '금모래해변 여성전용 셰어하우스 소담인5(개별화장실)', 'Andeok-myeon, Seogwipo의 개인실', 80000, '개인실', 1, 2, 1, 113, 113, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/c3202f96-e488-48c5-acd6-b3dae3a5ad4d.jpg?im_w=720', 113);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cc289c68-de9c-45f5-b1a5-e41ecc13503c.jpg?im_w=720', 113);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b7c241e1-662d-4e29-8106-0fbaca70a658.jpg?im_w=720', 113);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8d2711a3-8bc1-47a1-a5c4-d04ca0d8239a.jpg?im_w=720', 113);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/528e5a44-7a43-45a1-a711-184e27a664b5.jpg?im_w=720', 113);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/aa9d739c-a5c6-4fca-be0e-1d44b3dc9232.jpg?im_w=720', 113);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6b6814dd-f7f3-4268-9a75-315445fbccf9.jpg?im_w=720', 113);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/16b84f45-5f46-43d7-8e38-809612fd4f6f.jpg?im_w=720', 113);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3cde2367-0f57-4672-aa95-3255dcce9ef5.jpg?im_w=720', 113);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c26dd6aa-4f63-4fc8-a2ea-4662d4ba8f82.jpg?im_w=720', 113);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/db0d6078-d70d-4989-aacb-9b6cb602183a.jpg?im_w=720', 113);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8af11bb6-37f6-402c-b555-23a83866c89d.jpg?im_w=720', 113);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a8d710d1-e475-4a52-a4e3-c83c24ae15fe.jpg?im_w=720', 113);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8f84f5d6-f42e-4ea5-a4f1-215d14af9939.jpg?im_w=720', 113);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/db61f38d-972e-4ec0-b9e1-bb9884e7ba17.jpg?im_w=720', 113);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/749fafb1-988e-4430-a167-188a26403016.jpg?im_w=720', 113);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/aedc6965-0d8f-471e-be9d-a876c3398313.jpg?im_w=720', 113);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f6ee4885-d41b-4494-b18b-6009f28b8834.jpg?im_w=720', 113);
insert into location(id, latitude, longitude, city_name)
values (114, 33.373, 126.859, '제주');
insert into review (id, star, review)
values (114, 5, 84);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (114, '제주감성숙소 /넷플릭스/빔프로젝터/하트욕조//프라이빗정원/느리게가는구름
(취사×바베큐×)', 'Seongsan-eup, Seogwipo-si의 집 전체', 100000, '집 전체', 1, 2, 1, 114, 114, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/3590d9f3-5332-47ce-84aa-fbe12a2b19ee.jpg?im_w=720', 114);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/58ac1301-8614-4254-9613-175f086b2533.jpg?im_w=720', 114);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4cfe4da4-1988-40e2-a851-aff4192d3750.jpg?im_w=720', 114);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f5ffba61-b54d-488b-b985-9331088af8a0.jpg?im_w=720', 114);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dac2a7c5-46c7-4ff5-bc59-1d54ce36c0fe.jpg?im_w=720', 114);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/81ed71f1-8179-4ef2-843e-dd645d17e973.jpg?im_w=720', 114);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d6e2303f-b7e0-4287-9e30-81459f5920ba.jpg?im_w=720', 114);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/22405df8-6936-41a1-9fb1-e3d5c7ed1d39.jpg?im_w=720', 114);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/def5fe36-3353-4602-abaf-5816f50fafa4.jpg?im_w=720', 114);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/502856ed-c321-4676-a138-dc582eb96464.jpg?im_w=720', 114);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/99f809ed-4375-46e2-8858-19c6187d7573.jpg?im_w=720', 114);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/16333a36-52a8-48bd-9230-1cd42b5fce7f.jpg?im_w=720', 114);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/26fc671d-79fb-4b68-a87c-23a156d766d0.jpg?im_w=720', 114);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/81a66d1b-4ff7-48ca-915c-9e8d88fec1c4.jpg?im_w=720', 114);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5346475f-2263-426a-b9e5-6864f1904c63.jpg?im_w=720', 114);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dc915494-3cf6-4147-ba45-71263f9467f8.jpg?im_w=720', 114);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1c222db5-9745-4390-ae1d-600663a9eeb5.jpg?im_w=720', 114);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6d1ed22a-4265-4348-8631-49cf9d6d961e.jpg?im_w=720', 114);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8ba80430-ecc7-4fc0-9cae-cf8cadb1e6b6.jpg?im_w=720', 114);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2a8fbd4d-f06a-4e50-a26b-bbd0c66aeabe.jpg?im_w=720', 114);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/84416b36-6365-43d6-ae55-0bcaec17d2e1.jpg?im_w=720', 114);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d28b6455-9293-4ac7-a819-8426abf5e93f.jpg?im_w=720', 114);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5eb34e98-4b37-48d3-b266-959c0ed20331.jpg?im_w=720', 114);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/09c1c30e-2258-4b87-a477-86b6d1b88bbb.jpg?im_w=720', 114);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/da5d5638-f4f0-4c2e-ac2a-e21d16e6b016.jpg?im_w=720', 114);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4be56ada-47c4-4dac-b3a3-6c9626aa714c.jpg?im_w=720', 114);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/87ec696a-6e65-488b-8efe-ad40d1543639.jpg?im_w=720', 114);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/01aa26c1-d46b-43f1-89ec-5c8c57817a8e.jpg?im_w=720', 114);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/70c684aa-a20c-4e67-a105-8590dcf725c3.jpg?im_w=720', 114);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a396cf96-7e5e-4945-a762-476786851af1.jpg?im_w=720', 114);
insert into location(id, latitude, longitude, city_name)
values (115, 33.324, 126.168, '제주');
insert into review (id, star, review)
values (115, 5, 19);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (115, '제주서쪽 바닷가마을의 시골집 [서로의 나날]', 'Hangyeong-myeon, Cheju의 개인실', 100000, '개인실', 1, 2, 1, 115, 115, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/771b70b2-7e88-455b-b289-1bee1785f092.jpg?im_w=720', 115);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3e373afd-0359-4843-92df-1791ef719958.jpg?im_w=720', 115);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/65e70300-3332-4c63-a205-9ac91c9e790c.jpg?im_w=720', 115);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/37da27fc-4f81-4579-82b5-fd6558fe5992.jpg?im_w=720', 115);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/63758f57-70e2-4c5b-bb22-bf6ddd0af576.jpg?im_w=720', 115);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5d3264b5-82e1-4edd-9e7f-a50e0f931ea8.jpg?im_w=720', 115);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4b086b00-4ba4-4c0b-b4dd-b429111b7da6.jpg?im_w=720', 115);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3b3b6f93-eaec-4d6d-a8f0-48974b94d804.jpg?im_w=720', 115);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/452b9f51-e964-4801-adac-1fe06ad27f90.jpg?im_w=720', 115);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/62b64ff4-d3d0-4b77-86f8-a228986c5be9.jpg?im_w=720', 115);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ec714609-f190-496d-9e94-8af9ecd15359.jpg?im_w=720', 115);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4aff82ab-66ed-4533-afc2-9a196ee4fdaf.jpg?im_w=720', 115);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1983f053-5bbb-4ec4-a0a5-ce7486539398.jpg?im_w=720', 115);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/738654a1-db73-4b66-8a52-27b19f0de3cc.jpg?im_w=720', 115);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7d6c0a75-97e5-4299-afe1-ac9d2d3675ae.jpg?im_w=720', 115);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/57211d89-9377-4284-b72f-129d3495aece.jpg?im_w=720', 115);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/40884dda-dd67-4f65-a99c-3176c54b0c01.jpg?im_w=720', 115);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/949b38d4-fd32-4b38-a1c9-33743d19ec1e.jpg?im_w=720', 115);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bc8e0f05-170e-4b7f-987d-65c26239333c.jpg?im_w=720', 115);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/35738b5c-acc1-4223-beaa-e9e447c0ceb2.jpg?im_w=720', 115);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1d9eabc3-6651-4ced-80a7-042fb082ac53.jpg?im_w=720', 115);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7f5867b0-abbd-4c33-a5f4-dae15f14d7cc.jpg?im_w=720', 115);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ff6c2f71-f464-4f11-b659-a3da4aeaed19.jpg?im_w=720', 115);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6b3a563e-7d13-42e1-959e-322469b015f0.jpg?im_w=720', 115);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1e277198-ad2e-4009-b314-fccedaaba539.jpg?im_w=720', 115);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a574f6fb-10c8-4e0b-9921-a4ed37895820.jpg?im_w=720', 115);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/eae95585-9ae1-4439-870c-1b1b892fdd06.jpg?im_w=720', 115);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/73f8f78a-7083-4032-be48-2351473b7436.jpg?im_w=720', 115);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3a2be764-72d3-484f-862e-b8c7d48e00c1.jpg?im_w=720', 115);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c0f8fcbf-b529-4422-88a8-412fd76723b4.jpg?im_w=720', 115);
insert into location(id, latitude, longitude, city_name)
values (116, 33.457, 126.35, '제주');
insert into review (id, star, review)
values (116, 4.5, 5);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (116, '2인실"우리동네하가리"
상업적공간이 아닌 냥이가  갑인 공간 입니다
공지사항 필독!!', 'Aewol-eup, Cheju의 개인실', 90000, '개인실', 1, 2, 1, 116, 116, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/e31a3188-2260-43a1-b979-bd9a695c192d.jpg?im_w=720', 116);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a5f4ebac-90b9-4011-b300-a6ec1c8da59c.jpg?im_w=720', 116);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b70a8569-89fa-4609-a22c-30702b32af59.jpg?im_w=720', 116);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f5d46786-e5d9-4b9c-87c0-42f436b962d7.jpg?im_w=720', 116);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/eab82462-d369-40d2-8054-ff03d12e7d12.jpg?im_w=720', 116);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5156ed28-9200-4bea-854b-f3350d204a57.jpg?im_w=720', 116);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3f1fe77f-ca65-4ca7-adbc-88b746e28e98.jpg?im_w=720', 116);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/19d752b2-6d16-49cc-a407-e91b31cc427a.jpg?im_w=720', 116);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/05961042-c46d-41a1-a66f-ab716a4d2171.jpg?im_w=720', 116);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8f295c54-6801-4b5d-91b5-cc8dc43e9589.jpg?im_w=720', 116);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/15875064-f302-4259-b1f4-6bb4095839fc.jpg?im_w=720', 116);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/aa583e8e-a830-4865-8200-89baf615b8a5.jpg?im_w=720', 116);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c5354929-e1f3-4fda-864d-94d3f5116fbb.jpg?im_w=720', 116);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f0c1771e-10fb-4243-9cd9-1c7bbca5227b.jpg?im_w=720', 116);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/193ae864-8abc-43ba-9a2a-4356d687304b.jpg?im_w=720', 116);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bed4bf8c-5d4b-409e-b4e1-2cd45e0d309d.jpg?im_w=720', 116);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/227e201f-068c-4ea7-b01a-068fd2986d9f.jpg?im_w=720', 116);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/77934f6b-5879-4deb-973f-d28828d72d95.jpg?im_w=720', 116);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3fbd495a-76d3-4cbd-a418-e7753212baa8.jpg?im_w=720', 116);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/255c1995-2375-465c-a323-f6a4834a3793.jpg?im_w=720', 116);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c0e50a1b-0e34-48f4-a206-f71f2962df45.jpg?im_w=720', 116);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/99d72264-57ac-442f-b688-d4db47984cb3.jpg?im_w=720', 116);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/57de953a-9dd7-478c-9d62-1d0083db95d8.jpg?im_w=720', 116);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/465c25b0-1464-432b-b6a5-efdf1e5e3ad2.jpg?im_w=720', 116);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/70f740fb-8f9e-4f19-be85-5e3ccee79f40.jpg?im_w=720', 116);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c8500221-416a-4108-aa12-accaa5a29abf.jpg?im_w=720', 116);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8614a945-12bc-4194-8ca0-f799ffc886a7.jpg?im_w=720', 116);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f6b5e340-5491-4327-9639-1d572ea76647.jpg?im_w=720', 116);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/72f48027-0deb-4ca1-b3e2-eb06b49f40d7.jpg?im_w=720', 116);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/59e2d861-a19f-4716-b06b-5c52d36efc8e.jpg?im_w=720', 116);
insert into location(id, latitude, longitude, city_name)
values (117, 33.49, 126.487, '제주');
insert into review (id, star, review)
values (117, 5, 57);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (117, '제주공항 💛 5분거리 여성전용 신축건물 신제주중심, 아늑한숙소', 'Yeon-dong, Cheju의 레지던스 전체', 92000, '집 전체', 1, 2, 1, 117, 117, 1,
        1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/933742c5-2ad8-45dc-b9c5-ad705dab8880.jpg?im_w=720', 117);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2ac92737-46e0-480c-a371-4b9b62607d7a.jpg?im_w=720', 117);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/054b985f-ca02-44d8-ae37-707d761d5f10.jpg?im_w=720', 117);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/02f06ca8-e4da-447c-9021-25e0764926fa.jpg?im_w=720', 117);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/371c44ae-159d-44e5-ab5a-85f5f80579c8.jpg?im_w=720', 117);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b33b1315-4fc7-4553-8e4b-939250de0c3b.jpg?im_w=720', 117);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6b923a3b-fb91-4cb7-9757-f5623a3cfcb5.jpg?im_w=720', 117);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c9622665-88d5-47db-9caa-998894be252b.jpg?im_w=720', 117);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6d0d5c14-2054-480e-81a7-ab98d73f13d8.jpg?im_w=720', 117);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8ef6a086-a576-44ed-a6fd-f2acc24a386d.jpg?im_w=720', 117);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b0ddb726-790d-4b90-86da-fe05fd7d49ee.jpg?im_w=720', 117);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c9211c62-2d2f-4626-8e6d-0679abca537f.jpg?im_w=720', 117);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dc8cd211-c47d-411f-886f-bd3660813e81.jpg?im_w=720', 117);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7be0866d-4189-403b-8dbb-c084f2980ba1.jpg?im_w=720', 117);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0f23ef26-929b-418b-bd32-eaa9940e70fc.jpg?im_w=720', 117);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/99cbb7d5-e445-4632-ad7e-4b81241fc496.jpg?im_w=720', 117);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0605d7f3-54e9-40bb-93df-aabc966a0d5f.jpg?im_w=720', 117);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/caffd721-f926-45c9-b5ad-483b621d938a.jpg?im_w=720', 117);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2b574d73-9c03-41f6-b0b5-83e34e713659.jpg?im_w=720', 117);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9b09043a-5902-49a4-92fa-2fdcd12c29af.jpg?im_w=720', 117);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/911c862f-5eef-4d12-a107-fa9174624c8b.jpg?im_w=720', 117);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d489b959-0c77-44c6-9518-a3446d84b9c4.jpg?im_w=720', 117);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f2c00aca-82f3-4a42-a3b2-19b792c3f3eb.jpg?im_w=720', 117);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dbb4d41f-f5a2-4459-8253-924edce7d61f.jpg?im_w=720', 117);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/65c180b8-aa41-4c4f-9ff3-60c7587462e6.jpg?im_w=720', 117);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/99002115-3b3a-451c-a268-e7371af8f6df.jpg?im_w=720', 117);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/41afabd0-d077-405d-ad2a-597c13ec9d05.jpg?im_w=720', 117);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0838cc58-a043-4d32-83ef-f8547cef2378.jpg?im_w=720', 117);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5b5c36de-063f-482c-ae07-fd7ebb61044e.jpg?im_w=720', 117);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3b268caa-2ef4-450b-a7e5-7ddb3be1049f.jpg?im_w=720', 117);
insert into location(id, latitude, longitude, city_name)
values (118, 33.493, 126.492, '제주');
insert into review (id, star, review)
values (118, 4.5, 230);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (118, '(할인중) YBB 공항근처/ 가성비 최고/ 개인실/ 개별욕실/ 주방/ 세탁건조기/ 주차공간', '제주시의 호스텔 객실', 100000, '개인실', 1, 2, 1, 118, 118, 1,
        1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/e42d603e-b8f2-49cd-b265-d9d89f57ecd3.jpg?im_w=720', 118);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f9d540d7-a5db-41cf-8c78-406612949a26.jpg?im_w=720', 118);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5324a327-57d4-4e2b-93c6-cb0d3b3b70f0.jpg?im_w=720', 118);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/54b21d84-5296-4fde-b125-a820b6d25fc9.jpg?im_w=720', 118);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e0718d1b-4e86-4ae8-a2f7-9f51efa7ea9f.jpg?im_w=720', 118);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0f56f86f-3175-4fec-8432-ec181c965bc0.jpg?im_w=720', 118);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/753b26f7-70ec-4ef5-8b5a-fefbe05d0e55.jpg?im_w=720', 118);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/de325d2f-ee76-4656-8aff-329489e3267c.jpg?im_w=720', 118);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/931459b0-47d6-4c93-8993-d9172e4afd0b.jpg?im_w=720', 118);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/109cdf7e-d897-4513-82df-a7ef51f4241b.jpg?im_w=720', 118);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1a631cbd-2494-4d83-b40e-6739ff26f3ed.jpg?im_w=720', 118);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-27497520/original/ab3c8d5e-b4d0-45a9-b047-87a3447e3f2c.jpeg?im_w=720',
        118);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-27497520/original/bfdf7c9b-ded3-4fe2-925d-ceec21f926bb.jpeg?im_w=720',
        118);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-27497520/original/75224dda-f7dd-476b-bc3b-4062406011ea.jpeg?im_w=720',
        118);
insert into location(id, latitude, longitude, city_name)
values (119, 33.494, 126.424, '제주');
insert into review (id, star, review)
values (119, 5, 220);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (119, '[Open] *Woman. Lovely 3 cat.Aewol. Bus stop 2min.', '제주시의 개인실', 95000, '개인실', 0, 2, 1, 119, 119, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/af9af469-6c11-42fc-a534-9a6585ce6153.jpg?im_w=720', 119);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cb1d2caf-c6c8-4ab2-88ab-8f78adedeefd.jpg?im_w=720', 119);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/124d6490-15e5-4cb8-84e4-a7980f956843.jpg?im_w=720', 119);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/36c49906-5219-4661-b27d-471655eae043.jpg?im_w=720', 119);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e7c6d014-2287-400a-9935-3521eed439b9.jpg?im_w=720', 119);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/87500d32-dad2-4f2f-88aa-6caa281a11a5.jpg?im_w=720', 119);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/89e365a1-412d-4c64-b613-624b0c35c6a7.jpg?im_w=720', 119);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/71138950-280b-4f2d-a80d-fae677052cc2.jpg?im_w=720', 119);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8c887923-664f-4a08-b75b-853e252c256d.jpg?im_w=720', 119);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b89f289c-3f88-4ba8-befd-6333f314c625.jpg?im_w=720', 119);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2dbdfbf0-b3eb-4045-ac0e-5aa595e3be5e.jpg?im_w=720', 119);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1f8b64f9-43c7-46fc-8a75-ef3883a3862c.jpg?im_w=720', 119);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/30b5cedd-81b3-4cd9-9a9d-80cc1de06c94.jpg?im_w=720', 119);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c544e915-cb6f-44ea-a5e0-c0df42d884e9.jpg?im_w=720', 119);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ab07f8f1-be3a-4015-bf5a-e2fd87055687.jpg?im_w=720', 119);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a6817a27-25fc-4355-9e82-829f3ff0f1cd.jpg?im_w=720', 119);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bda3443a-3f75-4ccf-b5c4-dfee1b7ee5c2.jpg?im_w=720', 119);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2c14dda1-aad1-405b-97c5-4515074cded7.jpg?im_w=720', 119);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5739378c-aa82-4f2f-a0d5-73f7da769384.jpg?im_w=720', 119);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/26725375-5cd5-469f-be59-cf06fbf08ec5.jpg?im_w=720', 119);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/73ae4961-e89e-4710-85d8-da1712cc39a4.jpg?im_w=720', 119);
insert into location(id, latitude, longitude, city_name)
values (120, 33.345, 126.183, '제주');
insert into review (id, star, review)
values (120, 5, 64);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (120, '또시 인 제주<삼삼구옥> 별채', 'Hangyeong-myeon, Cheju의 게스트용 별채 전체', 90000, '집 전체', 1, 2, 1, 120, 120, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43964986/original/bf1d7592-66dd-440f-829c-118ae48bd947.jpeg?im_w=720',
        120);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43964986/original/b3f67156-0bae-47eb-854a-7e93ae6b6398.jpeg?im_w=720',
        120);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43964986/original/95ab94db-fb88-40eb-ab86-4c709a6ded79.jpeg?im_w=720',
        120);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43964986/original/f15077d5-f47d-4474-9a98-03f18742be32.jpeg?im_w=720',
        120);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43964986/original/2f7eb206-7283-44ec-ab31-d861966ed3d9.jpeg?im_w=720',
        120);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43964986/original/506e6de4-4323-4e53-8df8-51b317a93acf.jpeg?im_w=720',
        120);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43964986/original/71a1f7b7-d3f2-4de7-b93b-53f09c08bd8a.jpeg?im_w=720',
        120);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43964986/original/7ebe886c-69f7-4e05-a251-79b59e2c58d9.jpeg?im_w=720',
        120);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43964986/original/dd755ac0-5168-4dd3-b378-dcd7776e5dc1.jpeg?im_w=720',
        120);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43964986/original/1d79c97d-52cc-4083-b01f-b8c3bc07db33.jpeg?im_w=720',
        120);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43964986/original/4d1011b1-c275-4862-8375-6a7d2038a47e.jpeg?im_w=720',
        120);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43964986/original/2b5fedeb-9b25-417b-a769-6dc50b39c015.jpeg?im_w=720',
        120);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-43964986/original/383032c9-5d87-4b5d-9cce-14158a2cb3e9.jpeg?im_w=720',
        120);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/de14a572-d10b-498d-8aa3-611c76443774.jpg?im_w=720', 120);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b33c0a82-51c0-4c9b-a8c0-cac5ba745899.jpg?im_w=720', 120);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9f452d1f-0fea-406c-b71d-d1b72551e2c9.jpg?im_w=720', 120);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/36cbd4bb-740b-4bcd-b2ca-904f82a6655e.jpg?im_w=720', 120);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3fd9d5a6-7cf1-4698-83c5-a70f2183cc1a.jpg?im_w=720', 120);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/10d2e126-6b02-4554-8456-61a77669b4b2.jpg?im_w=720', 120);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e6c3db99-7bf9-4118-89bc-8af263ab33c5.jpg?im_w=720', 120);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d95aee7e-9e07-440f-bf2d-6c20efd81c00.jpg?im_w=720', 120);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/82680581-31d7-4755-831e-4f6b700a54ad.jpg?im_w=720', 120);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a74253e5-90b6-462e-a1aa-32ff6ad57234.jpg?im_w=720', 120);
insert into location(id, latitude, longitude, city_name)
values (121, 33.452, 126.402, '제주');
insert into review (id, star, review)
values (121, 5, 8);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (121, '제주도 애월읍 공기좋은 숙소 Aewol Orange', 'Aewol-eup, Jeju-si의 전원주택 전체', 60000, '집 전체', 1, 2, 1, 121, 121, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/a14af3b8-5311-4661-869c-83df4133a632.jpg?im_w=720', 121);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7742739a-e448-4052-bdf4-72c3d0584904.jpg?im_w=720', 121);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/50c55ba8-ce62-43a9-ac57-dca7e9db568c.jpg?im_w=720', 121);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8b50159e-19e3-407e-a131-9791396b5b61.jpg?im_w=720', 121);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f7fdc8ae-5bd4-4178-b717-c7927cff6807.jpg?im_w=720', 121);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/382013d6-11fc-4e8f-b312-88ca06010d80.jpg?im_w=720', 121);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/06a383e9-7acd-4165-913a-a5cc0cf6eebf.jpg?im_w=720', 121);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/84692d48-8806-4e78-b677-bf9556705cf0.jpg?im_w=720', 121);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/df04b3f7-f7c1-4436-914e-6a15aef502e7.jpg?im_w=720', 121);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/498a5ef4-e208-41d7-9698-589294896d3b.jpg?im_w=720', 121);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/abb2fcdb-f338-4f3c-9b36-927d09937ebc.jpg?im_w=720', 121);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3ca34633-a658-4c82-8b7e-e988ee29d73c.jpg?im_w=720', 121);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d34e7390-c63f-4b40-a1ca-928fa53ea187.jpg?im_w=720', 121);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6faebff7-6c60-4fdd-bd3f-45ff7a850152.jpg?im_w=720', 121);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b5b5c668-73e9-4137-a799-99f34cb99026.jpg?im_w=720', 121);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9bf99a05-2dde-4f7c-98c9-85285b1ab1e4.jpg?im_w=720', 121);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/db44b6ed-ece8-4180-92a0-63e69e1bbea7.jpg?im_w=720', 121);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/06f6c520-e9e8-4932-9c60-86b36c1feb2f.jpg?im_w=720', 121);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e156a6b9-723c-4061-ba1d-b7e3693754d2.jpg?im_w=720', 121);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/74f65afb-5c6c-4f5d-bdca-0e5821c0ace9.jpg?im_w=720', 121);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/de3c99c2-925f-42c7-ba18-df38c3c8e190.jpg?im_w=720', 121);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/107f48e6-51a6-4702-bd3b-bb002f9b83aa.jpg?im_w=720', 121);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3f66b732-233a-497c-b6a6-a6bef1fbd770.jpg?im_w=720', 121);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a2b54b0c-63ae-4a6f-9d41-5b30f06bc709.jpg?im_w=720', 121);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/26f639c5-1dff-4231-9503-e2bef2dd5e58.jpg?im_w=720', 121);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/57f1181a-1012-4eed-9f5d-a36e7182a809.jpg?im_w=720', 121);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f35525fa-8c37-423d-bc42-1aec7ffa3c78.jpg?im_w=720', 121);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7060d975-8059-4e83-b83d-80d85c7be9ba.jpg?im_w=720', 121);
insert into location(id, latitude, longitude, city_name)
values (122, 33.325, 126.169, '제주');
insert into review (id, star, review)
values (122, 5, 28);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (122, '제주서쪽 바닷가마을의 시골집, 서로의 나날', 'Hangyeong-myeon, Cheju의 개인실', 100000, '개인실', 1, 2, 1, 122, 122, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/4d52abff-bf3c-4d80-8c54-e55879b778f8.jpg?im_w=720', 122);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1fdf5793-dcb6-4315-92f8-da13cb16312a.jpg?im_w=720', 122);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d9c37cbd-4b05-4188-830d-9d5586bd1461.jpg?im_w=720', 122);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9713667d-7339-47ad-919c-7607a63766c3.jpg?im_w=720', 122);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/92b479f2-baeb-4885-9ebf-b1ec6597246f.jpg?im_w=720', 122);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/89b3c574-e5b1-4e23-a5dd-e1cb11057449.jpg?im_w=720', 122);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e5857e40-637d-4f35-961b-f80e537115a5.jpg?im_w=720', 122);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f22163c8-5bcd-4039-948b-8c9c41736568.jpg?im_w=720', 122);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/983fb12d-887b-4857-bbff-2df9080bae15.jpg?im_w=720', 122);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/aca270ee-d7cc-4eac-9be0-88b94902a8b9.jpg?im_w=720', 122);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ec714609-f190-496d-9e94-8af9ecd15359.jpg?im_w=720', 122);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7f8034e9-8e63-404e-800d-f63c05ac13c4.jpg?im_w=720', 122);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f898b87c-963f-4299-8daf-d6ed23e97eaf.jpg?im_w=720', 122);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b3d6e972-058d-422b-b4bf-9cfcbca6dbb5.jpg?im_w=720', 122);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7d6c0a75-97e5-4299-afe1-ac9d2d3675ae.jpg?im_w=720', 122);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/57211d89-9377-4284-b72f-129d3495aece.jpg?im_w=720', 122);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bc02a7d4-07c9-4258-b6c7-1bf56d408730.jpg?im_w=720', 122);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/949b38d4-fd32-4b38-a1c9-33743d19ec1e.jpg?im_w=720', 122);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c1f0381e-aca6-4d9d-bd1a-f3eca8dbd4df.jpg?im_w=720', 122);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6fa07a03-dca8-4f1a-9cc7-8108757d7b39.jpg?im_w=720', 122);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d9d65547-1279-488a-859f-08efcc956e86.jpg?im_w=720', 122);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d819cb71-b8cd-4c39-be65-31746ac80ed7.jpg?im_w=720', 122);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9ec03265-c8d3-4512-9fa4-3b037df4127d.jpg?im_w=720', 122);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6b3a563e-7d13-42e1-959e-322469b015f0.jpg?im_w=720', 122);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/de85d0d1-19d7-44f5-b624-b05ed6b2b021.jpg?im_w=720', 122);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/537f34c0-7495-40d5-8099-83c47cfd0a16.jpg?im_w=720', 122);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/703c4072-c0a0-48b0-b354-bdab298769a0.jpg?im_w=720', 122);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/20cb1853-f19c-4048-9a8a-68c0d8da1514.jpg?im_w=720', 122);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c9e8878d-4f17-4edb-94b1-0fae85d9f4d4.jpg?im_w=720', 122);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b2c93a53-4759-4c29-8b0f-5c65c1004b18.jpg?im_w=720', 122);
insert into location(id, latitude, longitude, city_name)
values (123, 33.236, 126.364, '제주');
insert into review (id, star, review)
values (123, 5, 145);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (123, '" 제주감성숙소" 미니메리 [미니메리룸:] 연박불가룸', '서귀포시의 개인실', 100000, '개인실', 1, 2, 1, 123, 123, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/24c13157-5820-4ac5-89de-c61ff56d0b7d.jpg?im_w=720', 123);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f21352bf-128d-4577-9298-51db1e7bb8f7.jpg?im_w=720', 123);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9f477c44-0fe8-4a86-a368-9884e20db07c.jpg?im_w=720', 123);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0976af5e-be2b-494e-ad79-d0c41c9fb548.jpg?im_w=720', 123);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/16d5ab73-f10d-46b8-8560-34f8ca896b2f.jpg?im_w=720', 123);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8d9ef1a0-b8a3-4dbb-a4c1-405707c503aa.jpg?im_w=720', 123);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/220e7a68-7cb1-4a9a-872c-fd4467e8b304.jpg?im_w=720', 123);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5900e2e0-ad02-446d-ac71-1d3c320cc354.jpg?im_w=720', 123);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/64c80957-ae15-40ed-b80f-c236b5fa0a82.jpg?im_w=720', 123);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cd5e4345-8a0f-4ef9-8cbf-80b255368b00.jpg?im_w=720', 123);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3e72cce0-c68d-4546-9ad7-d7f823fcd581.jpg?im_w=720', 123);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4d97415d-3337-45cc-8c1d-9671b607536b.jpg?im_w=720', 123);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f16dab64-f616-4d88-8b6f-956e7794135b.jpg?im_w=720', 123);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4e6c8c53-531e-42c9-bb19-b790c955158f.jpg?im_w=720', 123);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5e595e76-00fd-485f-91ac-b949cb7c5c4c.jpg?im_w=720', 123);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a0343f4b-5e3c-4ed0-ada8-aa10fca4066e.jpg?im_w=720', 123);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/10670792-c3c0-4af9-8e10-a4a1cb8e5f4e.jpg?im_w=720', 123);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/89f72215-2656-4f30-808c-5a5884b67a88.jpg?im_w=720', 123);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/be13f14b-a361-4c15-af4a-48f9a5df2c76.jpg?im_w=720', 123);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0843b8a8-dd2a-41db-a41b-23b6a3034684.jpg?im_w=720', 123);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/331f4246-47f9-40b4-94bb-0c06c3775f3a.jpg?im_w=720', 123);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d20b8dbb-d2d2-44be-968c-2ff381bfe1bb.jpg?im_w=720', 123);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/841fc194-c293-4702-9209-22c51d5cf668.jpg?im_w=720', 123);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6425a4da-6328-49ef-a86c-8eddb0cb9d3a.jpg?im_w=720', 123);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7a10633d-d927-4d04-844c-1e8b92644661.jpg?im_w=720', 123);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/aadf7307-2655-4899-aa06-fbfb84ff1dbd.jpg?im_w=720', 123);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a8fbeb58-34bd-4321-9d44-9c53cd499d2f.jpg?im_w=720', 123);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6f8874cb-9b5f-417b-92a4-9a220ec94fc4.jpg?im_w=720', 123);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/23ca984d-f0f6-45dc-aae4-c1b72c0f6b40.jpg?im_w=720', 123);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/558e8ffc-92eb-4533-a919-1fa3b8a8a3df.jpg?im_w=720', 123);
insert into location(id, latitude, longitude, city_name)
values (124, 33.462, 126.33, '제주');
insert into review (id, star, review)
values (124, 4.5, 49);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (124, '애월 노천탕 소길리 애월풀빌라신축', '제주시의 게스트 스위트 전체', 93000, '집 전체', 2, 2, 1, 124, 124, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/e43ceb4a-8228-4a3e-8330-dc5836eedd8f.jpg?im_w=720', 124);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/60f1b54f-9760-4209-9ac1-7889aea6c23a.jpg?im_w=720', 124);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/02177f58-0ba7-4597-9788-96c0fd39a880.jpg?im_w=720', 124);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/52d5a8c4-4396-4320-9fe2-14980cd68816.jpg?im_w=720', 124);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2172bf26-3d38-4678-a554-4a3549a0a3e6.jpg?im_w=720', 124);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2878b731-3e5d-4133-9811-860144669624.jpg?im_w=720', 124);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bd20f686-83df-40aa-b28b-9c587007fc21.jpg?im_w=720', 124);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d39c00ff-680d-48fd-99fc-2500ce1720d9.jpg?im_w=720', 124);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7eddb0bc-b505-41c4-bcef-503beb00c5c9.jpg?im_w=720', 124);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4d201ef1-fd2f-4961-bef1-4111ad95316d.jpg?im_w=720', 124);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4e9ea971-5abc-4dc0-a4a5-f6d3791ae150.jpg?im_w=720', 124);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9d3f2c97-b774-415f-bc80-e7ea8f8589c7.jpg?im_w=720', 124);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/651250ef-696f-4c5a-8e12-47feb8c8b347.jpg?im_w=720', 124);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6b6a5854-0576-4305-a82b-47436a33b7d2.jpg?im_w=720', 124);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ec8a1f9f-d6cc-410d-baca-b1e9d19630c4.jpg?im_w=720', 124);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a957c3ab-79e3-4349-bbf4-5a6c2660aaa9.jpg?im_w=720', 124);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d0549c19-54c8-47d9-a17d-13dd89b071cf.jpg?im_w=720', 124);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6a31e797-f80e-4336-9b63-9daf9e257ebb.jpg?im_w=720', 124);
insert into location(id, latitude, longitude, city_name)
values (125, 33.407, 126.901, '제주');
insert into review (id, star, review)
values (125, 5, 10);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (125, 'SUHARI839 - R4', 'Seongsan-eup, Seogwipo의 개인실', 100000, '개인실', 1, 1, 1, 125, 125, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/2fc0ff2b-9221-4aa3-bd61-e197580fd927.jpg?im_w=720', 125);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a4e86239-541f-45cc-8c8c-d31fa88be0e7.jpg?im_w=720', 125);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e136c7bb-120c-4a5a-94bf-b7850d283024.jpg?im_w=720', 125);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5c5476da-6e31-435a-bea5-ef94413c5fb5.jpg?im_w=720', 125);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ec2b7505-e582-4f42-80e5-1a1233ff69c0.jpg?im_w=720', 125);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/31c3c978-4c02-44a6-a93f-fb1b0c076297.jpg?im_w=720', 125);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f28a14bb-4a0c-40e1-8286-06c7a5897ea7.jpg?im_w=720', 125);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f060aff2-e2ad-42cb-a21f-ecdc677fb92a.jpg?im_w=720', 125);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2b922e04-9c0e-470f-b78b-fd34d3735778.jpg?im_w=720', 125);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f1fc6732-f5de-46cb-9a4a-5a71249718b1.jpg?im_w=720', 125);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/db32202a-c417-454d-bd75-435375b6e826.jpg?im_w=720', 125);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3d125026-c1fa-49aa-abfc-1cad81c9f6b3.jpg?im_w=720', 125);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5bb65f86-c83c-4707-9982-68ad6f7b43fb.jpg?im_w=720', 125);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/524b77b9-ed7a-4f4a-9ad8-59d8518de40e.jpg?im_w=720', 125);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1b461c21-f12d-4d58-92f9-6e0911bbf8cf.jpg?im_w=720', 125);
insert into location(id, latitude, longitude, city_name)
values (126, 33.538, 126.677, '제주');
insert into review (id, star, review)
values (126, 5, 60);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (126, '함덕바람집, 정갈하고 단정한 10평 정도의 신축 목조주택', 'Jochon-eup, Jeju-si의 게스트용 별채 전체', 82000, '집 전체', 1, 2, 1, 126, 126, 1,
        1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/eecad9e5-97bb-4d4c-b2be-1a20c9fd8218.jpg?im_w=720', 126);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e0daa5e8-8d37-4fd4-8fac-f4573acfc2f2.jpg?im_w=720', 126);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e78a3bb1-a4f7-4fa0-8ac1-d31c7c6637dc.jpg?im_w=720', 126);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/de54520b-df95-44a5-848e-895e700c9dc0.jpg?im_w=720', 126);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d620cb75-b377-4041-9488-c856fa06eed9.jpg?im_w=720', 126);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d7e0e0bf-8ed1-46e5-87a2-22724ae23d5b.jpg?im_w=720', 126);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0709b247-6b8f-4fc0-a803-f8aca925168d.jpg?im_w=720', 126);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/171dc67a-2561-4a4e-a02e-d9d4fbde45a5.jpg?im_w=720', 126);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/15170ac5-3898-4d17-9a12-bb977f40d9f3.jpg?im_w=720', 126);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/deef73c9-7135-4477-8428-a085cfbed701.jpg?im_w=720', 126);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/842ac0fd-15cc-46d7-b7f5-f516db0e70a8.jpg?im_w=720', 126);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/477d22cc-4039-47b4-bb07-1d4415342852.jpg?im_w=720', 126);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b34de924-f712-4a06-ad86-a916a61c9e00.jpg?im_w=720', 126);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bc0be2db-7ce3-4023-8dff-87ce9c4b6dfe.jpg?im_w=720', 126);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/16cc209c-ef47-49a0-b6c0-94ffbffeeb5b.jpg?im_w=720', 126);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e9cf5ae3-00e6-49eb-be6e-ad6fd5924b20.jpg?im_w=720', 126);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/eaf634fb-f4ad-4bfd-84e8-a02cd209c705.jpg?im_w=720', 126);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/244feb98-c007-411b-8cc5-fc960597f117.jpg?im_w=720', 126);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dab441b6-0e16-4b7b-9e62-31691e07a1fa.jpg?im_w=720', 126);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4d7efe33-286c-4b22-9d2d-3312bbed9138.jpg?im_w=720', 126);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/893abb8f-691f-4337-ae20-485f578fc31c.jpg?im_w=720', 126);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/afb5eca4-8f8a-4ae4-839e-1d6f89b5a189.jpg?im_w=720', 126);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6de61b83-b58e-4628-a227-88396734daa0.jpg?im_w=720', 126);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/58b6cde3-72d5-403b-a79c-a214aaa69b71.jpg?im_w=720', 126);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/428fd7db-1721-439c-9e18-7d78ec572d5c.jpg?im_w=720', 126);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c3a15647-3129-4cef-8111-8e7be0db092d.jpg?im_w=720', 126);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dc168e87-b7fc-4de9-b25c-eba591155653.jpg?im_w=720', 126);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c36a0f8a-25f2-482d-a85c-4295117d674c.jpg?im_w=720', 126);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/746bfdd7-a651-4923-a46b-f8eae4de6b3f.jpg?im_w=720', 126);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e81ef5ba-4f5b-404b-b7e3-0ed2c92f8089.jpg?im_w=720', 126);
insert into location(id, latitude, longitude, city_name)
values (127, 33.499, 126.525, '제주');
insert into review (id, star, review)
values (127, 0, 0);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (127, '깔끔한 원룸형 쉐어하우스/터미널,시청,공항 근처 위치', 'Samdoil-dong, Cheju의 개인실', 100000, '개인실', 0, 2, 1, 127, 127, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/145c3881-b88a-49eb-9e97-9e6a0c94b650.jpg?im_w=720', 127);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f05e11aa-d0d9-460b-99e4-b3e241f728bc.jpg?im_w=720', 127);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2a5fd543-bd0b-4336-8977-dda5f8e58739.jpg?im_w=720', 127);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/61858afa-d10d-4ca4-b64f-a2c38d7f32bd.jpg?im_w=720', 127);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a7615b6f-1b24-4893-abf0-9f482af67baf.jpg?im_w=720', 127);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/41704f0e-2273-41e3-bf13-b15597f55aa7.jpg?im_w=720', 127);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f2c89896-e872-4f29-bb71-978b9be9a124.jpg?im_w=720', 127);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ad816e88-0dfd-4c46-942f-ac76bbcdf92f.jpg?im_w=720', 127);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/905e933f-eab7-4bb0-86fa-2d74e8e1807e.jpg?im_w=720', 127);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ea8b4b61-74fb-4b3a-970b-0b9fb9fc1fff.jpg?im_w=720', 127);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/73e9ba94-baca-460d-9e1d-d66785a74bba.jpg?im_w=720', 127);
insert into location(id, latitude, longitude, city_name)
values (128, 33.488, 126.6, '제주');
insert into review (id, star, review)
values (128, 4.5, 30);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (128, '제주에서 제일 싼 개인실/ 개별욕실/ 가성비갑 F', 'Bonggae-dong, Jeju-si의 개인실', 100000, '개인실', 0, 2, 1, 128, 128, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/466d19ef-2baa-4860-a3fd-7b7a02046528.jpg?im_w=720', 128);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/25583c89-a48e-4c3a-9b3f-b78f7affe773.jpg?im_w=720', 128);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a6895bb9-7cbd-4417-9099-9e4a324fa45e.jpg?im_w=720', 128);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ed915e1c-964c-4653-abd6-a8a73a287f84.jpg?im_w=720', 128);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ad223ff2-8db6-4bfd-92f7-a6bafb25409d.jpg?im_w=720', 128);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ab618efb-6124-4032-9e53-c58f91f8229a.jpg?im_w=720', 128);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1b8cb715-fdc3-4c0c-9d45-2695e3ec81d1.jpg?im_w=720', 128);
insert into location(id, latitude, longitude, city_name)
values (129, 33.509, 126.472, '제주');
insert into review (id, star, review)
values (129, 5, 34);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (129, '혼자서 넓고 편안하게 지낼 수 있는 분위기 있는 공간, 공항근처숙소 타오하우스입니다.', '제주시의 개인실', 90000, '개인실', 1, 1, 1, 129, 129, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/915301ab-d2f9-4b01-8ef1-77c27ddce5f8.jpg?im_w=720', 129);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/37d39128-a1d0-47e5-bccb-3a44a9c5d515.jpg?im_w=720', 129);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3212a0bc-e820-4e4e-a4f1-0ec5361895ee.jpg?im_w=720', 129);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fcced5e3-39e6-40b8-9630-0b041edc923e.jpg?im_w=720', 129);
insert into location(id, latitude, longitude, city_name)
values (130, 33.242, 126.336, '제주');
insert into review (id, star, review)
values (130, 5, 37);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (130, '금모래해변 여성전용 셰어하우스 소담인3(개별화장실)', 'Andeok-myeon, Seogwipo의 개인실', 80000, '개인실', 1, 2, 1, 130, 130, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/c3202f96-e488-48c5-acd6-b3dae3a5ad4d.jpg?im_w=720', 130);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cc289c68-de9c-45f5-b1a5-e41ecc13503c.jpg?im_w=720', 130);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b7c241e1-662d-4e29-8106-0fbaca70a658.jpg?im_w=720', 130);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8d2711a3-8bc1-47a1-a5c4-d04ca0d8239a.jpg?im_w=720', 130);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/528e5a44-7a43-45a1-a711-184e27a664b5.jpg?im_w=720', 130);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/aa9d739c-a5c6-4fca-be0e-1d44b3dc9232.jpg?im_w=720', 130);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6b6814dd-f7f3-4268-9a75-315445fbccf9.jpg?im_w=720', 130);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/16b84f45-5f46-43d7-8e38-809612fd4f6f.jpg?im_w=720', 130);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3cde2367-0f57-4672-aa95-3255dcce9ef5.jpg?im_w=720', 130);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c26dd6aa-4f63-4fc8-a2ea-4662d4ba8f82.jpg?im_w=720', 130);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/db0d6078-d70d-4989-aacb-9b6cb602183a.jpg?im_w=720', 130);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8af11bb6-37f6-402c-b555-23a83866c89d.jpg?im_w=720', 130);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a8d710d1-e475-4a52-a4e3-c83c24ae15fe.jpg?im_w=720', 130);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8f84f5d6-f42e-4ea5-a4f1-215d14af9939.jpg?im_w=720', 130);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/db61f38d-972e-4ec0-b9e1-bb9884e7ba17.jpg?im_w=720', 130);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/749fafb1-988e-4430-a167-188a26403016.jpg?im_w=720', 130);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/aedc6965-0d8f-471e-be9d-a876c3398313.jpg?im_w=720', 130);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c820d17f-9b1b-48fe-bb1a-b9c17e4a1c73.jpg?im_w=720', 130);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ed69db70-ee06-4c8f-849b-1256af2287a5.jpg?im_w=720', 130);
insert into location(id, latitude, longitude, city_name)
values (131, 33.494, 126.677, '제주');
insert into review (id, star, review)
values (131, 5, 15);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (131, 'Deep Healing(깊은 치유) - 함덕해변이 내려다 보이는 숲 속 마을', 'Jochon-eup, Cheju의 펜션', 90000, '집 전체', 1, 2, 1, 131, 131, 1,
        1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/64a66aba-c212-4486-a87f-7e33dc8d1982.jpg?im_w=720', 131);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/04503135-83f0-407a-971c-9559d2b30422.jpg?im_w=720', 131);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/92739ae2-07b8-4fa6-8621-a434ebd0829b.jpg?im_w=720', 131);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ad87a9ef-529a-4e28-b365-0846a76d8945.jpg?im_w=720', 131);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/08733a25-358a-44a5-8840-9ae9620eb4e9.jpg?im_w=720', 131);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/292fe391-a125-4bdb-9f6c-404f1e5de95f.jpg?im_w=720', 131);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c1ceda76-d317-46fa-982a-5aec05d277b8.jpg?im_w=720', 131);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6b77e096-cbcc-441e-addb-d5120522d118.jpg?im_w=720', 131);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e02cbc41-0a26-474c-8d66-d516b607ed89.jpg?im_w=720', 131);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/976e84bb-06f9-4645-9726-0924d6eb6613.jpg?im_w=720', 131);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6909de2b-60ad-4eab-b187-8083e896c7f4.jpg?im_w=720', 131);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/51fc48ac-ba09-4db1-9275-50dcd76f2bf0.jpg?im_w=720', 131);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dbdd4df2-d4d1-4f43-93e5-ba44fc1ee78e.jpg?im_w=720', 131);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d09403ea-f9b6-432f-981c-ff15b1782325.jpg?im_w=720', 131);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/53522310-8626-4c69-8163-6c98705a5433.jpg?im_w=720', 131);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4a43a27a-f269-4572-94ca-3307934116f3.jpg?im_w=720', 131);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c7645a33-f1c5-44ca-b67f-34d38bfe1e6f.jpg?im_w=720', 131);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cd2d2e8c-06bb-44a0-8cb0-2208d075af64.jpg?im_w=720', 131);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/42974343-6b33-43c3-af57-3343dba1f4d4.jpg?im_w=720', 131);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4b9ef8b2-c786-406a-8442-1d65fe5e7fc6.jpg?im_w=720', 131);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/41932879-fc01-4a10-9660-188081c59d5c.jpg?im_w=720', 131);
insert into location(id, latitude, longitude, city_name)
values (132, 33.509, 126.473, '제주');
insert into review (id, star, review)
values (132, 4.5, 188);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (132, '제주바다가보이는 펜션, 공항10분소요 (Seaview/Airport10min)', '제주시의 개인실', 95000, '개인실', 1, 2, 1, 132, 132, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/0300a128-76fb-4f81-ae0c-344ea019323e.jpg?im_w=720', 132);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9b9783d6-9d78-4b5a-86e9-7ab73e5679e5.jpg?im_w=720', 132);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1f545b43-b3d9-43ce-82b9-708f1ae3c98f.jpg?im_w=720', 132);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/11dd05e5-6346-4c7b-aaa8-d25a1917714e.jpg?im_w=720', 132);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a0436d9c-4037-4e68-91f5-26e36fbb4c06.jpg?im_w=720', 132);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/90dce9e9-3f49-4ea9-891c-14d936db8acd.jpg?im_w=720', 132);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/01c10729-6888-467d-a5a8-62a5f331ca81.jpg?im_w=720', 132);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b3382749-6cc8-413c-9050-9e88550fd827.jpg?im_w=720', 132);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9bc8141d-0606-4564-824c-bb2b66544c60.jpg?im_w=720', 132);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8f91d27d-7def-4802-870b-267e710ea41e.jpg?im_w=720', 132);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0dc99d46-f608-40b4-8d52-e1165763c3a6.jpg?im_w=720', 132);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2ef63caf-c331-4c11-8c43-35f3282c4acc.jpg?im_w=720', 132);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c9ad3f5c-0356-4e01-9e37-3b7f92b86aea.jpg?im_w=720', 132);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8899a7a6-ce50-4dcd-92c5-68e6eb672e38.jpg?im_w=720', 132);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/06332eae-b467-4796-b091-622025ebcee2.jpg?im_w=720', 132);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/71501149-2cf3-4bc4-bafe-1470c42763b0.jpg?im_w=720', 132);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/13a092aa-4bad-4d6b-ac1e-24ddc631f4af.jpg?im_w=720', 132);
insert into location(id, latitude, longitude, city_name)
values (133, 33.47, 126.383, '제주');
insert into review (id, star, review)
values (133, 5, 129);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (133, '슬로우리제주A, 애월펜션,테라스한라산뷰,아늑하고깨끗한실내,욕조', 'Aewol-eup, Cheju의 전원주택 전체', 97000, '집 전체', 1, 2, 1, 133, 133, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/017351de-c0c1-4e27-832f-1d00c08e38fd.jpg?im_w=720', 133);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a73e72f4-8f5b-45e6-ac82-ac7d5c80ec89.jpg?im_w=720', 133);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8afa63c0-af87-48e9-8cfd-757865e830eb.jpg?im_w=720', 133);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d5a5edde-6cdc-4c4b-bc6b-acb351773f2b.jpg?im_w=720', 133);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/03c19464-31b6-4fe5-9d66-7bb3bf96dbb3.jpg?im_w=720', 133);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2df0a53d-c857-41b1-953e-f4ebe1e4c893.jpg?im_w=720', 133);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/26bfaf8a-f0a0-4832-9857-fbf380a7a169.jpg?im_w=720', 133);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a99eb8ae-0e06-4101-af98-139defb8c152.jpg?im_w=720', 133);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4a72fc0a-b1ab-4954-892b-57dc41720f2d.jpg?im_w=720', 133);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/de82ed0e-7357-4638-8260-e9b28cf91427.jpg?im_w=720', 133);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a3551c6f-7bf8-496b-bf2b-4eab028d314e.jpg?im_w=720', 133);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/67118028-bd75-45ce-9b14-133e56926ded.jpg?im_w=720', 133);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/551ec3cf-97a0-43c1-85a2-7126de0963ce.jpg?im_w=720', 133);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4bebb9e3-fab5-4333-ad83-b1bf36d13f6e.jpg?im_w=720', 133);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d0c434a6-ec10-4fd9-9878-878c2ccdf9df.jpg?im_w=720', 133);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/eb313e68-8741-4a8b-b8ab-b90be9c43ba2.jpg?im_w=720', 133);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/33077a3d-11c3-4f6d-a12d-654ed49f4d5d.jpg?im_w=720', 133);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/eda5b1db-0ea0-4e52-a2af-9404348725c0.jpg?im_w=720', 133);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b73b73c4-2519-4c9a-ac99-144b6df3ce36.jpg?im_w=720', 133);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5486237f-c1ad-4d74-b07c-0684e28113a9.jpg?im_w=720', 133);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/00fae1e2-b499-42d8-9a1c-10f6806d3c4b.jpg?im_w=720', 133);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f4b6b905-c52f-4866-a2e4-f5902762a1c9.jpg?im_w=720', 133);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/67553e3f-9eba-4010-876c-35c9961baff1.jpg?im_w=720', 133);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/72c60d24-9cd7-4021-a61d-937075cf34fd.jpg?im_w=720', 133);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/23ecb407-7b3e-4acd-ab1c-99a0d64db76e.jpg?im_w=720', 133);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2e8b9ec9-bbec-40f5-9348-1a4d4a45c906.jpg?im_w=720', 133);
insert into location(id, latitude, longitude, city_name)
values (134, 33.495, 126.494, '제주');
insert into review (id, star, review)
values (134, 5, 254);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (134, '(할인중) YCA 공항근처/ 가성비 최고/ 개인실/ 개별욕실/ 주방/ 세탁건조기/ 주차공간', '제주시의 호스텔 객실', 95000, '개인실', 1, 2, 1, 134, 134, 1,
        1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/4ce23fb3-c6f1-4269-a1ac-49a0bcefd640.jpg?im_w=720', 134);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1cc6470d-c16c-4506-a26d-3441b289279f.jpg?im_w=720', 134);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/480e44bc-58a1-40ea-b9fa-fc716b426b96.jpg?im_w=720', 134);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/50863b5f-08a8-45a4-a93a-f1d081fd485b.jpg?im_w=720', 134);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/08036fb5-23b3-4df3-a11d-62f5a42cd189.jpg?im_w=720', 134);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/61544b7d-e0c2-4757-b1f5-194371e52c2d.jpg?im_w=720', 134);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/60267d3c-7eb3-4d93-9ab0-fa3d5b1d61e0.jpg?im_w=720', 134);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fcbb965a-b108-4b5d-8e64-d874c7b493e1.jpg?im_w=720', 134);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ba471d8c-cc17-4209-a4ee-dd1d7c26bc90.jpg?im_w=720', 134);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/47ae3448-e560-4e6e-a9ca-b657bad1602a.jpg?im_w=720', 134);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/48ed11a4-2000-4f65-81ec-f553b5f94cd2.jpg?im_w=720', 134);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/baa59e57-a934-46fe-a5b1-99b2717ab912.jpg?im_w=720', 134);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-27504388/original/e103b70f-cc48-48c8-8826-03c77d7f76ca.jpeg?im_w=720',
        134);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-27504388/original/c87683eb-b4af-489e-b92d-be38f6807686.jpeg?im_w=720',
        134);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-27504388/original/f2719dcb-dfd3-4dd4-92d3-8bae9bdfe5f5.jpeg?im_w=720',
        134);
insert into location(id, latitude, longitude, city_name)
values (135, 33.463, 126.336, '제주');
insert into review (id, star, review)
values (135, 5, 30);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (135, '애몽게스트하우스) 애월해안도로 도보3분거리_조용하고 아늑한 숙소_1인실(슈퍼싱글베드룸)', '제주시의 개인실', 100000, '개인실', 1, 1, 1, 135, 135, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/7c5ed484-ada3-4b43-a480-ecfb7b28de13.jpg?im_w=720', 135);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7df9c65b-1c91-49b3-b410-7fa3500db285.jpg?im_w=720', 135);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f491cbc9-df3c-4cad-959d-ed9aeb75a2c0.jpg?im_w=720', 135);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7e30f376-6e7d-4138-bf0d-9148a2737f28.jpg?im_w=720', 135);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bb6e15ab-c004-48f8-9b2b-bd5c80924fb3.jpg?im_w=720', 135);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2c060930-21c0-49a9-9147-76c1b9897ebb.jpg?im_w=720', 135);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/da8299b3-51c4-40f6-b94a-aac8a00038bc.jpg?im_w=720', 135);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/06092927-f4d9-4f8a-b99f-89495e027acf.jpg?im_w=720', 135);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c87c5889-5774-46e1-9498-399ed10dd371.jpg?im_w=720', 135);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b474333c-1d8e-4389-a57b-15d50cb6a0ee.jpg?im_w=720', 135);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/543c1d53-d59c-445f-9d80-0a80b2b2cc0f.jpg?im_w=720', 135);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c2aebbaf-9b25-45b3-99f4-f564d7fee9fb.jpg?im_w=720', 135);
insert into location(id, latitude, longitude, city_name)
values (136, 33.499, 126.458, '제주');
insert into review (id, star, review)
values (136, 0, 0);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (136, 'A-102호,이호베이_제주보름살기,1층대형원룸,이호해수욕장인근,제주공항서쪽5km', '제주시의 개인실', 100000, '개인실', 1, 4, 1, 136, 136, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/50d5cf41-f9a0-4fc1-bc59-123fece8e674.jpg?im_w=720', 136);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b6b86644-0370-44b9-9322-f4828fa5efb9.jpg?im_w=720', 136);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/57da568e-be47-4922-874e-c23151446640.jpg?im_w=720', 136);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/378af4ce-f85c-4755-87cc-7819b67fdc8b.jpg?im_w=720', 136);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/21121f8f-d710-4483-85eb-b38ef06d7e50.jpg?im_w=720', 136);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6d7675f3-256a-4f17-968c-16ab2db158a1.jpg?im_w=720', 136);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/69bbc567-d48c-464f-9c90-17bd58b36ccd.jpg?im_w=720', 136);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8e2e143f-de01-4ba4-9a95-e7fea60c0abd.jpg?im_w=720', 136);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/181c91c9-cd75-4c98-9bde-9927c800a888.jpg?im_w=720', 136);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/be6526d7-660c-43c7-bea4-5aac42c23f69.jpg?im_w=720', 136);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/11340085-18e8-4c0a-baf6-922e4612d23d.jpg?im_w=720', 136);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ce026388-a09c-4117-b842-1ca45c3cb8d5.jpg?im_w=720', 136);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/28d1fdf7-b495-4fd8-9adb-913908b703c2.jpg?im_w=720', 136);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f4e78a58-49dd-4b31-9211-9533f41c1d9a.jpg?im_w=720', 136);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/564238ea-ee80-4e38-8329-cceb004f4b02.jpg?im_w=720', 136);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/99ca4e1e-daa7-4ae9-9e97-d3c177730c6f.jpg?im_w=720', 136);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/900c72fb-c6b2-43b1-ab9c-8003212e6e6b.jpg?im_w=720', 136);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4dd2b693-e377-4ef4-b171-1264484910d0.jpg?im_w=720', 136);
insert into location(id, latitude, longitude, city_name)
values (137, 33.559, 126.793, '제주');
insert into review (id, star, review)
values (137, 4.5, 85);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (137, '말레콘 감귤룸(개별욕실,시디&만화책)', 'Gujwa-eup, Cheju의 개인실', 100000, '개인실', 1, 4, 1, 137, 137, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/7ffe8a8a-52be-4805-b35f-97ce9e93d0ad.jpg?im_w=720', 137);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a920e11d-6e6f-4598-a499-9770a2e48124.jpg?im_w=720', 137);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3dda43c1-a9cd-409c-b9e2-d415201c8d6a.jpg?im_w=720', 137);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8a830ffc-5862-4d49-83b1-5abf2395648a.jpg?im_w=720', 137);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/af912e8d-2d91-48c0-a773-f4afaaf9ea33.jpg?im_w=720', 137);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c6dce633-1d2c-46ef-8ec6-6b72760f2a58.jpg?im_w=720', 137);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/60137a3b-3e6f-4305-a736-0238079fe9e4.jpg?im_w=720', 137);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/84546c92-f938-44a7-bc0e-0c21858cf9fb.jpg?im_w=720', 137);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5fcbde37-a1b2-49e3-8729-820b79e62e7a.jpg?im_w=720', 137);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e0eec851-4aa4-4da5-874b-e04b622e79f2.jpg?im_w=720', 137);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/31310e15-5b2d-4d33-9202-2071511e6769.jpg?im_w=720', 137);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e0248763-f212-4136-bbe7-5dc582468dd7.jpg?im_w=720', 137);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/977d1f5d-8d67-43b6-98a6-59a48f221046.jpg?im_w=720', 137);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9d218453-8be4-45d3-ac0d-867edcc99832.jpg?im_w=720', 137);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/eed6bc6a-e26d-4c7e-9601-c829fbe65234.jpg?im_w=720', 137);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c7387b70-55bb-4e19-a007-dd24334461bb.jpg?im_w=720', 137);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/00ba6987-c83b-4ed3-9755-a0823814975a.jpg?im_w=720', 137);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e42d0522-f5ff-412a-8914-610a31d947c1.jpg?im_w=720', 137);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8d45a76b-a905-40ae-b9b5-dc36b734d2ca.jpg?im_w=720', 137);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/165b36f8-b661-47a3-8db1-aa4325e54e80.jpg?im_w=720', 137);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/168c9956-134b-43a5-933b-256125691250.jpg?im_w=720', 137);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c92cfa25-509b-44f6-b8c7-126ccc503d1b.jpg?im_w=720', 137);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7e54a64c-a2a5-401e-86ec-5fc44c994ac6.jpg?im_w=720', 137);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/23756346-2bae-43e3-af27-d6d47ec96123.jpg?im_w=720', 137);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b6504b84-ef52-4de5-a357-a055dfb668f9.jpg?im_w=720', 137);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fa02b3d3-7527-4431-987b-80eb66aae466.jpg?im_w=720', 137);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5b6c3ada-878d-4930-9c47-f2e46aa2a9c7.jpg?im_w=720', 137);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/deb9e787-a4b4-419b-a859-e914413d755c.jpg?im_w=720', 137);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9fd6e0b4-665d-48ec-b024-331c332e7503.jpg?im_w=720', 137);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8f27d83b-17dd-42bd-8618-c4f6d415e573.jpg?im_w=720', 137);
insert into location(id, latitude, longitude, city_name)
values (138, 33.42, 126.402, '제주');
insert into review (id, star, review)
values (138, 5, 28);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (138, '[애월] 휴식과 힐링의 공간  아무것도 하고싶지 않을땐 *자파리하우스*(도미토리)', '제주시의 다인실', 90000, '다인실', 1, 6, 1, 138, 138, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/c58e585a-e9ec-42c3-959e-518d14ef4681.jpg?im_w=720', 138);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/228b4e6a-572c-4322-8a22-8cd7e9084eff.jpg?im_w=720', 138);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/71dcc97f-f352-494d-ba92-f370c08d69f9.jpg?im_w=720', 138);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f3186b72-969a-4cb6-9f72-689075232afe.jpg?im_w=720', 138);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ce61373f-77c2-4252-aeb3-1a05f77e85df.jpg?im_w=720', 138);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2467744b-6fc0-455b-9253-d590313b9007.jpg?im_w=720', 138);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d11b434f-8b6e-4abe-8732-8929fa740c3c.jpg?im_w=720', 138);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3b6daddf-ee64-4f01-a8d7-f579b835b9ff.jpg?im_w=720', 138);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9b1285ad-bb37-41e6-9da5-99e2dea0d2d3.jpg?im_w=720', 138);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/93682ba8-61b0-4938-b8f8-edbc779b8c49.jpg?im_w=720', 138);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c4a86ca9-5023-4d20-9911-71e7e90de2c7.jpg?im_w=720', 138);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1638c18c-4253-4e47-adc5-faccf2685df1.jpg?im_w=720', 138);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/86f8ac89-1be4-40ea-942a-f3cf626240fb.jpg?im_w=720', 138);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0a134170-4265-4026-ac71-ac2ce0682116.jpg?im_w=720', 138);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fff5dd3b-deb7-4cba-aa83-0e17ddffa89a.jpg?im_w=720', 138);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4a2374c4-b8f2-4197-a046-04e1520df425.jpg?im_w=720', 138);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a681fe6c-4429-476a-a971-aa169c742c7d.jpg?im_w=720', 138);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/82948bc9-6638-4820-8f26-0d847a9fdc21.jpg?im_w=720', 138);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1e9edeff-ef32-4c84-91df-1b8604525395.jpg?im_w=720', 138);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/39742578-5597-4d9c-8b4a-7fcf51702c31.jpg?im_w=720', 138);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/00881a2f-be2c-4ff6-ae56-b202755b08fa.jpg?im_w=720', 138);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dfdcbf98-d8f9-428c-9a61-f723b2aca084.jpg?im_w=720', 138);
insert into location(id, latitude, longitude, city_name)
values (139, 33.495, 126.677, '제주');
insert into review (id, star, review)
values (139, 5, 13);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (139, '다락(多㦡) 더 룸 202호 :  스위스 마을, 1인 여행자를 위한 / 다락바와 함께', 'Jochon-eup, Cheju의 집 전체', 100000, '집 전체', 1, 2, 1, 139,
        139, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/934c1095-dc57-4cd0-bb42-7c437b4b45e8.jpg?im_w=720', 139);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/89da2f79-1f79-4cf5-8b1e-66b03bb297d8.jpg?im_w=720', 139);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9727bf75-0c62-48f0-9d62-3e367f2b81b2.jpg?im_w=720', 139);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/83317c17-d1cf-486d-b600-f313d4d314c3.jpg?im_w=720', 139);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ce2f4da4-1426-4dfc-9791-2f5278f9eccd.jpg?im_w=720', 139);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/abd0b80b-c44b-4e58-97a5-1049bb4da740.jpg?im_w=720', 139);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/704a4d3a-1cf7-4239-8eca-c9fa38f32a88.jpg?im_w=720', 139);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7fa4175b-f230-4a9a-8842-4cfd641bb6b5.jpg?im_w=720', 139);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/26a7c032-d62f-41b5-8942-9cd532c4b9a5.jpg?im_w=720', 139);
insert into location(id, latitude, longitude, city_name)
values (140, 33.447, 126.301, '제주');
insert into review (id, star, review)
values (140, 5, 111);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (140, '제주 봉숙이네바닷가(봉이네)', 'Aewol-eup, Cheju의 전원주택 전체', 100000, '집 전체', 1, 4, 1, 140, 140, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/5f65d315-46e1-4d57-9769-f71ba76b09e2.jpg?im_w=720', 140);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/928c4282-103a-4825-8b84-14b8646c88e1.jpg?im_w=720', 140);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f1a61ac5-99f0-4d65-9ba0-1221e5df5a92.jpg?im_w=720', 140);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a6379cb5-f518-4844-99b6-f3090c2c70cf.jpg?im_w=720', 140);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dfdbaee8-6bcb-42b3-a752-5236379e6130.jpg?im_w=720', 140);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7aa32a3d-6bad-49cb-abab-9bc20cd7dc81.jpg?im_w=720', 140);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5391c730-44a2-438d-96b2-5abdb14140e1.jpg?im_w=720', 140);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9dc1d3f8-c671-4c4c-be40-74b3b18b4df3.jpg?im_w=720', 140);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/07ad123e-899e-4bce-8cd2-0c5aab4bb8f0.jpg?im_w=720', 140);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d8712e8d-2d1d-411f-86c9-6c8b86466ffc.jpg?im_w=720', 140);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/50ef8ec5-5968-475d-bdae-70008c82f296.jpg?im_w=720', 140);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5b683c06-2c06-4303-b090-6c5dc947d7a5.jpg?im_w=720', 140);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2846bf86-4a73-4b20-b512-c7e08382329f.jpg?im_w=720', 140);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f41eceb9-5030-485f-a739-6c3b475a3fa0.jpg?im_w=720', 140);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6e513ff3-d885-412c-837a-7a2d26b9e63c.jpg?im_w=720', 140);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cec2034e-de50-41d0-95f6-49a285f61a2a.jpg?im_w=720', 140);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b8ea9656-7098-4cd4-bf7e-a5ae8a3df3f4.jpg?im_w=720', 140);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/200a5d94-0e89-4095-b20f-58acc5371e7b.jpg?im_w=720', 140);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/07e9ae29-bc9b-44f3-ad19-52e48d8a4ee9.jpg?im_w=720', 140);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7436d217-42f2-4bf7-8cac-2a7629ff8e8a.jpg?im_w=720', 140);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a3842724-f815-4eb8-a34f-e1ae41c24bfa.jpg?im_w=720', 140);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/287a8431-543a-49f1-b384-7bddd6e9bcbd.jpg?im_w=720', 140);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7faa1538-6c8f-4ed6-96ed-6810f00b867a.jpg?im_w=720', 140);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1a470f89-f8a6-4096-8e81-b7fddea8033d.jpg?im_w=720', 140);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4eb71a45-7b2d-4eb4-9f07-3c327dce37ff.jpg?im_w=720', 140);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9a687f95-424c-4271-8970-4668aa711671.jpg?im_w=720', 140);
insert into location(id, latitude, longitude, city_name)
values (141, 33.484, 126.49, '제주');
insert into review (id, star, review)
values (141, 0, 0);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (141, '제주시연동한달살기_메종드호텔옆', 'Yeon-dong, Cheju의 레지던스 전체', 100000, '집 전체', 1, 3, 1, 141, 141, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/dcf9fd20-2c5a-40ee-85f7-3e9eaffc65f1.jpg?im_w=720', 141);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/488c2380-b50a-4045-a76e-7646979e5073.jpg?im_w=720', 141);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/23b17836-d9e3-41dd-bef6-4f5409f5e22c.jpg?im_w=720', 141);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3373e0e0-b357-4baf-8355-b03b0345ed15.jpg?im_w=720', 141);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/702a4128-086b-455b-8a9b-6654cb195e5a.jpg?im_w=720', 141);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/85573d66-c31c-434f-8244-3266c317934a.jpg?im_w=720', 141);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c7102f15-15a7-462d-b80e-127b993ce053.jpg?im_w=720', 141);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8c005547-9257-4a4b-a06d-06ea2f09e641.jpg?im_w=720', 141);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f825ae49-bbc0-4936-946a-41e903b32278.jpg?im_w=720', 141);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1009fd92-3b78-4504-a6f6-a3b668a7d90e.jpg?im_w=720', 141);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e121be8b-348e-4cce-a69a-d4023a62021f.jpg?im_w=720', 141);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a4c4ccf0-7e99-4b43-980f-4e3ca7040f91.jpg?im_w=720', 141);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2140d9f4-3983-4245-848b-0d5fc0b39069.jpg?im_w=720', 141);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d0ba4ec3-a5da-486e-970c-cbc4a1764566.jpg?im_w=720', 141);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6db75be5-7f69-46f6-a4de-9a677975ff5f.jpg?im_w=720', 141);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3f148257-28a3-4993-92de-b8a45917cc39.jpg?im_w=720', 141);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/51b51660-4123-4052-9439-c213489cf9e8.jpg?im_w=720', 141);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b8d1963e-ac5e-4661-89f0-e3b2eb10b0a3.jpg?im_w=720', 141);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6659ca0f-b270-4ff7-93da-49751bba0557.jpg?im_w=720', 141);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4b90168b-e3c5-48c6-ad6d-c1179d9addd1.jpg?im_w=720', 141);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3720d0f8-efcd-428a-8c75-dacc164a7aeb.jpg?im_w=720', 141);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c99c3dfc-4b1d-4c06-9ffe-2168886304c6.jpg?im_w=720', 141);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f501fb24-d13a-4a0b-b470-3944af65988c.jpg?im_w=720', 141);
insert into location(id, latitude, longitude, city_name)
values (142, 33.484, 126.491, '제주');
insert into review (id, star, review)
values (142, 5, 21);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (142, '누웨마루거리 인근 오션뷰🌅 그 집 : )', 'Yeon-dong, Jeju-si의 개인실', 95000, '개인실', 1, 1, 1, 142, 142, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/330f845a-eb22-41eb-b632-d832dc8e989f.jpg?im_w=720', 142);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0c5b7ab3-3e86-4921-b003-7ce1def70f6f.jpg?im_w=720', 142);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/14c47767-2853-40cc-8d92-82a36bd50791.jpg?im_w=720', 142);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/908d94ba-8df6-491e-a1de-b4aee80890ec.jpg?im_w=720', 142);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ecf076a1-d7bd-4a10-a1ed-01a9345ac0f3.jpg?im_w=720', 142);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b46da988-4400-476b-a793-bc7edd5cbeda.jpg?im_w=720', 142);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/86b61c7e-7d34-4c1e-8705-6a337d232aeb.jpg?im_w=720', 142);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/297bedf5-1aba-46e7-a5cf-bbaa8025c569.jpg?im_w=720', 142);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/10119a01-8827-4c34-be72-ad2e78e21bee.jpg?im_w=720', 142);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6af9f8f5-6b4b-4289-ac7e-0db84746b066.jpg?im_w=720', 142);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a0ed8757-db74-4758-93d8-b9bc9e7bd9c3.jpg?im_w=720', 142);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f6185a5f-5568-419d-b63a-1df9a23ee4b4.jpg?im_w=720', 142);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/764fdcb7-8144-4110-bc3e-dcbe0ffe82a6.jpg?im_w=720', 142);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4dc5ec27-f28d-4977-99c8-858d5fe0a6ec.jpg?im_w=720', 142);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e4df9e2e-5ad3-4813-9b3e-38d4d5d1c397.jpg?im_w=720', 142);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e13e793d-4717-48be-a5d5-d848108b4da1.jpg?im_w=720', 142);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d4031322-18ab-4dd5-a0e3-4426a48a4f4f.jpg?im_w=720', 142);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/59ab0d2d-712b-4ed2-85e8-06550be3a3c2.jpg?im_w=720', 142);
insert into location(id, latitude, longitude, city_name)
values (143, 33.353, 126.196, '제주');
insert into review (id, star, review)
values (143, 0, 0);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (143, '2층나무야2', 'Hangyeong-myeon, Jeju-si의 개인실', 80000, '개인실', 1, 2, 1, 143, 143, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/6d0ba417-3ccd-43a2-ac07-e415cd8e00e4.jpg?im_w=720', 143);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/988f4cc4-a0bc-430f-8eb8-11412a06e413.jpg?im_w=720', 143);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9b188654-4cfc-44f3-9e24-27d896baa642.jpg?im_w=720', 143);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ddb13f9a-8024-4f7f-9a42-f1b8dfc71fbd.jpg?im_w=720', 143);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9358ccba-62cd-4d7d-a20c-351c7220df49.jpg?im_w=720', 143);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/87b60914-8d97-4592-bb05-109495d05e65.jpg?im_w=720', 143);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/05d41fbf-9ca9-4fbc-bc8d-174fa01bd106.jpg?im_w=720', 143);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f1e6381c-d2ef-451c-8da1-89a883a50dc0.jpg?im_w=720', 143);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f9889ffe-b8fc-4655-a0ff-ae44c5e6b0d7.jpg?im_w=720', 143);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c059b56f-b0a5-46a6-8dad-c1ac01edaa0b.jpg?im_w=720', 143);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ab91e5b8-10dc-40c5-9afe-e41889bfcfc5.jpg?im_w=720', 143);
insert into location(id, latitude, longitude, city_name)
values (144, 33.451, 126.425, '제주');
insert into review (id, star, review)
values (144, 5, 254);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (144, '하음이네~애월 타운하우스 원룸 별채', '제주시의 게스트용 별채 전체', 95000, '집 전체', 1, 2, 1, 144, 144, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/26dc1ee5-fff3-43a7-9390-609e94d9c9ec.jpg?im_w=720', 144);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5ee3b875-9db1-4b4e-9d86-f0d2144d379c.jpg?im_w=720', 144);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/31c0674b-f123-4f89-9599-7a364744af1a.jpg?im_w=720', 144);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/07296622-a056-4a05-9355-572d4c29dddb.jpg?im_w=720', 144);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8ebae3b9-1482-4c8f-a1d6-239be4486681.jpg?im_w=720', 144);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bf9ed03c-29cf-4c7e-8dca-c860c1cface4.jpg?im_w=720', 144);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9875ab71-d9fc-42f7-ab3a-f51076e52b4c.jpg?im_w=720', 144);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/330e2a5c-8deb-4e4e-a403-0ab38b21343c.jpg?im_w=720', 144);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3a4bfe46-0496-4c52-be7c-9449dfb9f89c.jpg?im_w=720', 144);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/03cfe2f6-f7ea-449d-aef0-ecef4c2b8645.jpg?im_w=720', 144);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9930073f-6967-4583-973a-45ecd6d1b961.jpg?im_w=720', 144);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fbe08c0f-b0c8-49f1-8091-04db6acf32f6.jpg?im_w=720', 144);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c09c0078-bbca-430f-8e77-bf544485bb48.jpg?im_w=720', 144);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4730d5e2-d2ef-4667-aee8-1169c7d6b8a0.jpg?im_w=720', 144);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e9795417-8235-4e32-af4a-576607ad8969.jpg?im_w=720', 144);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/189222de-f6fc-4608-9b55-ab5f1e47b125.jpg?im_w=720', 144);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/30109999-ed5e-482d-919d-36213c76a2a5.jpg?im_w=720', 144);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c407d845-a858-4d1e-a019-8c1bc04b2383.jpg?im_w=720', 144);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dc0d4991-da84-4f8f-9bfb-9e4b07782cd1.jpg?im_w=720', 144);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/41306434-74a8-4763-ad69-46b016a15ac0.jpg?im_w=720', 144);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a51da9a1-34d0-428a-ac0b-29bfb10b11a2.jpg?im_w=720', 144);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f0edfd73-4e81-40cc-80fc-222b44b7cf71.jpg?im_w=720', 144);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f76d52b3-37b8-44ac-9eab-ec74291290a7.jpg?im_w=720', 144);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4c0f4f19-07ad-4220-91d8-3d19ad6543b2.jpg?im_w=720', 144);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7b012b01-db6b-4b27-8393-ca586ffac890.jpg?im_w=720', 144);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/bcc10ae3-3fb5-417d-a10d-31c4676da1eb.jpg?im_w=720', 144);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/37f6faed-a762-43f1-938e-8018382ae19b.jpg?im_w=720', 144);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5fd68946-479c-43fd-8be6-58192b96528a.jpg?im_w=720', 144);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0228e65f-8e4e-49df-9330-e33288b3a68b.jpg?im_w=720', 144);
insert into location(id, latitude, longitude, city_name)
values (145, 33.508, 126.472, '제주');
insert into review (id, star, review)
values (145, 5, 179);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (145, '제주공항근처에 위치한 책향기 가득한 포근한 작가의 방(O-room)', '제주시의 개인실', 95000, '개인실', 1, 1, 1, 145, 145, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/81223507/99c739c0_original.jpg?im_w=720', 145);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/81223430/09fddd40_original.jpg?im_w=720', 145);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/81223486/7f8a35fd_original.jpg?im_w=720', 145);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/81223501/3916d58a_original.jpg?im_w=720', 145);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/66036072/df5eb993_original.jpg?im_w=720', 145);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/81223422/2ab1ef22_original.jpg?im_w=720', 145);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/81223462/73497ed6_original.jpg?im_w=720', 145);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/81223475/b036164b_original.jpg?im_w=720', 145);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/81223471/5e6108af_original.jpg?im_w=720', 145);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/66036013/fecf70fc_original.jpg?im_w=720', 145);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/66036036/8ba30c8e_original.jpg?im_w=720', 145);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/66036009/8c40dfbd_original.jpg?im_w=720', 145);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/66036052/433cee9d_original.jpg?im_w=720', 145);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/66036030/4941efff_original.jpg?im_w=720', 145);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/66036020/40932ca3_original.jpg?im_w=720', 145);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/66035998/71f15269_original.jpg?im_w=720', 145);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/66036048/72c7e54d_original.jpg?im_w=720', 145);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/66036041/61b240f0_original.jpg?im_w=720', 145);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/66036141/656d984e_original.jpg?im_w=720', 145);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/66036005/2461e988_original.jpg?im_w=720', 145);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/66036128/8f10624c_original.jpg?im_w=720', 145);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/81223509/9811c8eb_original.jpg?im_w=720', 145);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/66035996/445e3dff_original.jpg?im_w=720', 145);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/66035980/258a72bf_original.jpg?im_w=720', 145);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/66035991/d3098d9e_original.jpg?im_w=720', 145);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/66035992/537a839e_original.jpg?im_w=720', 145);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/81223526/89eddddf_original.jpg?im_w=720', 145);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/81223534/58136f37_original.jpg?im_w=720', 145);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/81223543/d164c018_original.jpg?im_w=720', 145);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/81223554/39f3827d_original.jpg?im_w=720', 145);
insert into location(id, latitude, longitude, city_name)
values (146, 33.455, 126.351, '제주');
insert into review (id, star, review)
values (146, 5, 74);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (146, '1인실"우리동네하가리"
상업적공간이 아닌냥이가  갑인 공간 입니다
공지사항 필독!!', 'Aewol-eup, Cheju의 개인실', 90000, '개인실', 1, 2, 1, 146, 146, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/f83b45e8-7bdb-432d-92f7-4dcf4972ecc7.jpg?im_w=720', 146);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/174b5a30-4ad4-4602-93fc-35764c6e206b.jpg?im_w=720', 146);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c81054d0-5f70-426a-a253-1b96cd55afae.jpg?im_w=720', 146);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4f9c1eb3-639f-43d2-808b-2b19e9ee6e25.jpg?im_w=720', 146);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/372a3ef7-eb56-430a-ae0c-ce3fba9a70cd.jpg?im_w=720', 146);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/528be9a6-9835-4138-a2a0-33b5f41e5f3b.jpg?im_w=720', 146);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3095a6fb-1897-4bab-a7ac-cf2fd4a8ed2a.jpg?im_w=720', 146);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b70a8569-89fa-4609-a22c-30702b32af59.jpg?im_w=720', 146);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5016b2ab-69fb-44b2-95d3-42b2e9732107.jpg?im_w=720', 146);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f5d46786-e5d9-4b9c-87c0-42f436b962d7.jpg?im_w=720', 146);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/eab82462-d369-40d2-8054-ff03d12e7d12.jpg?im_w=720', 146);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/204ec910-6886-4a2a-b753-d4bdb17fec2c.jpg?im_w=720', 146);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/d6d581e2-9195-4dec-9015-183c42802cdf.jpg?im_w=720', 146);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/62936f32-bc25-447e-8c78-fbbdc4c988fb.jpg?im_w=720', 146);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0557bc0a-781a-4f22-bba0-475a08955b56.jpg?im_w=720', 146);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2124e34b-cf8f-4495-9f37-88525068992a.jpg?im_w=720', 146);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3387799c-3ac3-4980-a491-60de29db42eb.jpg?im_w=720', 146);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/a86ffb49-d83e-4806-b77c-7be3b3aee5ec.jpg?im_w=720', 146);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/599ccefd-1eaa-4bd9-9419-c565a9f1b9a5.jpg?im_w=720', 146);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/dffb918a-e1a0-4ce8-a916-3617ac7a492a.jpg?im_w=720', 146);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c2b17831-d20f-43c6-932f-9ca492b5ce12.jpg?im_w=720', 146);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/550d751e-23f5-4a5d-964e-3cc75d5042ce.jpg?im_w=720', 146);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/67ebcd7a-b0ae-4ae2-8769-8eed3cd5b96f.jpg?im_w=720', 146);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9ac8d861-6c6d-4dc6-8f09-144972b9bafd.jpg?im_w=720', 146);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/76d1a7cc-805f-4552-8a26-1821985d5357.jpg?im_w=720', 146);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0a9de6b4-6869-4385-ad6a-efc160be908b.jpg?im_w=720', 146);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/ae7c58af-c42d-4daa-8bb4-42c8db75d374.jpg?im_w=720', 146);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/c8f59100-3452-4fb6-8cae-110569abd02f.jpg?im_w=720', 146);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/52873c76-3ee9-4737-ab9f-cd84c6cbdf0c.jpg?im_w=720', 146);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5dadbe51-7978-47e6-b8ec-94c813112119.jpg?im_w=720', 146);
insert into location(id, latitude, longitude, city_name)
values (147, 33.316, 126.269, '제주');
insert into review (id, star, review)
values (147, 5, 8);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (147, '제주연월 달빛이 연기에 은은하게 비취는 모습으로 평화로운 풍경 제주로 오세요~', 'Hangyeong-myeon, Cheju의 집 전체', 100000, '집 전체', 1, 2, 1,
        147, 147, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/e9f8d1b5-872f-47b4-ab13-b4c83d840d1b.jpg?im_w=720', 147);
insert into location(id, latitude, longitude, city_name)
values (148, 33.49, 126.488, '제주');
insert into review (id, star, review)
values (148, 5, 12);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (148, '여성전용 💚 제주공항 5분거리 신축건물, 포근하고 깨끗한 숙소', 'Yeon-dong, Cheju의 레지던스 전체', 92000, '집 전체', 1, 2, 1, 148, 148, 1,
        1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/c84eccce-a232-4593-8b19-d02beae6a04f.jpg?im_w=720', 148);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f4944276-65d2-4027-ba17-f62b93cf1e96.jpg?im_w=720', 148);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9d89c101-eb2e-4bf5-abe6-d8f057d38240.jpg?im_w=720', 148);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/91796356-e438-4ef4-be11-3dd38f8458f0.jpg?im_w=720', 148);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3a531c1e-14b9-4b41-bbfe-281f6199cb07.jpg?im_w=720', 148);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7cd1f4b5-864b-4e91-85e6-bb3f626e7e21.jpg?im_w=720', 148);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/713afdde-b094-49d7-ae02-07666c062aac.jpg?im_w=720', 148);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1ae27fae-9c5d-4205-9122-8062433b7ca8.jpg?im_w=720', 148);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/8ba71da5-75a3-47f4-a008-423445184ad5.jpg?im_w=720', 148);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1d07af00-09ae-4e77-b198-da9bf4b86272.jpg?im_w=720', 148);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7e7bb6b2-865a-43d2-9734-a9487034ba7a.jpg?im_w=720', 148);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0c0b71f9-388a-4ccb-b91f-08e7ceac5ecf.jpg?im_w=720', 148);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/b269667d-790d-4d5c-a795-a56a5a8aef8e.jpg?im_w=720', 148);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6333a322-f87e-42d7-8f06-a2ad03672809.jpg?im_w=720', 148);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/0083fb94-27eb-408a-ab4c-6b00b34db0c7.jpg?im_w=720', 148);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f382a4f2-ca55-4fd7-8d63-144b0be4d8b2.jpg?im_w=720', 148);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/10f97092-362f-4f2f-a88a-e77cf5ef7289.jpg?im_w=720', 148);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/720c20b2-4233-4d03-8042-18061edff5d4.jpg?im_w=720', 148);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f1a7ccab-2700-4074-803c-fe193d733714.jpg?im_w=720', 148);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9096c086-2bc4-40c9-800d-62ff8ce33aaa.jpg?im_w=720', 148);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4d222771-5d11-4d89-84ee-0cdb917088e1.jpg?im_w=720', 148);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6f737e19-c7cb-4ac8-b436-6655428372d3.jpg?im_w=720', 148);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/62222ac6-3f14-4b32-91c1-b1d752cc2822.jpg?im_w=720', 148);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7451a270-cda3-4c21-850d-06c86be0ceef.jpg?im_w=720', 148);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/00114de1-4d16-4c3e-a5e6-9689e6e52443.jpg?im_w=720', 148);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5ac129f7-98ee-4c6b-a10a-063dc5ba92a2.jpg?im_w=720', 148);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/6a48aeda-90c2-4bbf-8e4d-b7e33a5a9526.jpg?im_w=720', 148);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/3d0bd5d6-ba18-4370-bc29-926d665185c7.jpg?im_w=720', 148);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/fbe87578-9414-4a30-a34c-47ea7ecc2f2d.jpg?im_w=720', 148);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2163b588-9c51-434f-abf3-427a8886b5b2.jpg?im_w=720', 148);
insert into location(id, latitude, longitude, city_name)
values (149, 33.442, 126.327, '제주');
insert into review (id, star, review)
values (149, 5, 62);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (149, '스테이 고요', 'Aewol-eup, Jeju-si의 게스트용 별채 전체', 100000, '집 전체', 1, 2, 1, 149, 149, 1, 1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/9f3e70c4-f23f-4cdf-8a3a-edd64bf3d75e.jpg?im_w=720', 149);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46539971/original/93943ae5-f031-47f2-9b51-873a563afc63.jpeg?im_w=720',
        149);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46539971/original/8c9e6b36-d782-414e-8058-0c0dbe89bc0d.jpeg?im_w=720',
        149);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46539971/original/38983d95-9234-480a-98c8-017b372b973b.jpeg?im_w=720',
        149);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46539971/original/00da029e-3845-49e6-a849-c2c103bcc35b.jpeg?im_w=720',
        149);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46539971/original/c11ad70b-9614-4c6c-8487-8775ccb67678.jpeg?im_w=720',
        149);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46539971/original/ca47c3a7-80f9-45ef-a67c-91c9f5c48e42.jpeg?im_w=720',
        149);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46539971/original/53e42e94-52eb-4079-990e-56fd42782e1c.jpeg?im_w=720',
        149);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46539971/original/900f3ea7-4557-47e0-86b9-0d9552e78400.jpeg?im_w=720',
        149);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46539971/original/172332e2-a1ea-4b89-b375-158060fae34f.jpeg?im_w=720',
        149);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46539971/original/f26c3903-7437-4958-a485-776930420e0b.jpeg?im_w=720',
        149);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46539971/original/7065398b-6c7b-44a1-9b41-ba9d4976f36f.jpeg?im_w=720',
        149);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46539971/original/8dcc68f5-10ee-45fc-8e27-f639e87d7a6f.jpeg?im_w=720',
        149);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46539971/original/d4ecbf2f-1ce3-4936-8f94-5adcb6827421.jpeg?im_w=720',
        149);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46539971/original/39610f4a-9efc-4580-b4f8-4f9b3f564100.jpeg?im_w=720',
        149);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46539971/original/bc3119f5-6a93-4b7c-a970-a314a78f05f0.jpeg?im_w=720',
        149);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46539971/original/df044e07-618c-4645-a400-5f9042e4b6d1.jpeg?im_w=720',
        149);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46539971/original/3644b4b2-0792-47e9-9249-548642cb6941.jpeg?im_w=720',
        149);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46539971/original/d0bcd6a8-238e-4e85-b68c-d23b7fe9075b.jpeg?im_w=720',
        149);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46539971/original/c5cd8f63-1d78-4a02-a2ef-3e77d1a9a511.jpeg?im_w=720',
        149);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail',
        'https://a0.muscache.com/im/pictures/miso/Hosting-46539971/original/96bcabf2-b9d9-4aee-8cb4-d50cd9c55696.jpeg?im_w=720',
        149);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/7a9a6bf6-4092-44b4-a2c8-cf53c11f71bf.jpg?im_w=720', 149);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/54c8073b-e687-42db-85bc-9d790fb6d286.jpg?im_w=720', 149);
insert into location(id, latitude, longitude, city_name)
values (150, 33.501, 126.544, '제주');
insert into review (id, star, review)
values (150, 5, 42);
INSERT INTO rooms (id, name, description, price_per_date, type, bed, max_guest, bathroom, location_id, review_id,
                   host_id, additional_cost_id)
VALUES (150, '[OPEN]제주를 혼자 여행하는 여행객을 위한 공간 (Only female)', 'Idoi-dong, Cheju의 개인실', 89000, '개인실', 1, 1, 1, 150, 150, 1,
        1);
INSERT INTO image (type, url, rooms_id)
VALUES ('thumb', 'https://a0.muscache.com/im/pictures/38576fbc-40de-4fb7-94ce-af8de5c7ac03.jpg?im_w=720', 150);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/771e2649-5330-436d-9714-c9d70f784909.jpg?im_w=720', 150);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/cdc9e214-3c85-4c35-ace6-e4a48671e7de.jpg?im_w=720', 150);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/4618a383-0b69-4a01-8017-680cee33c64e.jpg?im_w=720', 150);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/5e2c7e4b-9ec3-4d7e-ac0e-9a5900f14942.jpg?im_w=720', 150);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/e4dc2cef-917e-4f34-848e-18035aeb8235.jpg?im_w=720', 150);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/9afc9d19-d885-41ed-bb8f-f4642a744b9e.jpg?im_w=720', 150);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f2a3ef10-a558-46d9-a552-056c6e7bcb4a.jpg?im_w=720', 150);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/1fd82868-bd67-4e72-ac53-1ec3332962b2.jpg?im_w=720', 150);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2a5b4bb7-c075-4d12-b4f3-a7294938d0dc.jpg?im_w=720', 150);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/2e0d6d7a-eb82-48a4-8598-8f436993fe97.jpg?im_w=720', 150);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/f6c69a13-5d83-4ad3-847b-aad6b1cbf0bf.jpg?im_w=720', 150);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/26e34fe2-a760-4557-8194-53275230478f.jpg?im_w=720', 150);
INSERT INTO image (type, url, rooms_id)
VALUES ('detail', 'https://a0.muscache.com/im/pictures/26302e7b-a692-4321-84b2-eec1327a1829.jpg?im_w=720', 150);



insert into reservation (rooms_id, user_id, adult, child, baby, check_in, check_out, total_price)
values (1, null, 1, 1, 2, '2021-03-02', '2021-03-03', 192000);

insert into wish_list (user_id, rooms_id, wish)
values (null, 1, 0);