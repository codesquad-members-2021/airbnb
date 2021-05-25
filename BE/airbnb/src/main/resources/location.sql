-- SHOW DATABASES ;
USE airbnb;
SHOW TABLES ;

/*
 행정계층
 - 1 : 국가
 - 2 : 특별시/광역시/광역자치단체/특별자치시(세종)/특별자치도(제주)
 - 3 : 동/면/읍/리

 */
DROP TABLE IF EXISTS category;
create table category
(
    id    int primary key auto_increment,
    class int NOT NULL,
    type  varchar(40)
);
insert into category(class, type)
VALUES (1,'NATION'),
       (2,'METROPOLITAN/STATE'),
       (3,'DONG/MYEON/EUP/RI');


DROP TABLE IF EXISTS location;
create table location
(
    id int primary key auto_increment,
    name varchar(50) NOT NULL ,
    class int NOT NULL ,
    parent_id int references location(id),
    -- place varchar(100),
    latitude double,
    longitude double
);
-- ----------------------
insert into location(id,name, class, parent_id, latitude, longitude)
values (1,'대한민국',1,1,37.59073, 126.97406),
       --
       (2,'서울특별시',2,1,37.59073, 126.97406),
       --
       (30,'송파구',3,2,37.50472, 127.11549),
       (31,'오금',4,30,37.50412, 127.13336),
       (32,'가락',4,30,37.49637, 127.10578),
       (33,'장지',4,30,37.49890, 127.12640),
       (34,'잠실',4,30,37., 127.),
       (35,'삼전',4,30,37., 127.),
       (36,'석촌',4,30,37., 127.),
       (37,'문정',4,30,37., 127.),
       (38,'거여',4,30,37., 127.),
       (39,'마천',4,30,37., 127.),
       -- 가락, 오륜, 풍납,송파 ->> 송파구 송파동....
       -- 데이터 중복 >> 인천서구 대구서구 대구'달'서구, 부산 서구...
       -- 서구, 중구, 남구 등등.. 무조건 중복됨
       --
       (70,'서초구',3,2,37.50472, 127.11549),
       (71,'양재',4,70,37., 127.),
       (72,'방배',4,70,37., 127.),
       (73,'반포',4,70,37., 127.),
       (74,'내곡',4,70,37., 127.),
       (75,'잠원',4,70,37., 127.),
       (76,'양재',4,70,37., 127.),
       --
       (80,'강남구',3,2,37., 127.),
       (81,'세곡',4,80,37., 127.),
       (82,'수서',4,80,37., 127.),
       (83,'일원',4,80,37., 127.),
       (84,'대치',4,80,37., 127.),
       (85,'개포',4,80,37., 127.),
       (86,'도곡',4,80,37., 127.),
       (87,'역삼',4,80,37., 127.),
       (88,'삼성',4,80,37., 127.),
       (89,'청담',4,80,37., 127.),
       (90,'논현',4,80,37., 127.),
       (91,'신사',4,80,37., 127.),
       (92,'압구정',4,80,37., 127.),
       --
       (101,'경기도',2,1,37., 127.),
       (102,'연천군',3,101,37., 127.),
       (103,'미산면',4,101,37., 127.),
       (104,'삼화리',4,101,37., 127.),
       (105,'동이리',4,101,37., 127.);

select name from location;

-- 서울시의 모든 하위 행정구역을 조회하는 쿼리
select *
from location
where parent_id = 2;

-- 송파구의 모든 하위 행정구역을 조회하는 쿼리
select *
from location
where parent_id = (select id from location where name = '송파구');

-- 강남구의 모든 하위 행정구역을 조회하는 쿼리
select *
from location
where parent_id = (select id from location where name = '강남구');


with recursive recursion(id,name,parent_id,class) as (
    select id,
           name,
           parent_id,
           class
    from location
    where parent_id = ?
    union
    select l.id,
           l.name,
           l.parent_id,
           l.class
    from location l
             inner join recursion on l.parent_id = recursion.id
)
select *
from recursion;


# ?의 모든 하위행정을 조회하되, 그 유형이 동이나 리만 검색
with recursive recursion (id, name, parent_id, type) as (
    select id,
           name,
           parent_id,
           class
    from location
    where name = '서울특별시'
    union all
    select l.id,
           l.name,
           l.parent_id,
           l.class
    from location l
             inner join recursion on l.parent_id = recursion.id
)
select *
from recursion
where `type` = 3;
