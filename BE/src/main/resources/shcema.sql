create databases airbnb;


drop table city;
create table city(
    id int not null auto_increment,
    name varchar(45) not null,
    latitude int,
    longitude int,
    primary key(id)
);

drop table category;
create table category(
    id int not null auto_increment,
    name varchar(45) not null,
    primary key(id)
);

drop tabel room;
create table room(
    id int not null auto_increment,
    price int not null,
    title varchar (45) not null,
    description varchar (300),
    people int not null,
    oneroom tinyint(1) not null default 0,
    bed int not null default 0,
    bath int not null default 0,
    hair_dryer tinyint(1) not null default 0,
    air_conditioner tinyint(1) not null default 0,
    wifi tinyint(1) not null default 0,
    clean_tax int ,
    service_tax int ,
    accommodation_tax int,
    city_id int not null,
    category_id int not null,

    primary key (id),
    foreign key (city_id) references city(id),
    foreign key (category_id) references category(id)
);

drop table image;
create table image(
    id int not null auto_increment,
    url varchar(100) not null,
    room_id int,
    category_id int,
    city_id int,
    image_type varchar(10) not null,
    primary key (id),
    foreign key (room_id) references room(id),
    foreign key (category_id) references category(id),
    foreign key (city_id) references city(id),
    foreign key (image_type) references image_type(type)
);

drop table image_type;
create table image_type(
    type varchar(10) not null,
    primary key (type)
);

drop table 'user';
create table user(
    id varchar(45) not null,
    primary key (id)
);

drop table wish_list;
create table wish_list(
    id int not null auto_increment,
    room_id int not null,
    user_id varchar(45) not null,
    save tinyint(1) not null default 1,
    primary key (id),
    foreign key (room_id) references room(id),
    foreign key (user_id) references `user`(id)
);

drop table reservation;
create table reservation(
    id int not null auto_increment,
    room_id int not null,
    user_id varchar(45),
    check_in datetime,
    check_out datetime,
    cancel tinyint(1) not null default 0,
    primary key (id),
    foreign key (room_id) references room(id),
    foreign key (user_id) references user(id)
);




