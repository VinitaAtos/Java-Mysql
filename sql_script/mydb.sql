-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema ticketingsystem
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ticketingsystem
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ticketingsystem` DEFAULT CHARACTER SET utf8 ;
USE `ticketingsystem` ;

-- -----------------------------------------------------
-- Table `ticketingsystem`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ticketingsystem`.`user` (
  `username` VARCHAR(50) NULL DEFAULT NULL,
  `password` VARCHAR(50) NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

insert into ticketingsystem.user values ('vinita', 'vinita');