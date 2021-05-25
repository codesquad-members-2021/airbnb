drop table if exists `badge`;
drop table if exists `thumbnail`;
drop table if exists `option`;
drop table if exists `wish`;
drop table if exists `booking`;
drop table if exists `user`;
drop table if exists `room`;

create table `room`
(
    `id`                int not null auto_increment,
    `max`               int not null,
    `name`              varchar(100) not null,
    `rating`            double not null,
    `latitude`          double not null,
    `longitude`         double not null,
    `bedroom_count`     int not null,
    `bed_count`         int not null,
    `bathroom_count`    int not null,
    `address`           varchar(45) not null,
    `detail_address`    varchar(45) not null,
    `comment_count`     int not null,
    `original_price`    int not null,
    `sale_price`        int not null,
    `flexible_refund`   tinyint(1) not null,
    `immediate_booking` tinyint(1) not null,
    primary key (id)
);

create table `user`
(
    id        int not null auto_increment,
    github_id varchar(45) not null,
    primary key (id)
);

create table `booking`
(
    id        int not null auto_increment,
    room_id   int not null,
    user_id   int not null,
    check_in  varchar(20) not null,
    check_out varchar(20) not null,
    adult     int not null,
    child     int not null,
    baby      int not null,
    primary key (id),
    foreign key (user_id) references user (id),
    foreign key (room_id) references room (id)
);

create table `wish`
(
    id      int not null auto_increment,
    room_id int not null,
    user_id int not null,
    primary key (id),
    foreign key (user_id) references user (id),
    foreign key (room_id) references room (id)
);

create table `option`
(
    room_id          int not null,
    kitchen          tinyint(1) not null,
    air_conditioner  tinyint(1) not null,
    wifi             tinyint(1) not null,
    free_parking_lot tinyint(1) not null,
    hair_dryer       tinyint(1) not null,
    foreign key (room_id) references room (id)
);

create table `thumbnail`
(
    room_id   int not null,
    thumbnail varchar(200) not null,
    foreign key (room_id) references room (id)
);

create table `badge`
(
    room_id int not null,
    type    varchar(64) not null,
    foreign key (room_id) references room (id)
);
