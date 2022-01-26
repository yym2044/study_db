use world;

CREATE TABLE IF NOT EXISTS `book4` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`no`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `review4` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment` VARCHAR(45) NULL,
  `book4_no` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`no`),
  INDEX `fk_review_book4_idx` (`book4_no` ASC) VISIBLE,
  CONSTRAINT `fk_review_book4`
    FOREIGN KEY (`book4_no`)
    REFERENCES `book4` (`no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

desc book4;
desc review;

insert into book4 (
	name
) values (
	'php'
);

select * from book4;
select * from review4;

insert into review4 (
comment
,book4_no -- foreign key라 필수로 들어가야함
)
values (
'우와 책 재미있습니다.'
,6
);