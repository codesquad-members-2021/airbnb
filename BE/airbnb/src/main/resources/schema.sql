DROP TABLE IF EXISTS `airbnb`.`user`;

CREATE TABLE IF NOT EXISTS `airbnb`.`user` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `username` VARCHAR(45) NOT NULL,
    `email` VARCHAR(45) NOT NULL,
    `role` VARCHAR(5) NOT NULL,
    `created_date` DATETIME NOT NULL DEFAULT now(),
    PRIMARY KEY(`id`)
) ENGINE = InnoDB;
