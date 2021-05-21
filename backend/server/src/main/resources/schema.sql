SET MODE MySQL;

DROP ALL OBJECTS;

DROP TABLE IF EXISTS `user`;

CREATE TABLE IF NOT EXISTS `user` (
    `id` int primary key auto_increment,
    `login` VARCHAR(50),
    `name` VARCHAR(50),
    `access_token` VARCHAR(50),
    `token_type` VARCHAR(50),
    `scope` VARCHAR(50)
);
