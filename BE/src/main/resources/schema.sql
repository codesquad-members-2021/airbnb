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
-- Table `airbnb`.`user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb`.`user`;
CREATE TABLE IF NOT EXISTS `airbnb`.`user` (
    `id` INT AUTO_INCREMENT NOT NULL,
    `user_id` VARCHAR(45) UNIQUE KEY NOT NULL,
    `email` VARCHAR(45) NOT NULL,
    `name` VARCHAR(45) NULL,
    `token` VARCHAR(255) NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `airbnb`.`house`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb`.`house`;
CREATE TABLE IF NOT EXISTS `airbnb`.`house` (
    `id` INT AUTO_INCREMENT NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `description` VARCHAR(255) NOT NULL,
    `charge` INT NOT NULL,
    `option` VARCHAR(255) NOT NULL,
    `host` VARCHAR(45) NOT NULL,
    `grade` DECIMAL(3,2) NOT NULL,
    `review` INT NOT NULL,
    `latitude` DECIMAL(16,14) NOT NULL,
    `longitude` DECIMAL(17,14) NOT NULL,
    `discount_ratio` DECIMAL(3,2) NOT NULL,
    `cleaning_ratio` DECIMAL(3,2) NOT NULL,
    `service_ratio` DECIMAL(3,2) NOT NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `airbnb`.`image`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb`.`image`;
CREATE TABLE IF NOT EXISTS `airbnb`.`image` (
    `id` INT AUTO_INCREMENT NOT NULL,
    `url` VARCHAR(255) NOT NULL,
    `house_id` INT NOT NULL,
    PRIMARY KEY (`id`),
    INDEX `fk_image_house_idx` (`house_id` ASC) VISIBLE,
    CONSTRAINT `fk_image_house`
    FOREIGN KEY (`house_id`)
    REFERENCES `airbnb`.`house` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `airbnb`.`wish`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb`.`wish`;
CREATE TABLE IF NOT EXISTS `airbnb`.`wish` (
    `id` INT AUTO_INCREMENT NOT NULL,
    `user_id` INT NOT NULL,
    `house_id` INT NOT NULL,
    PRIMARY KEY (`id`),
    INDEX `fk_wish_user1_idx` (`user_id` ASC) VISIBLE,
    INDEX `fk_wish_house1_idx` (`house_id` ASC) VISIBLE,
    CONSTRAINT `fk_wish_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `airbnb`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    CONSTRAINT `fk_wish_house1`
    FOREIGN KEY (`house_id`)
    REFERENCES `airbnb`.`house` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `airbnb`.`join`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb`.`join`;
CREATE TABLE IF NOT EXISTS `airbnb`.`join` (
    `id` INT AUTO_INCREMENT NOT NULL,
    `check_in` DATE NOT NULL,
    `check_out` DATE NOT NULL,
    `guest` INT NOT NULL,
    `kid` INT NOT NULL,
    `total_charge` INT NOT NULL,
    `user_id` INT NOT NULL,
    `house_id` INT NOT NULL,
    PRIMARY KEY (`id`),
    INDEX `fk_join_user1_idx` (`user_id` ASC) VISIBLE,
    INDEX `fk_join_house1_idx` (`house_id` ASC) VISIBLE,
    CONSTRAINT `fk_join_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `airbnb`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    CONSTRAINT `fk_join_house1`
    FOREIGN KEY (`house_id`)
    REFERENCES `airbnb`.`house` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
    ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
