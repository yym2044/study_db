INSERT INTO `cpcpcp`.`infrcategory`
(
`ifctParents`,
`ifctOrder`,
`ifctName`,
`ifctDepth`,
`ifctUseNy`,
`ifctDelNy`
)
VALUES
(
6
,8
,'커피/티/와인'
,2
,1
,0
);
use cpcpcp;
select * from infrcategory;
select * from infrcategory where ifctname like '주방용품%';

select * from infrcategory where ifctParents = 46 and ifctOrder = 4;

update infrcategory set ifctParents = 48 where ifctSeq >= 90;

-- 카테고리 셀렉
WITH RECURSIVE CteCate(ifctSeq, ifctParents, ParentsName, ifctName, depth, orderString, ifctOrder, ifctDepth) AS 
(
    select ifctSeq, ifctParents, cast('' as char(30)), ifctName, 0, cast(ifctSeq as char(10)), ifctOrder, ifctDepth from infrCategory where ifctParents is null
    UNION ALL
    select d.ifctSeq, d.ifctParents, cte.ifctName, d.ifctName, depth + 1, concat(cte.orderString, '-', d.ifctOrder), d.ifctOrder, d.ifctDepth from infrCategory d inner join CteCate cte on d.ifctParents = cte.ifctSeq
)
select * from CteCate order by orderString;

use cpcpcp;

select * from infrMember;

select 
a.ifmmSeq
,a.ifmmName
,a.ifmmId
,(select ifcdName from infrCode where ifcdSeq = a.ifmmGenderCd) as ifmmGenderName
,a.ifmmDob
,a.ifmmFavoriteColor
from infrMember a;