-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema goodbugsdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `goodbugsdb` ;

-- -----------------------------------------------------
-- Schema goodbugsdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `goodbugsdb` DEFAULT CHARACTER SET utf8 ;
USE `goodbugsdb` ;

-- -----------------------------------------------------
-- Table `beneficial_insect`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `beneficial_insect` ;

CREATE TABLE IF NOT EXISTS `beneficial_insect` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NULL,
  `scientific_name` VARCHAR(100) NULL,
  `image_url` VARCHAR(2000) NULL,
  `description` TEXT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS gardener@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'gardener'@'localhost' IDENTIFIED BY 'gardener';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'gardener'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `beneficial_insect`
-- -----------------------------------------------------
START TRANSACTION;
USE `goodbugsdb`;
INSERT INTO `beneficial_insect` (`id`, `name`, `scientific_name`, `image_url`, `description`) VALUES (1, 'Praying Mantis', 'Mantis religiosa', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Mantis_%28European%29.jpg/500px-Mantis_%28European%29.jpg', 'Mantises are distributed worldwide in temperate and tropical habitats. They have triangular heads with bulging eyes supported on flexible necks. Their elongated bodies may or may not have wings, but all Mantodea have forelegs that are greatly enlarged and adapted for catching and gripping prey; their upright posture, while remaining stationary with forearms folded, has led to the common name praying mantis.');
INSERT INTO `beneficial_insect` (`id`, `name`, `scientific_name`, `image_url`, `description`) VALUES (2, 'Ladybug', 'Coccinella septempunctata', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Coccinella-septempunctata-15-fws.jpg/500px-Coccinella-septempunctata-15-fws.jpg', 'Most coccinellid species are carnivorous predators, preying on insects such as aphids and scale insects. Other species are known to consume non-animal matter, including plants and fungi. They are promiscuous breeders, reproducing in spring and summer in temperate regions and during the wet season in tropical regions. Many predatory species lay their eggs near colonies of prey, providing their larvae with a food source. Like most insects, they develop from larva to pupa to adult. Temperate species hibernate and diapause during the winter; tropical species are dormant during the dry season. Coccinellids migrate between dormancy and breeding sites.');
INSERT INTO `beneficial_insect` (`id`, `name`, `scientific_name`, `image_url`, `description`) VALUES (3, 'Firefly', 'Photuris lucicrescens', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/52/Photuris_lucicrescens.jpg/500px-Photuris_lucicrescens.jpg', 'Fireflies are found in temperate and tropical climates. Many live in marshes or in wet, wooded areas where their larvae have abundant sources of food. Although all known fireflies glow as larvae, only some species produce light in their adult stage, and the location of the light organ varies among species and between sexes of the same species. Fireflies have attracted human attention since classical antiquity; their presence has been taken to signify a wide variety of conditions in different cultures and is especially appreciated aesthetically in Japan, where parks are set aside for this specific purpose.');
INSERT INTO `beneficial_insect` (`id`, `name`, `scientific_name`, `image_url`, `description`) VALUES (4, 'Green Lacewing', 'Chrysoperla carnea', 'https://cdn.buglife.org.uk/2019/07/Common-green-lacewing-640x420.jpg', 'Green lacewing larvae have somewhat of a very large appetite. They feed on a variety of smaller invertebrates such as aphids, insect eggs, caterpillars and scale insects, piercing them with their long sharp mouth parts and sucking out their body fluids. Due to their ferocious , carnivorous appetite the larvae have earnt the title of ‘aphid lions’, eating over 200 aphids and other creepy crawlies per week! Proper little predators! However, when the larvae mature into adults, they lose their carnivorous ways and adopt a more refined diet, feeding off nectar, pollen and honeydew.');
INSERT INTO `beneficial_insect` (`id`, `name`, `scientific_name`, `image_url`, `description`) VALUES (5, 'European Honey Bee', 'Apis mellifera', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Apis_mellifera_Western_honey_bee.jpg/500px-Apis_mellifera_Western_honey_bee.jpg', 'Like all honey bee species, the western honey bee is eusocial, creating colonies with a single fertile female (or \"queen\"), many normally non-reproductive females or \"workers\", and a small proportion of fertile males or \"drones\". Individual colonies can house tens of thousands of bees. Colony activities are organized by complex communication between individuals, through both pheromones and the waggle dance.');
INSERT INTO `beneficial_insect` (`id`, `name`, `scientific_name`, `image_url`, `description`) VALUES (6, 'Monarch Butterfly', 'Danaus plexippus', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Monarch_Butterfly_Danaus_plexippus_Male_2664px.jpg/500px-Monarch_Butterfly_Danaus_plexippus_Male_2664px.jpg', 'The eastern North American monarch population is notable for its annual southward late-summer/autumn instinctive migration from the northern and central United States and southern Canada to Florida and Mexico.[6] During the fall migration, monarchs cover thousands of miles, with a corresponding multigenerational return north in spring. The western North American population of monarchs west of the Rocky Mountains often migrates to sites in southern California, but have been found in overwintering Mexican sites, as well.');

COMMIT;

