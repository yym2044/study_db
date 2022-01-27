CREATE TABLE IF NOT EXISTS `book6` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`no`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `writer` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`no`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `book6_writer` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `book6_no` INT UNSIGNED NOT NULL,
  `writer_no` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`no`),
  INDEX `fk_book_writer_book6_idx` (`book6_no` ASC) VISIBLE,
  INDEX `fk_book_writer_writer1_idx` (`writer_no` ASC) VISIBLE,
  CONSTRAINT `fk_book_writer_book6`
    FOREIGN KEY (`book6_no`)
    REFERENCES `book6` (`no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_book_writer_writer1`
    FOREIGN KEY (`writer_no`)
    REFERENCES `writer` (`no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

insert into book6 (
name
) values (
'html'
);

insert into writer (
name
) values (
'이미자'
);

insert into book6_writer (
book6_no
,writer_no
) values (
2
,4
);

select * from book6;
select * from writer;
select * from book6_writer;

select 
a.no
,a.name
,b.writer_no
,(select name from writer c where c.no = b.writer_no) as writer_name 
from book6 a left join book6_writer b on a.no = b.book6_no;

select 
a.no
,a.name
,b.writer_no
,c.name
from book6 a
left join book6_writer b on b.book6_no = a.no
left join writer c on c.no = b.writer_no;