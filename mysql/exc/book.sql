use world;

show tables;

create table book (
	seq INT,
    series VARCHAR(100),
    title VARCHAR(100),
    subtitle VARCHAR(100),
    author VARCHAR(100),
    publisher VARCHAR(100),
    publication_date DATETIME,
    price int,
    discount double,
    point int,
    sales_rate int,
    customer_review int,
    star_rating double,
    delivery_date datetime,
    special_gifts VARCHAR(100),
    related_products int,
    ebook int
);

insert into book (
	seq
    ,series
    ,title
    ,subtitle
    ,author
    ,publisher
    ,publication_date
    ,price
    ,discount
    ,point
    ,sales_rate
    ,customer_review
    ,star_rating
    ,delivery_date
    ,special_gifts
    ,related_products
    ,ebook
) values (
	1
    ,"이지스퍼블리싱-Do it! 시리즈"
    ,"Do it! HTML+CSS+자바스크립트 웹 표준의 정석"
    ,'한 권으로 끝내는 웹 기본 교과서'
    ,'고경희'
    ,'이지퍼블리싱'
    ,"2019-01-01"
    ,27000
    ,0.1
    ,1500
    ,49899
    ,15
    ,9.6
    ,"2022-01-25"
    ,'[대학생X취준생] 지치지 않는 자, 점수를 잡는다! - 리유저블텀블러/한국문학 담요/슬라이드 파일 증정'
    ,11
    ,19000
);
drop table book;
select * from book;

create table room (
	seq INT,
    photo INT,
    caption VARCHAR(100),
    type VARCHAR(100),
    reservation_time INT,
    accomodation INT,
    chairNtable TINYINT,
    bodymirror TINYINT,
    toilet TINYINT,
    non_smoking TINYINT,
    lounge TINYINT,
    shower TINYINT,
    internetNwifi TINYINT
);

select * from room;
