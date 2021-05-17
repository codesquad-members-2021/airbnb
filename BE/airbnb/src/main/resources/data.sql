

CREATE TABLE IF NOT EXISTS `airbnb`.`user` (
                                               `id` BIGINT NOT NULL AUTO_INCREMENT,
                                               `username` VARCHAR(45) NOT NULL,
    `email` VARCHAR(45) NOT NULL,
    `role` VARCHAR(5) NOT NULL,
    `join_date` DATETIME NOT NULL,
    PRIMARY KEY(`id`)
    ) ENGINE = InnoDB;
