CREATE TABLE IF NOT EXISTS `YShip`.`TB_MEMBER` (
  `PK_MEMBER_KEY` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `MEMBER_E_MAIL` VARCHAR(255) NOT NULL,
  `MEMBER_ID` VARCHAR(45) NULL,
  `MEMBER_PW` VARCHAR(45) NOT NULL,
  `MEMBER_FIRST_NAME` VARCHAR(20) NOT NULL,
  `MEMBER_LAST_NAME` VARCHAR(20) NOT NULL,
  `MEMBER_FIRST_NAME_EN` VARCHAR(20) NULL,
  `MEMBER_LAST_NAME_EN` VARCHAR(20) NULL,
  `MEMBER_BIRTH_DT` DATE NULL,
  `MEMBER_ZIPCODE` VARCHAR(10) NULL,
  `MEMBER_ADDR1` VARCHAR(255) NULL,
  `MEMBER_ADDR2` VARCHAR(255) NULL,
  `MEMBER_GENDER` VARCHAR(1) NULL,
  `MEMBER_CRT_DT` DATETIME NOT NULL DEFAULT NOW(),
  PRIMARY KEY (`PK_MEMBER_KEY`))
ENGINE = InnoDB;
ALTER TABLE TB_MEMBER AUTO_INCREMENT = 10001;

CREATE TABLE IF NOT EXISTS `YShip`.`TB_COUNTRY_ADDR_BASE` (
  `PK_COUNTRY_KEY` INT UNSIGNED NOT NULL,
  `COUNTRY_CODE` VARCHAR(10) NOT NULL,
  `COUNTRY_BASE_ADDR1` VARCHAR(255) NOT NULL,
  `COUNTRY_BASE_ADDR2` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`PK_COUNTRY_KEY`))
ENGINE = InnoDB;

INSERT INTO TB_COUNTRY_ADDR_BASE VALUES(10001,'US','S. Broadway st. Gardena','CA 90248-2210');
INSERT INTO TB_COUNTRY_ADDR_BASE VALUES(20001,'DE','KOCEN EURO GmbH Industriestrasse','Steinbach, 61449');
INSERT INTO TB_COUNTRY_ADDR_BASE VALUES(30001,'TW','台北市敦化南路二段39號7B','10號5樓');
INSERT INTO TB_COUNTRY_ADDR_BASE VALUES(40001,'CN','上海市闵行区虹桥镇合川路','3051号9号');
INSERT INTO TB_COUNTRY_ADDR_BASE VALUES(50001,'KR','서울 금천구 가산디지털1로','B101호');

CREATE TABLE IF NOT EXISTS `YShip`.`TB_SHIPPING_INFO` (
  `FR_MEMBER_SHIPPING_KEY` INT UNSIGNED NOT NULL,
  `PK_SHIPPING_KEY` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `SHIPPING_ORDER_NUM` VARCHAR(100) NOT NULL,
  `SHIPPING_URL` VARCHAR(255) NULL,
  `SHIPPING_NAME` VARCHAR(45) NOT NULL,
  `SHIPPING_IMG_NAME` VARCHAR(255) NULL,
  `SHIPPING_IMG_STR_NAME` VARCHAR(255) NULL,
  `SHIPPING_VALUE` INT UNSIGNED NOT NULL,
  `SHIPPING_QTY` INT UNSIGNED NOT NULL,
  `SHIPPING_TOTAL_VALUE` INT UNSIGNED NOT NULL,
  `SHIPPING_CRT_DT` DATETIME NOT NULL DEFAULT NOW(),
  INDEX `FR_MEMBER_KEY_idx` (`FR_MEMBER_SHIPPING_KEY` ASC),
  PRIMARY KEY (`PK_SHIPPING_KEY`),
  CONSTRAINT `FR_MEMBER_SHIPPING_KEY`
    FOREIGN KEY (`FR_MEMBER_SHIPPING_KEY`)
    REFERENCES `YShip`.`TB_MEMBER` (`PK_MEMBER_KEY`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `YShip`.`TB_MEMBER_POB` (
  `FR_MEM_POB_KEY` INT UNSIGNED NOT NULL,
  `FR_COUNTRY_POB_KEY` INT UNSIGNED NOT NULL,
  `MEMBER_POB` VARCHAR(45) NOT NULL,
  INDEX `FR_MEMBER_KEY_idx` (`FR_MEM_POB_KEY` ASC),
  INDEX `FR_COUNTRY_KEY_idx` (`FR_COUNTRY_POB_KEY` ASC),
  CONSTRAINT `FR_MEM_POB_KEY`
    FOREIGN KEY (`FR_MEM_POB_KEY`)
    REFERENCES `YShip`.`TB_MEMBER` (`PK_MEMBER_KEY`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `FR_COUNTRY_POB_KEY`
    FOREIGN KEY (`FR_COUNTRY_POB_KEY`)
    REFERENCES `YShip`.`TB_COUNTRY_ADDR_BASE` (`PK_COUNTRY_KEY`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;