-- MySQL Script generated by MySQL Workbench
-- Thu Oct 10 11:54:28 2019
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema apen
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `apen` ;

-- -----------------------------------------------------
-- Schema apen
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `apen` DEFAULT CHARACTER SET utf8 ;
USE `apen` ;

-- -----------------------------------------------------
-- Table `apen`.`aap`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `apen`.`aap` ;

CREATE TABLE IF NOT EXISTS `apen`.`aap` (
  `idaap` INT NOT NULL,
  `soort` VARCHAR(45) NULL,
  PRIMARY KEY (`idaap`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `apen`.`leefgebied`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `apen`.`leefgebied` ;

CREATE TABLE IF NOT EXISTS `apen`.`leefgebied` (
  `idleefgebied` INT NOT NULL,
  `omschrijving` VARCHAR(45) NULL,
  PRIMARY KEY (`idleefgebied`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `apen`.`aap_has_leefgebied`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `apen`.`aap_has_leefgebied` ;

CREATE TABLE IF NOT EXISTS `apen`.`aap_has_leefgebied` (
  `idaap` INT NOT NULL,
  `idleefgebied` INT NOT NULL,
  PRIMARY KEY (`idaap`, `idleefgebied`),
  INDEX `fk_aap_has_leefgebied_leefgebied1_idx` (`idleefgebied` ASC),
  INDEX `fk_aap_has_leefgebied_aap_idx` (`idaap` ASC),
  CONSTRAINT `fk_aap_has_leefgebied_aap`
    FOREIGN KEY (`idaap`)
    REFERENCES `apen`.`aap` (`idaap`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_aap_has_leefgebied_leefgebied1`
    FOREIGN KEY (`idleefgebied`)
    REFERENCES `apen`.`leefgebied` (`idleefgebied`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `apen`.`aap`
-- -----------------------------------------------------
START TRANSACTION;
USE `apen`;
INSERT INTO `apen`.`aap` (`idaap`, `soort`) VALUES (1, 'Baviaan');
INSERT INTO `apen`.`aap` (`idaap`, `soort`) VALUES (2, 'Guereza');
INSERT INTO `apen`.`aap` (`idaap`, `soort`) VALUES (3, 'Langoer');
INSERT INTO `apen`.`aap` (`idaap`, `soort`) VALUES (4, 'Neusaap');
INSERT INTO `apen`.`aap` (`idaap`, `soort`) VALUES (5, 'Tamarin');
INSERT INTO `apen`.`aap` (`idaap`, `soort`) VALUES (6, 'Brulaap');
INSERT INTO `apen`.`aap` (`idaap`, `soort`) VALUES (7, 'Halfaap');
INSERT INTO `apen`.`aap` (`idaap`, `soort`) VALUES (8, 'Mandril');
INSERT INTO `apen`.`aap` (`idaap`, `soort`) VALUES (9, 'Oeakari');
INSERT INTO `apen`.`aap` (`idaap`, `soort`) VALUES (10, 'Faunaap');
INSERT INTO `apen`.`aap` (`idaap`, `soort`) VALUES (11, 'Hoelman');
INSERT INTO `apen`.`aap` (`idaap`, `soort`) VALUES (12, 'Meerkat');
INSERT INTO `apen`.`aap` (`idaap`, `soort`) VALUES (13, 'Oormaki');
INSERT INTO `apen`.`aap` (`idaap`, `soort`) VALUES (14, 'Gorilla');
INSERT INTO `apen`.`aap` (`idaap`, `soort`) VALUES (15, 'Kuifaap');
INSERT INTO `apen`.`aap` (`idaap`, `soort`) VALUES (16, 'Mensaap');
INSERT INTO `apen`.`aap` (`idaap`, `soort`) VALUES (17, 'Spinaap');

COMMIT;


-- -----------------------------------------------------
-- Data for table `apen`.`leefgebied`
-- -----------------------------------------------------
START TRANSACTION;
USE `apen`;
INSERT INTO `apen`.`leefgebied` (`idleefgebied`, `omschrijving`) VALUES (1, 'Europa');
INSERT INTO `apen`.`leefgebied` (`idleefgebied`, `omschrijving`) VALUES (2, 'West-Azie');
INSERT INTO `apen`.`leefgebied` (`idleefgebied`, `omschrijving`) VALUES (3, 'Oost-Azie');
INSERT INTO `apen`.`leefgebied` (`idleefgebied`, `omschrijving`) VALUES (4, 'Zuid-Azie');
INSERT INTO `apen`.`leefgebied` (`idleefgebied`, `omschrijving`) VALUES (5, 'Noord-Azie');
INSERT INTO `apen`.`leefgebied` (`idleefgebied`, `omschrijving`) VALUES (6, 'Noord-Amerika');
INSERT INTO `apen`.`leefgebied` (`idleefgebied`, `omschrijving`) VALUES (7, 'Zuid-Amerika');
INSERT INTO `apen`.`leefgebied` (`idleefgebied`, `omschrijving`) VALUES (8, 'Noord-Afrika');
INSERT INTO `apen`.`leefgebied` (`idleefgebied`, `omschrijving`) VALUES (9, 'Zuid-Afrika');
INSERT INTO `apen`.`leefgebied` (`idleefgebied`, `omschrijving`) VALUES (10, 'Midden-Afrika');

COMMIT;


-- -----------------------------------------------------
-- Data for table `apen`.`aap_has_leefgebied`
-- -----------------------------------------------------
START TRANSACTION;
USE `apen`;
INSERT INTO `apen`.`aap_has_leefgebied` (`idaap`, `idleefgebied`) VALUES (1, 10);
INSERT INTO `apen`.`aap_has_leefgebied` (`idaap`, `idleefgebied`) VALUES (1, 8);
INSERT INTO `apen`.`aap_has_leefgebied` (`idaap`, `idleefgebied`) VALUES (2, 10);
INSERT INTO `apen`.`aap_has_leefgebied` (`idaap`, `idleefgebied`) VALUES (2, 8);
INSERT INTO `apen`.`aap_has_leefgebied` (`idaap`, `idleefgebied`) VALUES (2, 9);
INSERT INTO `apen`.`aap_has_leefgebied` (`idaap`, `idleefgebied`) VALUES (3, 10);
INSERT INTO `apen`.`aap_has_leefgebied` (`idaap`, `idleefgebied`) VALUES (4, 4);
INSERT INTO `apen`.`aap_has_leefgebied` (`idaap`, `idleefgebied`) VALUES (5, 7);
INSERT INTO `apen`.`aap_has_leefgebied` (`idaap`, `idleefgebied`) VALUES (6, 6);
INSERT INTO `apen`.`aap_has_leefgebied` (`idaap`, `idleefgebied`) VALUES (6, 7);
INSERT INTO `apen`.`aap_has_leefgebied` (`idaap`, `idleefgebied`) VALUES (7, 6);
INSERT INTO `apen`.`aap_has_leefgebied` (`idaap`, `idleefgebied`) VALUES (7, 1);
INSERT INTO `apen`.`aap_has_leefgebied` (`idaap`, `idleefgebied`) VALUES (7, 5);
INSERT INTO `apen`.`aap_has_leefgebied` (`idaap`, `idleefgebied`) VALUES (8, 10);
INSERT INTO `apen`.`aap_has_leefgebied` (`idaap`, `idleefgebied`) VALUES (9, 9);
INSERT INTO `apen`.`aap_has_leefgebied` (`idaap`, `idleefgebied`) VALUES (10, 10);
INSERT INTO `apen`.`aap_has_leefgebied` (`idaap`, `idleefgebied`) VALUES (11, 5);
INSERT INTO `apen`.`aap_has_leefgebied` (`idaap`, `idleefgebied`) VALUES (11, 4);
INSERT INTO `apen`.`aap_has_leefgebied` (`idaap`, `idleefgebied`) VALUES (12, 1);
INSERT INTO `apen`.`aap_has_leefgebied` (`idaap`, `idleefgebied`) VALUES (12, 2);
INSERT INTO `apen`.`aap_has_leefgebied` (`idaap`, `idleefgebied`) VALUES (12, 3);
INSERT INTO `apen`.`aap_has_leefgebied` (`idaap`, `idleefgebied`) VALUES (12, 5);
INSERT INTO `apen`.`aap_has_leefgebied` (`idaap`, `idleefgebied`) VALUES (12, 7);
INSERT INTO `apen`.`aap_has_leefgebied` (`idaap`, `idleefgebied`) VALUES (12, 10);
INSERT INTO `apen`.`aap_has_leefgebied` (`idaap`, `idleefgebied`) VALUES (13, 10);
INSERT INTO `apen`.`aap_has_leefgebied` (`idaap`, `idleefgebied`) VALUES (14, 10);
INSERT INTO `apen`.`aap_has_leefgebied` (`idaap`, `idleefgebied`) VALUES (15, 10);
INSERT INTO `apen`.`aap_has_leefgebied` (`idaap`, `idleefgebied`) VALUES (15, 1);
INSERT INTO `apen`.`aap_has_leefgebied` (`idaap`, `idleefgebied`) VALUES (16, 3);
INSERT INTO `apen`.`aap_has_leefgebied` (`idaap`, `idleefgebied`) VALUES (16, 4);
INSERT INTO `apen`.`aap_has_leefgebied` (`idaap`, `idleefgebied`) VALUES (16, 7);
INSERT INTO `apen`.`aap_has_leefgebied` (`idaap`, `idleefgebied`) VALUES (16, 8);
INSERT INTO `apen`.`aap_has_leefgebied` (`idaap`, `idleefgebied`) VALUES (17, 7);

COMMIT;