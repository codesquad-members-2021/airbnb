SET MODE MySQL;

DROP ALL OBJECTS;

DROP TABLE IF EXISTS `token`;

CREATE TABLE IF NOT EXISTS `token` (
    `user_login` VARCHAR(50) NOT NULL PRIMARY KEY,
    `access_token` VARCHAR(50) NOT NULL,
    `token_type` VARCHAR(50),
    `scope` VARCHAR(50)
);
