-- MySQL Workbench Forward Engineering

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema airbnb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `airbnb` ;

-- -----------------------------------------------------
-- Schema airbnb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `airbnb` DEFAULT CHARACTER SET utf8 ;
USE `airbnb` ;

-- -----------------------------------------------------
-- Table `airbnb`.`city`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb`.`city` ;

CREATE TABLE IF NOT EXISTS `airbnb`.`city` (
    `id` BIGINT,
    `city_name` VARCHAR(50),
    `city_image` VARCHAR(150),
    PRIMARY KEY (`city_name`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8;

-- -----------------------------------------------------
-- Table `airbnb`.`user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb`.`user` ;

CREATE TABLE IF NOT EXISTS `airbnb`.`user` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `github_id` VARCHAR(45) NOT NULL,
    `github_email` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `airbnb`.`location`
-- -----------------------------------------------------

DROP TABLE IF EXISTS `airbnb`.`location` ;

CREATE TABLE IF NOT EXISTS `airbnb`.`location`(
    `id` BIGINT AUTO_INCREMENT PRIMARY KEY,
    `latitude` DECIMAL(24,5),
    `longitude` DECIMAL(24,5),
    `city` VARCHAR(50),
    CONSTRAINT city_location_foreign_key FOREIGN KEY (`city`) references `city` (city_name)
    );
-- -----------------------------------------------
------
-- Table `airbnb`.`room`
-- -----------------------------------------------------

DROP TABLE IF EXISTS `airbnb`.`room` ;

CREATE TABLE IF NOT EXISTS `airbnb`.`room`(
    `id` BIGINT AUTO_INCREMENT PRIMARY KEY,
    `title` varchar(45),
    `description` varchar(150),
    `price_per_day` INT,
    `room_type` varchar(45),
    `bed` INT,
    `max_guest` INT,
    `bathroom` INT,
    `location` BIGINT,
    CONSTRAINT room_location_cost_foreign_key FOREIGN KEY (`location`) references `location` (id)
    );

-- -----------------------------------------------------
-- Table `airbnb`.`reservation`
-- -----------------------------------------------------

DROP TABLE IF EXISTS `airbnb`.`reservation` ;

CREATE TABLE IF NOT EXISTS `airbnb`.`reservation`(
    `id` BIGINT AUTO_INCREMENT PRIMARY KEY,
    `user` BIGINT,
    `room` BIGINT,
    `check_in` DATE,
    `check_out` DATE,
    `total_price` INT,
    `adult` INT,
    `child` INT,
    `baby` INT,
    CONSTRAINT user_reservation_foreign_key FOREIGN KEY (`user`) references `user` (id),
    CONSTRAINT room_reservation_foreign_key FOREIGN KEY (`room`) references `room` (id)
    );

-- -----------------------------------------------------
-- Table `airbnb`.`extra_cost`
-- -----------------------------------------------------

DROP TABLE IF EXISTS `airbnb`.`extra_cost` ;

CREATE TABLE IF NOT EXISTS `airbnb`.`extra_cost`(
    `id` BIGINT AUTO_INCREMENT PRIMARY KEY,
    `week_sale_percent` DECIMAL (10,2),
    `cleaning_fee` INT,
    `service_fee_percent` DECIMAL (10,2),
    `resort_fee_percent` DECIMAL (10,2)
    );



-- -----------------------------------------------------
-- Table `airbnb`.`image`
-- -----------------------------------------------------

DROP TABLE IF EXISTS `airbnb`.`image` ;

CREATE TABLE IF NOT EXISTS `airbnb`.`image`(
    `id` BIGINT AUTO_INCREMENT PRIMARY KEY,
    `type` VARCHAR(45),
    `url` VARCHAR(150),
    `room` BIGINT,
    CONSTRAINT room_image_foreign_key FOREIGN KEY (`room`) references `room` (id)
    );

/*








-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema airbnb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema airbnb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `airbnb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`user` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `github_id` VARCHAR(45) NOT NULL,
    `github_email` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`room`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`room` (
                                             `id` INT NOT NULL AUTO_INCREMENT,
                                             `title` VARCHAR(45) NULL,
    `decription` VARCHAR(45) NULL,
    `price_per_day` INT NULL,
    `room_type` VARCHAR(45) NULL,
    `bed` INT NULL,
    `max_guest` INT NULL,
    `bathroom` VARCHAR(45) NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`wish_list`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`wish_list` (
                                                  `id` INT NOT NULL AUTO_INCREMENT,
                                                  `user_id` INT NOT NULL,
                                                  `room_id` INT NOT NULL,
                                                  PRIMARY KEY (`id`),
    INDEX `fk_wish_list_user1_idx` (`user_id` ASC) VISIBLE,
    INDEX `fk_wish_list_room1_idx` (`room_id` ASC) VISIBLE,
    CONSTRAINT `fk_wish_list_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `mydb`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    CONSTRAINT `fk_wish_list_room1`
    FOREIGN KEY (`room_id`)
    REFERENCES `mydb`.`room` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`reservation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`reservation` (
                                                    `id` INT NOT NULL AUTO_INCREMENT,
                                                    `user_id` INT NOT NULL,
                                                    `check_in` VARCHAR(45) NOT NULL,
    `check_out` VARCHAR(45) NOT NULL,
    `total_price` INT NULL,
    `adults` INT NULL,
    `children` INT NULL,
    `baby` INT NULL,
    `room_id` INT NOT NULL,
    PRIMARY KEY (`id`),
    INDEX `fk_reservation_user1_idx` (`user_id` ASC) VISIBLE,
    INDEX `fk_reservation_room1_idx` (`room_id` ASC) VISIBLE,
    CONSTRAINT `fk_reservation_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `mydb`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    CONSTRAINT `fk_reservation_room1`
    FOREIGN KEY (`room_id`)
    REFERENCES `mydb`.`room` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`image`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`image` (
                                              `id` INT NOT NULL AUTO_INCREMENT,
                                              `type` VARCHAR(45) NOT NULL,
    `url` VARCHAR(45) NOT NULL,
    `room_id` INT NOT NULL,
    PRIMARY KEY (`id`),
    INDEX `fk_image_room1_idx` (`room_id` ASC) VISIBLE,
    CONSTRAINT `fk_image_room1`
    FOREIGN KEY (`room_id`)
    REFERENCES `mydb`.`room` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`city`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`city` (
                                             `id` INT NOT NULL AUTO_INCREMENT,
                                             `city_name` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`city_name`))
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`location`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`location` (
                                                 `id` INT NOT NULL AUTO_INCREMENT,
                                                 `location_x` VARCHAR(45) NULL,
    `location_y` VARCHAR(45) NULL,
    `room_id` INT NOT NULL,
    `city_city_name` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`),
    INDEX `fk_location_room1_idx` (`room_id` ASC) VISIBLE,
    INDEX `fk_location_city1_idx` (`city_city_name` ASC) VISIBLE,
    CONSTRAINT `fk_location_room1`
    FOREIGN KEY (`room_id`)
    REFERENCES `mydb`.`room` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    CONSTRAINT `fk_location_city1`
    FOREIGN KEY (`city_city_name`)
    REFERENCES `mydb`.`city` (`city_name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
    ENGINE = InnoDB;

USE `airbnb` ;

-- -----------------------------------------------------
-- Table `airbnb`.`room`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `airbnb`.`room` (
    `id` INT(11) NULL DEFAULT NULL,
    `team_name` VARCHAR(50) NOT NULL,
    PRIMARY KEY (`team_name`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


*/
