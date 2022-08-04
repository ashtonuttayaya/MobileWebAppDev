-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema aru19b
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `aru19b` ;

-- -----------------------------------------------------
-- Schema aru19b
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `aru19b` DEFAULT CHARACTER SET utf8 ;
SHOW WARNINGS;
USE `aru19b` ;

-- -----------------------------------------------------
-- Table `aru19b`.`petstore`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `aru19b`.`petstore` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `aru19b`.`petstore` (
  `pst_id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `pst_name` VARCHAR(30) NOT NULL,
  `pst_street` VARCHAR(30) NOT NULL,
  `pst_city` VARCHAR(30) NOT NULL,
  `pst_state` CHAR(2) NOT NULL,
  `pst_zip` CHAR(9) NOT NULL,
  `pst_phone` BIGINT UNSIGNED NOT NULL,
  `pst_email` VARCHAR(100) NOT NULL,
  `pst_url` VARCHAR(100) NOT NULL,
  `pst_ytd_sales` DECIMAL(10,2) UNSIGNED NOT NULL,
  `pst_notes` VARCHAR(255) NULL,
  PRIMARY KEY (`pst_id`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `aru19b`.`customer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `aru19b`.`customer` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `aru19b`.`customer` (
  `cus_id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `cus_fname` VARCHAR(15) NOT NULL,
  `cus_lname` VARCHAR(30) NOT NULL,
  `cus_street` VARCHAR(30) NOT NULL,
  `cus_city` VARCHAR(30) NOT NULL,
  `cus_state` CHAR(2) NOT NULL,
  `cus_zip` INT NOT NULL,
  `cus_phone` BIGINT UNSIGNED NOT NULL,
  `cus_email` VARCHAR(100) NOT NULL,
  `cus_balance` DECIMAL(8,2) UNSIGNED NOT NULL,
  `cus_total_sales` DECIMAL(8,2) UNSIGNED NOT NULL,
  `cus_notes` VARCHAR(255) NULL,
  PRIMARY KEY (`cus_id`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `aru19b`.`pet`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `aru19b`.`pet` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `aru19b`.`pet` (
  `pet_id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `pst_id` SMALLINT UNSIGNED NOT NULL,
  `cus_id` SMALLINT UNSIGNED NULL,
  `pet_type` VARCHAR(45) NOT NULL,
  `pet_sex` ENUM('m', 'f') NOT NULL,
  `pet_cost` DECIMAL(6,2) UNSIGNED NOT NULL,
  `pet_price` DECIMAL(6,2) UNSIGNED NOT NULL,
  `pet_age` TINYINT UNSIGNED NOT NULL,
  `pet_color` VARCHAR(30) NOT NULL,
  `pet_sale_date` DATE NULL,
  `pet_vaccine` ENUM('y', 'n') NOT NULL,
  `pet_neuter` ENUM('y', 'n') NOT NULL,
  `pet_notes` VARCHAR(255) NULL,
  PRIMARY KEY (`pet_id`),
  INDEX `fk_pet_petstore_idx` (`pst_id` ASC) VISIBLE,
  INDEX `fk_pet_customer1_idx` (`cus_id` ASC) VISIBLE,
  CONSTRAINT `fk_pet_petstore`
    FOREIGN KEY (`pst_id`)
    REFERENCES `aru19b`.`petstore` (`pst_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_pet_customer1`
    FOREIGN KEY (`cus_id`)
    REFERENCES `aru19b`.`customer` (`cus_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

SHOW WARNINGS;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `aru19b`.`petstore`
-- -----------------------------------------------------
START TRANSACTION;
USE `aru19b`;
INSERT INTO `aru19b`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (DEFAULT, 'Petco', '123 circle ave', 'Olathe', 'IL', '405474614', 9430238475, 'petco.com', '345810', 1000, 'in, cursus et,');
INSERT INTO `aru19b`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (DEFAULT, 'Petsmart', '123 bronx ave', 'Sterling Heights', 'AZ', '950819760', 1038495587, 'petsmart.com', '500650', 2000, 'nibh. Quisque nonummy');
INSERT INTO `aru19b`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (DEFAULT, 'Doghouse', '123 applegrove way', 'Columbia', 'MN', '906409188', 1938445632, 'doghouse.com', '715929', 3000, 'dis parturient montes,');
INSERT INTO `aru19b`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (DEFAULT, 'CatsRUs', '123 bottomroad', 'Lafayette', 'MO', '444461962', 9984722347, 'catsrus.com', '473487', 4000, 'massa. Mauris');
INSERT INTO `aru19b`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (DEFAULT, 'Dogs4U', '123 reagency', 'Salem', 'MS', '560095789', 1033857463, 'd4u.com', '403705', 5000, 'semper cursus. Integer');
INSERT INTO `aru19b`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (DEFAULT, 'PetsRUS', '123 causeway', 'Montgomery', 'KY', '430180008', 11022342113, 'petsrus.com', '189609', 6000, 'sed consequat');
INSERT INTO `aru19b`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (DEFAULT, 'Kingsport Animals', '123 mira vista', 'Austin', 'OK', '207516179', 1778799067, 'kingsport.com', '438288', 7000, 'accumsan neque et');
INSERT INTO `aru19b`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (DEFAULT, 'Lizard Shack', '123 boulevard', 'Iowa City', 'TN', '312826880', 3345466546, 'lshack.com', '852775', 8000, 'habitant morbi tristique');
INSERT INTO `aru19b`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (DEFAULT, 'Phoenix Birds', '123 pinellas', 'Fairbanks', 'MO', '924120312', 1035559864, 'pb.com', '20549', 9000, 'scelerisque');
INSERT INTO `aru19b`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (DEFAULT, 'Banfield', '123 gaines st', 'Spokane', 'AL', '624097256', 1023342145, 'banfield.com', '620406', 10000, 'est tempor');

COMMIT;


-- -----------------------------------------------------
-- Data for table `aru19b`.`customer`
-- -----------------------------------------------------
START TRANSACTION;
USE `aru19b`;
INSERT INTO `aru19b`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (DEFAULT, 'Meredith', 'Pierce', '8560 Et, Avenue', 'Des Moines', 'NE', 532834654, 5236655131, 'mpierce@gmail.com', 359989, 400000, 'Suspendisse aliquet, sem');
INSERT INTO `aru19b`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (DEFAULT, 'Jason', 'Conner', 'Ap #349-5462 Fermentum Ave', 'Fort Smith', 'MD', 596833863, 3815725387, 'jconner@gmail.com', 681007, 684710, 'amet risus.');
INSERT INTO `aru19b`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (DEFAULT, 'Joelle', 'Hahn', '401-8962 Nec, St.', 'Meridian', 'MT', 302365616, 6589781855, 'jhahn@gmail.com', 342213, 641854, 'mi.');
INSERT INTO `aru19b`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (DEFAULT, 'Craig', 'Dean', 'Ap #554-2343 Dolor St.', 'North Las Vegas', 'MN', 753299045, 6572626694, 'cdean@gmail.com', 883448, 426566, 'bibendum fermentum metus.');
INSERT INTO `aru19b`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (DEFAULT, 'Desirae', 'Landry', '597-4726 Eros. Street', 'Gresham', 'DE', 695502668, 9482343227, 'Ddlandry@gmail.com', 898753, 894500, 'ipsum dolor sit');
INSERT INTO `aru19b`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (DEFAULT, 'Benjamin', 'Weeks', 'Ap #808-2790 Lorem Street', 'Miami', 'WY', 806287302, 4626426673, 'bweeks@gmail.com', 511961, 448126, 'Duis gravida.');
INSERT INTO `aru19b`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (DEFAULT, 'Amela', 'Guy', '880-4321 Luctus St.', 'Casper', 'ME', 540642373, 3812222444, 'aguy@gmail.com', 56770, 266717, 'ornare tortor at');
INSERT INTO `aru19b`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (DEFAULT, 'Tatiana', 'Hill', 'Ap #695-6708 Pharetra. St.', 'Norman', 'MS', 774747390, 6478585284, 'thill@gmail.com', 606849, 410538, 'Donec non justo.');
INSERT INTO `aru19b`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (DEFAULT, 'Oleg', 'Monroe', 'Ap #292-6101 Phasellus Street', 'Birmingham', 'NV', 299834975, 2678742748, 'omonroe@gmail.com', 250506, 364313, 'faucibus');
INSERT INTO `aru19b`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (DEFAULT, 'Charles', 'Russo', 'Ap #377-4387 Sed, Avenue', 'Sandy', 'IL', 972389397, 2574363255, 'crusso@gmail.com', 19343, 573330, 'In faucibus. Morbi vehicula.');

COMMIT;


-- -----------------------------------------------------
-- Data for table `aru19b`.`pet`
-- -----------------------------------------------------
START TRANSACTION;
USE `aru19b`;
INSERT INTO `aru19b`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 1, 1, 'Fish', 'f', 747, 2323, 4, 'yellow', '2021-07-11', 'y', 'n', 'at pede. Cras');
INSERT INTO `aru19b`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 2, 2, 'Bird', 'm', 764, 2949, 1, 'orange', '2021-07-08', 'n', 'n', 'natoque penatibus et');
INSERT INTO `aru19b`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 3, 3, 'Cat', 'f', 426, 2269, 7, 'red', '2022-03-21', 'y', 'n', 'dolor quam,');
INSERT INTO `aru19b`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 4, 4, 'Lizard', 'f', 447, 1445, 14, 'green', '2022-11-07', 'n', 'y', 'fringilla cursus purus.');
INSERT INTO `aru19b`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 5, 5, 'Fish', 'm', 960, 2508, 13, 'green', '2022-11-27', 'n', 'y', 'arcu eu odio');
INSERT INTO `aru19b`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 6, 6, 'Fish', 'f', 863, 1835, 5, 'green', '2021-05-30', 'n', 'y', 'at, libero.');
INSERT INTO `aru19b`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 7, 7, 'Cat', 'f', 623, 2380, 5, 'blue', '2021-04-12', 'n', 'n', 'vestibulum lorem, sit');
INSERT INTO `aru19b`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 8, 8, 'Bird', 'm', 428, 2276, 1, 'blue', '2022-03-08', 'y', 'n', 'risus. Quisque libero');
INSERT INTO `aru19b`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 9, 9, 'Cat', 'f', 984, 2594, 13, 'orange', '2021-06-11', 'y', 'n', 'tincidunt aliquam');
INSERT INTO `aru19b`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 10, 10, 'Cat', 'f', 384, 2306, 10, 'violet', '2021-06-05', 'y', 'n', 'tincidunt dui');

COMMIT;

