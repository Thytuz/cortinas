-- MySQL Script generated by MySQL Workbench
-- Tue Dec 12 07:34:17 2017
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema DiamanteCortinas
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema DiamanteCortinas
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `DiamanteCortinas` DEFAULT CHARACTER SET utf8 ;
USE `DiamanteCortinas` ;

-- -----------------------------------------------------
-- Table `DiamanteCortinas`.`clientes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DiamanteCortinas`.`clientes` ;

CREATE TABLE IF NOT EXISTS `DiamanteCortinas`.`clientes` (
  `clieId` INT NOT NULL AUTO_INCREMENT,
  `clieNome` VARCHAR(100) NOT NULL,
  `clieCPF` VARCHAR(11) NULL,
  `clieTelefone` VARCHAR(45) NULL,
  `clieEmail` VARCHAR(100) NOT NULL,
  `clieSenha` VARCHAR(50) NOT NULL,
  `clieEndereco` VARCHAR(200) NULL,
  PRIMARY KEY (`clieId`),
  UNIQUE INDEX `clieCPF_UNIQUE` (`clieCPF` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DiamanteCortinas`.`produtos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DiamanteCortinas`.`produtos` ;

CREATE TABLE IF NOT EXISTS `DiamanteCortinas`.`produtos` (
  `prodId` INT NOT NULL AUTO_INCREMENT,
  `prodCategoria` VARCHAR(100) NOT NULL,
  `prodNome` VARCHAR(200) NOT NULL,
  `prodCor` VARCHAR(45) NOT NULL,
  `prodMarca` VARCHAR(50) NOT NULL,
  `prodPreco` DOUBLE NOT NULL,
  `prodTamanho` VARCHAR(45) NOT NULL,
  `prodMaterial` VARCHAR(50) NOT NULL,
  `prodDescricao` VARCHAR(300) NOT NULL,
  PRIMARY KEY (`prodId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DiamanteCortinas`.`fotos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DiamanteCortinas`.`fotos` ;

CREATE TABLE IF NOT EXISTS `DiamanteCortinas`.`fotos` (
  `fotoId` INT NOT NULL AUTO_INCREMENT,
  `fotoSrc` VARCHAR(300) NOT NULL,
  `fotoProdId` INT NOT NULL,
  PRIMARY KEY (`fotoId`, `fotoProdId`),
  INDEX `fk_fotos_produtos1_idx` (`fotoProdId` ASC),
  CONSTRAINT `fk_fotos_produtos1`
    FOREIGN KEY (`fotoProdId`)
    REFERENCES `DiamanteCortinas`.`produtos` (`prodId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DiamanteCortinas`.`usuarios`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DiamanteCortinas`.`usuarios` ;

CREATE TABLE IF NOT EXISTS `DiamanteCortinas`.`usuarios` (
  `usuaId` INT NOT NULL AUTO_INCREMENT,
  `usuaNome` VARCHAR(200) NOT NULL,
  `usuaEmail` VARCHAR(50) NOT NULL,
  `usuaSenha` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`usuaId`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
