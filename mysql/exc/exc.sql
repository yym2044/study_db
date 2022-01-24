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


