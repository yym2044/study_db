use bts;
select 
a.ifcgSeq
,a.ifcgName
,b.ifcdSeq
,b.ifcdName
,b.ifcdOrder
,b.ifcdUseNy
,b.ifcdDelNy
 from infrcodegroup a
 left join infrcode b on b.ifcgSeq = a.ifcgSeq
 where 1=1
	and a.ifcgDelNy = 0
    and a.ifcgUseNy = 1
    and b.ifcdDelNy = 0
    and b.ifcdUseNy = 1
order by
	a.ifcgSeq asc
    , b.ifcdSeq asc
 ;
