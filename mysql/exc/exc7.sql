CREATE TABLE IF NOT EXISTS `codeGroup` (
  `seq` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `code` (
  `code` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NULL,
  `codeGroup_seq` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`code`, `codeGroup_seq`),
  INDEX `fk_code_codeGroup1_idx` (`codeGroup_seq` ASC) VISIBLE,
  CONSTRAINT `fk_code_codeGroup1`
    FOREIGN KEY (`codeGroup_seq`)
    REFERENCES `codeGroup` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


insert into codeGroup (
seq
,name
) values (
'infra002'
,'통신사'
);

select * from codegroup;
select * from code;

insert into code (
code
,name
,codeGroup_seq
) values (
'3'
,'lg'
,'infra002'
);

select * 
from codegroup a
left join code b on b.codeGroup_seq = a.seq;