use world;

CREATE TABLE IF NOT EXISTS `book3` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `publisher_cd` INT NULL,
  PRIMARY KEY (`no`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `publisher` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`no`))
ENGINE = InnoDB;

desc book3;
desc publisher;

insert into book3 (
	name
    ,publisher_cd
) values (
	'우주전쟁'
    ,4
);

insert into publisher (
	name
) value (
	'다람출판사'
);

select * from book3;
select * from publisher;

-- 1번째 방법
select 
	a.no
	,a.name
    ,a.publisher_cd
	,b.name
from book3 a left join publisher b on b.no = a.publisher_cd;

-- 2번째 방법
select 
	a.no
	,a.name
    ,(select name from publisher where no = a.publisher_cd)
from book3 a;

-- 2번째 방법에서 alias 설정
select 
	a.no
	,a.name
    ,(select name from publisher where no = a.publisher_cd) as publisher_name
from book3 a;

-- 3번째 방법 : 함수로 불러오는 방법
select
	a.no
    ,a.name
	,a.publisher_cd
	,getPublisherName  -- 함수, function
from book3 as a;