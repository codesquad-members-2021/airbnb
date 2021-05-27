-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema airbnb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema airbnb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `airbnb` DEFAULT CHARACTER SET utf8 ;
USE `airbnb` ;

-- -----------------------------------------------------
-- Table `airbnb`.`room`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb`.`room` ;

CREATE TABLE IF NOT EXISTS `airbnb`.`room` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `score` DOUBLE NOT NULL,
  `reviewers` INT NOT NULL,
  `address` VARCHAR(45) NOT NULL,
  `latitude` DOUBLE NOT NULL,
  `longitude` DOUBLE NOT NULL,
  `room_type` VARCHAR(45) NOT NULL,
  `beds` INT NOT NULL,
  `bedRooms` INT NOT NULL,
  `bathRooms` INT NOT NULL,
  `description` TEXT NOT NULL,
  `host_name` VARCHAR(45) NOT NULL,
  `host_image` VARCHAR(255) NOT NULL,
  `price_per_day` DECIMAL NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `airbnb`.`user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb`.`user` ;

CREATE TABLE IF NOT EXISTS `airbnb`.`user` (
  `id` INT AUTO_INCREMENT,
  `github` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `airbnb`.`booking`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb`.`booking` ;

CREATE TABLE IF NOT EXISTS `airbnb`.`booking` (
  `id` INT AUTO_INCREMENT,
  `check_in` DATE NOT NULL,
  `check_out` DATE NOT NULL,
  `guest` INT NOT NULL,
  `total_price` DECIMAL NOT NULL,
  `user` INT NOT NULL,
  `room` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_booking_user1_idx` (`user` ASC) ,
  INDEX `fk_booking_room1_idx` (`room` ASC),
  CONSTRAINT `fk_booking_user1`
    FOREIGN KEY (`user`)
    REFERENCES `airbnb`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_booking_room1`
    FOREIGN KEY (`room`)
    REFERENCES `airbnb`.`room` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `airbnb`.`wishlist`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb`.`wishlist` ;

CREATE TABLE IF NOT EXISTS `airbnb`.`wishlist` (
  `id` INT AUTO_INCREMENT,
  `user` INT NOT NULL,
  `user_key` INT,
  `room` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_wishlist_user1_idx` (`user` ASC),
  INDEX `fk_wishlist_room1_idx` (`room` ASC),
  CONSTRAINT `fk_wishlist_user1`
    FOREIGN KEY (`user`)
    REFERENCES `airbnb`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_wishlist_room1`
    FOREIGN KEY (`room`)
    REFERENCES `airbnb`.`room` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `airbnb`.`hero_banner`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb`.`hero_banner` ;

CREATE TABLE IF NOT EXISTS `airbnb`.`hero_banner` (
  `id` INT AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  `image` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `airbnb`.`near_destination`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb`.`near_destination` ;

CREATE TABLE IF NOT EXISTS `airbnb`.`near_destination` (
  `id` INT AUTO_INCREMENT,
  `destination` VARCHAR(45) NOT NULL,
  `time_distance` TIME NOT NULL,
  `image` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `airbnb`.`image`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb`.`image` ;

CREATE TABLE IF NOT EXISTS `airbnb`.`image` (
`url` VARCHAR(255) NOT NULL,
`room` INT NOT NULL,
`room_key` INT,
PRIMARY KEY (`url`),
CONSTRAINT `fk_image_room`
FOREIGN KEY (`room`)
    REFERENCES `airbnb`.`room` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
