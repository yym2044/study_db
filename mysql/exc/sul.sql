select * from cpuser;



desc cpgoods;



desc cpgoods;
select * from cpgoods;
select * from goodscategory;

select code from goodscategory where categoryName = 'clothing';
select * from cpgoods where goodscategory_code = 1;

desc cporder;

insert into cporder (
	orderNo
    ,cpUser_userNo
    ,orderAmount
) values (
	1
    ,1
    ,1
);

desc cpordergoods;
select * from cporder;

insert into cpordergoods (
	cporder_orderNo
    ,cpgoods_no
    ,price
    ,quantity
) values (
	2
    ,3
    ,1000
    ,50
);

select * from cpgoods;

select 
*
, (select a.price * quantity) as '합계'
 from cpordergoods a;
 
 select * from cpgoods;
 
 select
 a.cpOrder_orderNo '주문서번호'
 ,a.cpgoods_no '상품번호'
 ,b.productname '상품명'
 ,a.price '단품가격'
 ,a.quantity '수량'
 ,(select a.price * a.quantity) '가격'
 ,c.orderno
 from cpordergoods a
 inner join cpgoods b on b.no = a.cpgoods_no
 inner join cporder c on c.orderno = a.cporder_orderno and a.cpOrder_orderNo = 1;
 

 
 select * from code;

