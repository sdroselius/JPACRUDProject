-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema giraffedb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `giraffedb` ;

-- -----------------------------------------------------
-- Schema giraffedb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `giraffedb` DEFAULT CHARACTER SET utf8 ;
USE `giraffedb` ;

-- -----------------------------------------------------
-- Table `giraffe`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `giraffe` ;

CREATE TABLE IF NOT EXISTS `giraffe` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS giraffeuser@localhost;
SET SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';
CREATE USER 'giraffeuser'@'localhost' IDENTIFIED BY 'giraffeuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'giraffeuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `giraffe`
-- -----------------------------------------------------
START TRANSACTION;
USE `giraffedb`;
INSERT INTO `giraffe` (`id`, `name`) VALUES (1, 'Dobby');

COMMIT;

