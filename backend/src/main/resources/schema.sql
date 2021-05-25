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
    `number_of_guest` INT,
--     `child` INT,
--     `baby` INT,
    CONSTRAINT user_reservation_foreign_key FOREIGN KEY (`user`) references `user` (id),
    CONSTRAINT room_reservation_foreign_key FOREIGN KEY (`room`) references `room` (id)
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
