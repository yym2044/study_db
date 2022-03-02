select * from infrpayment;

select * from tradOrder;


-- 주문서 출력
select 
a.trorOrderId
,b.trpdName
,b.trpdprice
-- ,a.trorOptionChildCd1
,(select trocName from tradoptionchild where trocSeq = a.trorOptionChildCd1) as OptionName1
,(select trocAdditionalPrice from tradoptionchild where trocSeq = a.trorOptionChildCd1) as additionalPrice1
-- ,a.trorOptionChildCd2
,(select trocName from tradoptionchild where trocSeq = a.trorOptionChildCd2) as OptionName2
,(select trocAdditionalPrice from tradoptionchild where trocSeq = a.trorOptionChildCd2) as additionalPrice2
-- ,a.trorOptionChildCd3
,(select trocName from tradoptionchild where trocSeq = a.trorOptionChildCd3) as OptionName3
,(select trocAdditionalPrice from tradoptionchild where trocSeq = a.trorOptionChildCd3) as additionalPrice3
-- ,a.trorTotalPrice
,a.trorprice + (select trocAdditionalPrice from tradoptionchild where trocSeq = a.trorOptionChildCd1) 
+ (select trocAdditionalPrice from tradoptionchild where trocSeq = a.trorOptionChildCd2)	
+ (select trocAdditionalPrice from tradoptionchild where trocSeq = a.trorOptionChildCd3) as totalPriceIncludingOptions
from tradOrder a
left join tradProduct b on b.trpdSeq = a.trpdSeq
;
-- trorOptionChildCd 값이 없는 경우 합계가 Null이 되기때문에 100을 넣어 숫자 +0원 처리


select * from tradoptionchild;
select * from tradOrder;

select * from tradProduct where trpdSeq = 2;

-- 옵션코드 셀렉트 
select
a.ifcgSeq
,ifcgName
,b.ifcdSeq
,b.ifcdName
from infrCodegroup a
left join infrcode b on b.ifcgSeq = a.ifcgSeq
where 1=1
	and a.ifcgSeq = 18
;