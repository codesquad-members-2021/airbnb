-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema airbnb_db
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema airbnb_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `airbnb_db` DEFAULT CHARACTER SET utf8 ;
USE `airbnb_db` ;

-- -----------------------------------------------------
-- Table `airbnb_db`.`accommodation`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb_db`.`accommodation`;
CREATE TABLE IF NOT EXISTS `airbnb_db`.`accommodation` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `max_num_of_people` INT NOT NULL DEFAULT 1,
  `type` VARCHAR(45) NOT NULL,
  `num_of_bed` INT NOT NULL DEFAULT 1,
  `num_of_bathroom` INT NOT NULL DEFAULT 1,
  `price` DECIMAL NOT NULL,
  `address` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `airbnb_db`.`accommodation_detail`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb_db`.`accommodation_detail`;
CREATE TABLE IF NOT EXISTS `airbnb_db`.`accommodation_detail` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `host_name` VARCHAR(45) NOT NULL,
  `description` VARCHAR(255) NOT NULL,
  `accommodation_id` INT NOT NULL,
  PRIMARY KEY (`id`, `accommodation_id`),
  INDEX `fk_accommodation_detail_accommodation_idx` (`accommodation_id` ASC) VISIBLE,
  CONSTRAINT `fk_accommodation_detail_accommodation`
    FOREIGN KEY (`accommodation_id`)
    REFERENCES `airbnb_db`.`accommodation` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `airbnb_db`.`reservation`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb_db`.`reservation`;
CREATE TABLE IF NOT EXISTS `airbnb_db`.`reservation` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `check_in_date` DATE NOT NULL,
  `check_out_date` DATE NOT NULL,
  `accommodation_id` INT NOT NULL,
  `user_id` INT NOT NULL,
  `deleted` TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`, `accommodation_id`),
  INDEX `fk_reservation_accommodation1_idx` (`accommodation_id` ASC) VISIBLE,
  CONSTRAINT `fk_reservation_accommodation1`
    FOREIGN KEY (`accommodation_id`)
    REFERENCES `airbnb_db`.`accommodation` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `airbnb_db`.`image`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb_db`.`image`;
CREATE TABLE IF NOT EXISTS `airbnb_db`.`image` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `url` VARCHAR(2083) NOT NULL,
  `main` TINYINT(1) NOT NULL DEFAULT 0,
  `accommodation_id` INT NOT NULL,
  PRIMARY KEY (`id`, `accommodation_id`),
  INDEX `fk_image_accommodation1_idx` (`accommodation_id` ASC) VISIBLE,
  CONSTRAINT `fk_image_accommodation1`
    FOREIGN KEY (`accommodation_id`)
    REFERENCES `airbnb_db`.`accommodation` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `airbnb_db`.`wish`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb_db`.`wish`;
CREATE TABLE IF NOT EXISTS `airbnb_db`.`wish` (
  `user_id` INT NOT NULL,
  `accommodation_id` INT NOT NULL,
  PRIMARY KEY (`user_id`, `accommodation_id`),
  INDEX `fk_wish_accommodation1_idx` (`accommodation_id` ASC) VISIBLE,
  CONSTRAINT `fk_wish_accommodation1`
    FOREIGN KEY (`accommodation_id`)
    REFERENCES `airbnb_db`.`accommodation` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
