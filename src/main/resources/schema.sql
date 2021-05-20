drop table if exists room;
drop table if exists booking;
drop table if exists `option`;
drop table if exists `user`;
drop table if exists wish;
drop table if exists badges;
drop table if exists thumbnails;

create table room (
    id int not_null auto_increment,
    max int not_null,
    name varchar(45) not_null,
    rating double not_null,
    latitude double not_null,
    longitude double not_null,
    bedroom_count int not_null,
    bed_count int not_null,
    bathroom_count int not_null,
    address varchar(45) not_null,
    detail_address varchar(45) not_null,
    comment_count int not_null,
    original_price int not_null,
    sale_price int not_null,
    flexible_refund tinyint(1) not_null,
    immediate_booking tinyint(1) not_null,
    primary key (id)
);

create table user (
    id int not_null auto_increment,
    user_id varchar(45) not_null,
    password varchar(45) not_null,
    primary key (id)
);

create table booking (
    id int not_null auto_increment,
    user_id int not_null,
    room_id int not_null,
    check_in datetime not_null,
    check_out datetime not_null,
    adult int not_null,
    child int not_null,
    baby int not_null,
    total int not_null,
    primary key (id),
    foreign key (user_id) references user (id),
    foreign key (room_id) references room (id)
);

create table wish (
    id int not_null auto_increment,
    room_id int not_null,
    user_id int not_null,
    primary key (id),
    foreign key (user_id) references user (id),
    foreign key (room_id) references room (id)
);

create table option (
    room_id int not_null,
    kitchen tinyint(1) not_null,
    air_conditioner tinyint(1) not_null,
    wifi tinyint(1) not_null,
    free_parking_lot tinyint(1) not_null,
    hair_dryer tinyint(1) not_null,
    foreign key (room_id) references room (id)
);

create table thumbnails (
    thumbnail varchar(64) not_null,
    foreign key (room_id) references room (id)
);

create table badges (
    type varchar(64) not_null,
    foreign key (room_id) references room (id)
);
