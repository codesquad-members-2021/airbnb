DROP TABLE IF EXISTS `pyrodb`.`user` ;

CREATE TABLE `pyrodb`.`user` (
    `login` VARCHAR(50) NOT NULL PRIMARY KEY,
    `name` VARCHAR(50) NOT NULL
);
