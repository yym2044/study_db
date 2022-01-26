CREATE TABLE IF NOT EXISTS `book5` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`no`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `review5` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment` VARCHAR(45) NULL,
  `book5_no` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`no`, `book5_no`),
  INDEX `fk_review5_book51_idx` (`book5_no` ASC) VISIBLE,
  CONSTRAINT `fk_review5_book51`
    FOREIGN KEY (`book5_no`)
    REFERENCES `book5` (`no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

insert into book5 (
	name
) values (
	'php'
);

select * from book5;

insert into review5 (
comment
,book5_no -- foreign key라 필수로 들어가야함
)
values (
'우와 책 재미있습니다.'
, 5
);

select * from review5;

-- 점선 : non idnetifying : 부모테이블의 기본키가 자식테이블의 외래키/기본키가 되는 경우 , 부모가 있어야 자식이 생기는 경우
-- 실선 : identifying : 부모테이블의 PK가 자식테이블의 일반속성이 되는 경우 , 부모가 없어도 자식이 생기는 경우

select
    b.comment
    ,a.name
from book5 a inner join review5 b on a.no = b.book5_no;

