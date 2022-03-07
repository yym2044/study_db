select
a.trorOrderId
,c.trpdName
,b.trocName
,a.trorOptionChildCd1
,a.trorOptionChildCd2
,a.trorOptionChildCd3
,b.trocAdditionalPrice
from tradOrder a
inner join tradOptionChild b 
	on b.trocSeq = a.trorOptionChildCd1
    or b.trocSeq = a.trorOptionChildCd2
    or b.trocSeq = a.trorOptionChildCd3
inner join tradProduct c
	on c.trpdSeq = a.trpdSeq
where b.trocSeq != 100
order by a.trorSeq
;
    
select * from tradorder;

select * from tradoptionchild;






select
-- a.trpdseq
-- ,a.trpdName
b.tropName
,c.trocName
,c.trocAdditionalPrice
from cpcpcp.tradproduct a
left join cpcpcp.tradOptionParent b 
	on b.tropSeq = a.trpdOptionParentCd1 
		or b.tropSeq = a.trpdOptionParentCd2 
		or b.tropSeq = a.trpdOptionParentCd3
left join cpcpcp.tradoptionchild c
	on c.tropSeq = b.tropSeq
where a.trpdSeq = 2;


