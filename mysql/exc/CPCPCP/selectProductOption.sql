-- 한 상품의 옵션이 어떤 것들이 있는지 보기
use cpcpcp;
select
a.trpdseq
,a.trpdPid
,a.trpdName
,b.tropName
,c.trocName
,c.trocAdditionalPrice
from tradproduct a
left join tradOptionParent b 
	on (b.tropSeq = a.trpdOptionParentCd1) 
		OR (b.tropSeq = a.trpdOptionParentCd2)
		OR (b.tropSeq = a.trpdOptionParentCd3)
left join tradoptionchild c
	on c.tropSeq = b.tropSeq
where a.trpdSeq = 1
;

use cpcpcp2;
select * from tradOptionParent;
select * from tradOptionChild;

-- 이렇게 하면 될듯?? 실제 옵션세팅에 따른 상품 리스트 뽑기
select 
	a.trpdSeq
    , a.trpdName
--    , b.trprOptionChildCd1
    , (select trocName from tradOptionChild where trocSeq = b.trprOptionChildCd1) as trprOptionName1
    , (select trocAdditionalPrice from tradOptionChild where trocSeq = b.trprOptionChildCd1) as trprAdditionalPrice1
--    , b.trprOptionChildCd2
    , (select trocName from tradOptionChild where trocSeq = b.trprOptionChildCd2) as trprOptionName2
	, (select trocAdditionalPrice from tradOptionChild where trocSeq = b.trprOptionChildCd2) as trprAdditionalPrice2
--    , b.trprOptionChildCd3
     , (select trocName from tradOptionChild where trocSeq = b.trprOptionChildCd3) as trprOptionName3
     , (select trocAdditionalPrice from tradOptionChild where trocSeq = b.trprOptionChildCd3) as trprAdditionalPrice3
     
     , (select ifnull((trprAdditionalPrice1),0)) + (select ifnull((trprAdditionalPrice2),0)) + (select ifnull((trprAdditionalPrice3),0)) as trprTotalAdditionalPrice
     
    , b.trprStock 
from 
	tradProduct a 
left join tradProduct_real b 
    on b.trpdSeq = a.trpdSeq
;
select * from tradProduct_real;
use cpcpcp;

-- 각 상품의 옵션 패런트 값 selectOne해오기
select 
	a.trpdSeq
    , a.trpdName
    , (select tropName from tradoptionparent where tropSeq = a.trpdOptionParentCd1) as trpdOptionParentName1
    , a.trpdOptionParentCd1
    , (select tropName from tradoptionparent where tropSeq = a.trpdOptionParentCd2) as trpdOptionParentName2
    , a.trpdOptionParentCd2
    , (select tropName from tradoptionparent where tropSeq = a.trpdOptionParentCd3) as trpdOptionParentName3
    , a.trpdOptionParentCd3
from 
	tradproduct a
where
	a.trpdSeq = 1
;


-- 한 상품의 옵션이 어떤 것들이 있는지 보기
SELECT
			b.tropSeq
			,b.tropName
			,c.trocName
			,c.trocAdditionalPrice
		FROM 
			tradProduct a
		LEFT JOIN 
			tradOptionParent b 
		ON  
			(b.tropSeq = a.trpdOptionParentCd1) 
			OR (b.tropSeq = a.trpdOptionParentCd2)
			OR (b.tropSeq = a.trpdOptionParentCd3)
		LEFT JOIN 
			tradOptionChild c
		ON 
			c.tropSeq = b.tropSeq
		WHERE 
			a.trpdSeq = 1;




SELECT
			a.tropSeq
			, a.tropName
			, b.trocSeq
            , b.trocName
		FROM 
			tradOptionParent a
		LEFT JOIN
			tradOptionChild b
		ON 
			b.tropSeq = a.tropSeq
		WHERE 1=1
			AND a.tropDelNy = 0
			AND a.tropUseNy = 1
			AND b.trocDelNy = 0
			AND b.trocUseNy = 1
		ORDER BY
			tropOrder;
            
           SELECT
			trocSeq
			, trocName
			, tropSeq
		FROM 
			tradOptionChild
		WHERE 1=1
			AND trocDelNy = 0
			AND trocUseNy = 1
		ORDER BY
			trocOrder;
use cpcpcp;
select * from tradProduct;


select * from infrcategory where ifctName like '%생수%';
select * from infrcategory where ifctSeq = 48;
select * from infrCategory;

select * from tradOptionParent;
select * from tradOptionChild;
select * from tradProduct_real;

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
use cpcpcp2;

select 
a.trpdSeq
, a.trpdName
-- , b.trprOptionChildCd1
, (select trocName from tradOptionChild where trocSeq = b.trprOptionChildCd1) AS trprOptionChildName1
-- , b.trprOptionChildCd2
, (select trocName from tradOptionChild where trocSeq = b.trprOptionChildCd2) AS trprOptionChildName2
-- , b.trprOptionChildCd3
, (select trocName from tradOptionChild where trocSeq = b.trprOptionChildCd3) AS trprOptionChildName3
from tradProduct a left join tradProduct_real b on b.trpdSeq = a.trpdSeq;