use airbnb;

drop table if exists host;
drop table if exists city;
drop table if exists location;
drop table if exists additional_cost;
drop table if exists review;
drop table if exists rooms;
drop table if exists image;
drop table if exists users;

create table host(
    id bigint auto_increment primary key ,
    name varchar (45),
    profile_image_url varchar (200)
);


create table city(
    id bigint auto_increment primary key ,
    name varchar (45),
    image_url varchar (200)
);

create table location(
    id bigint auto_increment primary key ,
    city_id bigint references city(id),
    latitude double(20,10),
    longitude double(20,10)
);

create table additional_cost(
    id bigint auto_increment primary key ,
    week_sale_percent int,
    cleaning_fee int,
    service_fee_percent int,
    lodgment_fee_percent int
);

create table review(
   id bigint auto_increment primary key ,
   star double (6,3),
   review int
);

create table rooms(
  id bigint auto_increment primary key ,
  host_id bigint references host(id),
  location_id bigint references location(id),
  additional_cost_id bigint references additional_cost(id),
  review_id bigint references review(id),
  name varchar (100),
  price_per_date DECIMAL(20,10),
  description varchar(300),
  bed int,
  max_guest int,
  bathroom int,
  type varchar (45)

);

create table image(
    id bigint auto_increment primary key,
    rooms_id bigint references rooms(id),
    url varchar (200) not null,
    type varchar (30) not null
);

create table users(
  id bigint auto_increment primary key,
  name varchar (45),
  email varchar (100),
  profile_image_url varchar (200)
);

create table reservation(
  id bigint auto_increment primary key,
  user_id bigint references users(id),
  rooms_id bigint references rooms(id),
  adult int,
  child int,
  baby int,
  check_in datetime,
  check_out datetime,
  total_price DECIMAL(20,10)
);