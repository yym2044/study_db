use world;

show tables;

-- 주석 

create table member (
	seq int,
    name varchar(100),
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


