-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema dogparkdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `dogparkdb` ;

-- -----------------------------------------------------
-- Schema dogparkdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dogparkdb` DEFAULT CHARACTER SET utf8 ;
USE `dogparkdb` ;

-- -----------------------------------------------------
-- Table `dog_park`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dog_park` ;

CREATE TABLE IF NOT EXISTS `dog_park` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(150) NOT NULL,
  `description` TEXT NULL,
  `image_url` VARCHAR(2000) NULL,
  `street` VARCHAR(100) NULL,
  `city` VARCHAR(45) NULL,
  `state` VARCHAR(45) NULL,
  `zip` VARCHAR(45) NULL,
  `create_date` DATETIME NULL,
  `last_update` DATETIME NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS dogparkuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'dogparkuser'@'localhost' IDENTIFIED BY 'dogparkuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'dogparkuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `dog_park`
-- -----------------------------------------------------
START TRANSACTION;
USE `dogparkdb`;
INSERT INTO `dog_park` (`id`, `name`, `description`, `image_url`, `street`, `city`, `state`, `zip`, `create_date`, `last_update`) VALUES (1, 'Barnum Dog Park', '', 'https://offeromt.azureedge.net/adoptable-item-type-profile-photos/1cbb062f-3d5f-4a08-9189-75b7b8fc5597_160x160.jpg', NULL, NULL, NULL, NULL, '2024-06-06', '2024-08-01');
INSERT INTO `dog_park` (`id`, `name`, `description`, `image_url`, `street`, `city`, `state`, `zip`, `create_date`, `last_update`) VALUES (2, 'Railyard Dog Park', '', '', NULL, NULL, NULL, NULL, NULL, NULL);

COMMIT;

