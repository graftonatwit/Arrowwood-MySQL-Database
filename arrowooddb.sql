-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema arrowooddb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema arrowooddb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `arrowooddb` DEFAULT CHARACTER SET utf8 ;
USE `arrowooddb` ;

-- -----------------------------------------------------
-- Table `arrowooddb`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `arrowooddb`.`customer` (
  `idcustomer` INT NOT NULL,
  `first_name` VARCHAR(50) NULL,
  `last_name` VARCHAR(50) NULL,
  `phone_number` VARCHAR(20) NULL,
  `email` VARCHAR(50) NULL,
  `address` VARCHAR(100) NULL,
  PRIMARY KEY (`idcustomer`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `arrowooddb`.`service`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `arrowooddb`.`service` (
  `idservice` INT NOT NULL,
  `service_type` VARCHAR(50) NULL,
  `scheduled_date` DATETIME NULL,
  `assigned_staff` VARCHAR(50) NULL,
  `customer_idcustomer` INT NOT NULL,
  PRIMARY KEY (`idservice`),
  INDEX `fk_service_customer_idx` (`customer_idcustomer` ASC) VISIBLE,
  CONSTRAINT `fk_service_customer`
    FOREIGN KEY (`customer_idcustomer`)
    REFERENCES `arrowooddb`.`customer` (`idcustomer`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `arrowooddb`.`staff`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `arrowooddb`.`staff` (
  `staff_id` INT NOT NULL,
  `first_name` VARCHAR(255) NULL,
  `last_name` VARCHAR(255) NULL,
  `staffcol` VARCHAR(45) NULL,
  `role` VARCHAR(255) NULL,
  `staffcol1` VARCHAR(45) NULL,
  PRIMARY KEY (`staff_id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
