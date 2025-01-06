-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema comedydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `comedydb` ;

-- -----------------------------------------------------
-- Schema comedydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `comedydb` DEFAULT CHARACTER SET utf8 ;
USE `comedydb` ;

-- -----------------------------------------------------
-- Table `comedy_show`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `comedy_show` ;

CREATE TABLE IF NOT EXISTS `comedy_show` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `performer` VARCHAR(45) NOT NULL,
  `performance_date` DATE NULL,
  `remarks` TEXT NULL,
  `rating` INT NULL,
  `venue` VARCHAR(100) NULL,
  `heckled` TINYINT NULL,
  `performer_image_url` VARCHAR(2000) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS comedyuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'comedyuser'@'localhost' IDENTIFIED BY 'comedyuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'comedyuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `comedy_show`
-- -----------------------------------------------------
START TRANSACTION;
USE `comedydb`;
INSERT INTO `comedy_show` (`id`, `performer`, `performance_date`, `remarks`, `rating`, `venue`, `heckled`, `performer_image_url`) VALUES (1, 'Josh Blue', '2024-12-31', 'Lorem', 5, 'Stanley Hotel', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/Josh_Blue_by_Bryce_Boyer.jpg/440px-Josh_Blue_by_Bryce_Boyer.jpg');
INSERT INTO `comedy_show` (`id`, `performer`, `performance_date`, `remarks`, `rating`, `venue`, `heckled`, `performer_image_url`) VALUES (2, 'Maria Bamford', '2025-04-05', 'Ipsum', 5, 'TACAW', 0, 'https://images.squarespace-cdn.com/content/v1/5c82df1ba9ab95269545c57d/9b71dd2c-a8d5-46a4-a1da-a3a9dda6ff64/Maria-0193.jpg?format=2500w');
INSERT INTO `comedy_show` (`id`, `performer`, `performance_date`, `remarks`, `rating`, `venue`, `heckled`, `performer_image_url`) VALUES (3, 'Jackie Kasian', '2025-01-09', 'Dolor', 5, 'Comedy Works', 0, 'https://comedyworks.com/attachments/photos/0002/5308/Jackie-Kashian-comedian-denver-1_profile_thumb.jpg');
INSERT INTO `comedy_show` (`id`, `performer`, `performance_date`, `remarks`, `rating`, `venue`, `heckled`, `performer_image_url`) VALUES (4, 'Shane Torres', '2025-01-02', 'Blah', 4, 'Comedy Works', 1, 'https://comedyworks.com/attachments/photos/0002/6126/ShaneTorres-comedian-denver-1_profile_thumb.jpg');

COMMIT;

