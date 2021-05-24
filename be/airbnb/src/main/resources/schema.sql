drop table if exists `user`;
drop table if exists `host`;
drop table if exists `guest`;
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
