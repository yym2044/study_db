CREATE TABLE IF NOT EXISTS `ifr_member` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `adminNY` TINYINT NULL,
  `sleepNy` TINYINT NULL,
  `name` VARCHAR(45) NULL,
  `id` VARCHAR(45) NULL,
  `password` VARCHAR(100) NULL,
  `dob` DATE NULL,
  `pwQuestionCd` TINYINT NULL,
  `pwAnswer` VARCHAR(45) NULL,
  `genderCd` TINYINT NULL,
  `marriageNy` TINYINT NULL,
  `childNy` TINYINT NULL,
  `anniversary` DATE NULL,
  `expirationPeriod` INT NULL,
  `recommender` VARCHAR(45) NULL,
  `mobileMarketing` TINYINT NULL,
  `emailMarketing` TINYINT NULL,
  `jobCd` TINYINT NULL,
  `nationalityCd` TINYINT NULL,
  `favoriteColor` VARCHAR(45) NULL,
  `introduce` VARCHAR(255) NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB;



desc ifr_member;

insert into ifr_member (
	adminNY
    ,sleepNy
    ,name
    ,id
    ,password
	,dob
    ,pwQuestionCd
    ,pwAnswer
    ,genderCd
    ,marriageNy
    ,childNy
--  ,anniversary
    ,expirationPeriod
    ,recommender
    ,mobileMarketing
    ,emailMarketing
    ,jobCd
    ,nationalityCd
    ,favoriteColor
    ,introduce
) values (
	1
    ,1
    ,'yym'
    ,'yym2044'
    ,'password'
    ,'1996-06-07'
    ,1
    ,'정읍'
    ,1
    ,0
    ,0
--  ,anniversary
    ,10
    ,'hyoon'
    ,1
    ,1
    ,1
    ,1
    ,'Green'
    ,'Hi, everyone'
);

delete from ifr_member where seq = 1;

select * from ifr_member;

CREATE TABLE IF NOT EXISTS `ifr_codeGroup` (
  `seq` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `ifr_code` (
  `seq` INT NOT NULL,
  `ifr_codeGroup_seq` INT NOT NULL,
  `gender` VARCHAR(45) NULL,
  `nation` VARCHAR(45) NULL,
  `job` VARCHAR(45) NULL,
  `pwQuestion` VARCHAR(45) NULL,
  `snsType1` VARCHAR(45) NULL,
  `snsType2` VARCHAR(45) NULL,
  `hobby` VARCHAR(45) NULL,
  `phoneType` VARCHAR(45) NULL,
  `device` VARCHAR(45) NULL,
  `telecom` VARCHAR(45) NULL,
  `addressType` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`, `ifr_codeGroup_seq`),
  INDEX `fk_ifr_code_ifr_codeGroup1_idx` (`ifr_codeGroup_seq` ASC) VISIBLE,
  CONSTRAINT `fk_ifr_code_ifr_codeGroup1`
    FOREIGN KEY (`ifr_codeGroup_seq`)
    REFERENCES `ifr_codeGroup` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

desc ifr_codegroup;
desc ifr_code;

insert into ifr_code (
	ifr_codeGroup_seq
    ,seq
    ,gender
) values (
	11
    ,3
    ,'배달대행지'
);



select * from ifr_code;


