create database airbnb;
use airbnb;

create table location
(
    id    BIGINT primary key auto_increment,
    name  varchar(45),
    image_url varchar(255)
);

create table property
(
    id          bigint primary key auto_increment,
    name        varchar(255),
    price       int,
    location_id BIGINT,
    foreign key (location_id) references location (id)
);

drop table property_detail;
create table property_detail
(
    property_id   bigint,
    description   varchar(255),
    max_occupancy int,
    cleaning_fee   int,
    occupied_date  date,
    bed_count     int,
    bath_count    int,
    room_type     varchar(45),
    review_count  int,
    latitude      double,
    longitude     double,
    foreign key (property_id) references property (id)
);

drop table image;
create table image
(
    id        BIGINT Primary Key auto_increment,
    image_url varchar(1000),
    name      varchar(45),
    property_id bigint,
    foreign key (property_id) references property(id)
);

create table user
(
    id    BIGINT primary key auto_increment,
    name  varchar(45),
    email varchar(255)
);

create table reservation
(
    check_in_date  datetime,
    check_out_date datetime,
    total_price    int,
    guest_count    varchar(45),
    user_id        bigint,
    property_id    bigint,
    foreign key (user_id) references user (id),
    foreign key (property_id) references property (id)
);

create table wish_list
(
    bookmark    boolean,
    user_id     bigint,
    property_id bigint,
    foreign key (user_id) references user (id),
    foreign key (property_id) references property (id)
);

drop table property_category;
create table property_category
(
    id bigint primary key auto_increment,
    name varchar(45),
    image_url varchar(1000)
);

drop table wish_list, reservation, user, property_detail, image, property, location;
