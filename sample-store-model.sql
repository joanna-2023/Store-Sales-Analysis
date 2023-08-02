-- MySQL Script generated by MySQL Workbench
-- Sun Jul 30 14:28:11 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema sample-store-db
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `sample-store-db` ;

-- -----------------------------------------------------
-- Schema sample-store-db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `sample-store-db` DEFAULT CHARACTER SET utf8 ;
USE `sample-store-db` ;

-- -----------------------------------------------------
-- Table `sample-store-db`.`sales`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sample-store-db`.`sales` ;

CREATE TABLE IF NOT EXISTS `sample-store-db`.`sales` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `productId` INT NULL,
  `salesPersonId` INT NULL,
  `storeId` INT NULL,
  `date` DATETIME NULL,
  `unitsCount` INT NULL,
  `onlinePurchase` TINYINT NULL,
  `shipmentId` INT NULL,
  `customerId` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sample-store-db`.`stores`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sample-store-db`.`stores` ;

CREATE TABLE IF NOT EXISTS `sample-store-db`.`stores` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `storeId` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `region` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sample-store-db`.`salesPeople`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sample-store-db`.`salesPeople` ;

CREATE TABLE IF NOT EXISTS `sample-store-db`.`salesPeople` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `employeeId` INT NULL,
  `address` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `region` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sample-store-db`.`products`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sample-store-db`.`products` ;

CREATE TABLE IF NOT EXISTS `sample-store-db`.`products` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `productId` INT NULL,
  `name` VARCHAR(45) NULL,
  `description` VARCHAR(45) NULL,
  `cost` DECIMAL(5) NULL,
  `weight` DECIMAL(5) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sample-store-db`.`sales_has_products`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sample-store-db`.`sales_has_products` ;

CREATE TABLE IF NOT EXISTS `sample-store-db`.`sales_has_products` (
  `sales_id` INT NOT NULL,
  `products_id` INT NOT NULL,
  PRIMARY KEY (`sales_id`, `products_id`),
  INDEX `fk_sales_has_products_products1_idx` (`products_id` ASC) VISIBLE,
  INDEX `fk_sales_has_products_sales_idx` (`sales_id` ASC) VISIBLE,
  CONSTRAINT `fk_sales_has_products_sales`
    FOREIGN KEY (`sales_id`)
    REFERENCES `sample-store-db`.`sales` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_sales_has_products_products1`
    FOREIGN KEY (`products_id`)
    REFERENCES `sample-store-db`.`products` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sample-store-db`.`shipment`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sample-store-db`.`shipment` ;

CREATE TABLE IF NOT EXISTS `sample-store-db`.`shipment` (
  `id` INT NOT NULL,
  `customerId` INT NULL,
  `saleId` INT NULL,
  `priority` TINYINT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sample-store-db`.`customers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sample-store-db`.`customers` ;

CREATE TABLE IF NOT EXISTS `sample-store-db`.`customers` (
  `customerId` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `region` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  `zip_postcode` VARCHAR(45) NULL,
  PRIMARY KEY (`customerId`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;