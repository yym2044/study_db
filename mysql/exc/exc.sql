use world;

show tables;

-- 주석 

create table member (
	seq int,
    name varchar(100),room
    id varchar(100),
    regdate datetime
);

create table member2 (
	seq int,
    name varchar(100),
    id varchar(100),
    regdate datetime
);

create table book (
	seq int,
    name varchar(100),
    publisher varchar(100),
    author varchar(100),
    price INT
);

drop table member;
drop table member2;
drop table book;

create table cafe (
	seq int,
    name varchar(100),
    tableN INT,
    chairN INT,
    address VARCHAR(100),
    location INT,
    ceoName VARCHAR(100)
);

insert into cafe (
	seq
	,name
	,tableN
	,chairN
	,address
	,location
	,ceoName
) values (
	1
    ,'별다방'
    ,1
    ,2
    ,'서울시 어디쯤'
    ,1
    ,'장동건'
);

insert into cafe (
	seq
	,name
	,tableN
	,chairN
	,address
	,location
	,ceoName
) values (
	2
    ,'빽다방'
    ,2
    ,3
    ,'경기도 어디쯤'
    ,1
    ,'이병헌'
);

insert into cafe (
	seq
    ,name
    ,tableN
    ,chairN
    ,address
    ,location
    ,ceoName
) values (
	6
    ,'엔젤리너스'
    ,20
    ,30
    ,'경기도'
    ,20
    ,'비'
);

-- varchar 은 ' 또는 " 로 감싼다.
-- int 는 사용하지 않아도 된다.
-- 컴마는 앞쪽을 선호 : 이건 호불호가 갈린다.

select * from cafe;
select * from cafe where seq=3;
select * from cafe where ceoName='비';
select * from cafe where name="별다방" or name="빽다방";

select * from cafe where location > 5;
select * from cafe where name like '%다방';

select name from cafe;

-- unique, primary key, forien key : 유일한 데이터
-- pk : primary key : 중복되는 데이터는 불허
-- nn : not null : null값을 허용하지 않는다. (데이터가 무조건 들어와야 한다.)
-- uq : 유니크 : 중복되는 데이터는 불허
-- b : 바이너리 파일 저장
-- un : unsigned(?) : 양수만
-- zf : zerofill
-- ai : auto increment : 자동증가
-- g : auto increment 의 다른 형태

-- 테이블 수정

CREATE TABLE test (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`)
  );

-- 컬럼 추가
alter table test add tel varchar(50);
desc test; -- 테이블 설명

-- 컬럼 삭제
alter table test drop tel;

-- 컬럼 타입 변경
alter table test modify tel int;
alter table test modify tel varchar(20);
desc test;

-- 컬럼 이름 변경
alter table test change tel tele int;
alter table test change tele tel int;

insert into test (
	name
    ,tel
) values (
	'tony'
    ,1111
);

select * from test;

-- 데이터 수정
update test set
	name = 'Andrew'
where seq = 3;

-- 데이터 삭제
delete from test
where
	seq=3;
    
-- 전체 데이터 삭제 (테이블 삭제와 다름)
truncate test;

-- DDL : data definition language : db, table 컨트롤 : 주로 관리자, 선임
-- DML : data manipulation language : data ; 후임들
-- DCL : data control language : 접근 권한, 커밋/롤백
