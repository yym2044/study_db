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
	on b.tropSeq = a.trpdOptionParentCd1
left join tradoptionchild c
	on c.tropSeq = b.tropSeq
where a.trpdSeq = 2
;

use cpcpcp;
select * from tradOptionParent;
select * from tradOptionChild;

select * from tradproduct;