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
    place varchar(100),
    point_front double,
    point_back double
);
-- ----------------------

