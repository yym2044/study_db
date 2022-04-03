-- 한 상품의 옵션이 어떤 것들이 있는지 보기
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

use cpcpcp;
select * from tradOptionParent;
select * from tradOptionChild;
use cpcpcp;

-- 각 상품의 옵션 패런트 값 selectOne해오기
select 
	a.trpdSeq
    , a.trpdName
    , (select tropName from tradoptionparent where tropSeq = a.trpdOptionParentCd1)
    , a.trpdOptionParentCd1
    , (select tropName from tradoptionparent where tropSeq = a.trpdOptionParentCd2)
    , (select tropName from tradoptionparent where tropSeq = a.trpdOptionParentCd3)
from 
	tradproduct a
where
	a.trpdSeq = 1
;

-- 한 상품의 옵션이 어떤 것들이 있는지 보기
select
b.tropSeq
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