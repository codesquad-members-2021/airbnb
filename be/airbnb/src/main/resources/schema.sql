drop table if exists `user`;
drop table if exists `host`;
drop table if exists `guest`;
drop table if exists location;
drop table if exists room;
drop table if exists reservation;
drop table if exists room_price;
drop table if exists amenity;
drop table if exists room_amenity;
drop table if exists bathroom;
drop table if exists room_bathroom;
drop table if exists bedroom;
drop table if exists room_bedroom;
drop table if exists discount;
drop table if exists room_discount;
drop table if exists room_image;

create table `user`
(
    id               int primary key auto_increment,
    oauth_id         varchar(100),
    authenticated_by varchar(20),
    nickname         varchar(30),
    name             varchar(30),
    profile_image    varchar(300),
    access_token     varchar(300)
);
create table `host`
(
    user_id      int references `user` (id),
    is_superhost bool
);

create table `guest`
(
    user_id int references `user` (id)
);

create table `location`
(
    id        int primary key auto_increment,
    name      varchar(100),
    type      varchar(30),
    parent_id int references location (id),
    level     int,
    place_id  varchar(60),
    point     point
);

create table `room`
(
    id             int primary key auto_increment,
    location_id    int references location (id),
    name           varchar(60),
    rating         float,
    guest_capacity int,
    point          point,
    description    varchar(300)
);

create table `room_price`
(
    id               int primary key auto_increment,
    room_id          int references room (id),
    service_fee       int,
    accomodation_tax int,
    clean_up_cost    int,
    price_per_day    int,
    weekly_discount  int
);

create table `amenity`
(
    id   int primary key auto_increment,
    name varchar(50)
);

create table `room_amenity`
(
    id         int primary key auto_increment,
    room_id    int references room (id),
    amenity_id int references amenity (id)
);

create table `bedroom`
(
    id            int primary key auto_increment,
    bedroom_type  varchar(50),
    bedroom_count int
);

create table `room_bedroom`
(
    id         int primary key auto_increment,
    room_id    int references room (id),
    bedroom_id int references bedroom (id)
);

create table `bathroom`
(
    id            int primary key auto_increment,
    bathroom_type varchar(50)
);

create table `room_bathroom`
(
    id          int primary key auto_increment,
    room_id     int references room (id),
    bathroom_id int references bathroom (id)
);

create table `room_image`
(
    id          int primary key auto_increment,
    image_url   varchar(300),
    image_index int
);

create table `reservation`
(
    id                 int primary key auto_increment,
    guest_id           int references guest (user_id),
    room_id            int references room (id),
    checkin_date_time  timestamp,
    checkout_date_time timestamp,
    adult_count        int,
    child_count        int,
    infant_count       int
);
