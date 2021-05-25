create database if not exists airbnb;
use airbnb;

create table if not exists location
(
    id        BIGINT primary key auto_increment,
    name      varchar(45),
    image_url varchar(255)
);

create table if not exists category
(
    id        BIGINT PRIMARY KEY AUTO_INCREMENT,
    name      VARCHAR(45),
    image_url VARCHAR(1000)
);

create table if not exists property
(
    id          bigint primary key auto_increment,
    name        varchar(255),
    price       int,
    location_id BIGINT,
    foreign key (location_id) references location (id)
);

create table if not exists property_detail
(
    property_id   bigint,
    description   varchar(255),
    max_occupancy int,
    cleaning_fee  int,
    occupied_date date,
    bed_count     int,
    bath_count    int,
    room_type     varchar(45),
    review_count  int,
    latitude      double,
    longitude     double,
    rating        double,
    foreign key (property_id) references property (id)
);

create table if not exists image
(
    id          BIGINT Primary Key auto_increment,
    image_url   varchar(1000),
    name        varchar(45),
    property_id bigint,
    foreign key (property_id) references property (id)
);

create table if not exists user
(
    id    BIGINT primary key auto_increment,
    name  varchar(45),
    email varchar(255)
);

create table if not exists reservation
(
    id             BIGINT PRIMARY KEY AUTO_INCREMENT,
    check_in_date  datetime,
    check_out_date datetime,
    total_price    int,
    guest_count    varchar(45),
    user_id        bigint,
    property_id    bigint,
    foreign key (user_id) references user (id),
    foreign key (property_id) references property (id)
);

create table if not exists wish_list
(
    bookmark    boolean,
    user_id     bigint,
    property_id bigint,
    foreign key (user_id) references user (id),
    foreign key (property_id) references property (id)
);

create table if not exists property_category
(
    id        bigint primary key auto_increment,
    name      varchar(45),
    image_url varchar(1000)
);

# drop table wish_list, reservation, user, property_detail, image, property, location;
