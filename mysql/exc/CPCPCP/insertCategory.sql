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
190
,5
,'커피음료/차음료'
,3
,1
,0
);
use cpcpcp;
select * from infrcategory;
select * from infrcategory where ifctname like '%커피%';

select * from infrcategory where ifctParents = 46 and ifctOrder = 4;

use cpcpcp;
select * from tradProduct;
select * from tradoptionparent;
select * from tradOptionChild;

update infrcategory set ifctParents = 48 where ifctSeq >= 90;

-- 카테고리 셀렉
WITH RECURSIVE CteCate(ifctSeq, ifctParents, ParentsName, ifctName, depth, orderString, ifctSeqString, ifctNameString, ifctOrder, ifctDepth) AS 
(
    select ifctSeq, ifctParents, cast('' as char(30)), ifctName, 0, cast(ifctSeq as char(10)), cast(ifctSeq as char(20)), cast(ifctName as char(100)), ifctOrder, ifctDepth from infrCategory where ifctParents = 1
    UNION ALL
    select d.ifctSeq, d.ifctParents, cte.ifctName, d.ifctName, depth + 1, concat(cte.orderString, '-', d.ifctOrder), concat(cte.ifctSeqString, '-', d.ifctSeq), concat(cte.ifctNameString, ' > ', d.ifctName), d.ifctOrder, d.ifctDepth from infrCategory d inner join CteCate cte on d.ifctParents = cte.ifctSeq
)
select * from CteCate order by ifctSeq;

-- 카테고리 셀렉
WITH RECURSIVE CteCate(ifctSeq, ifctParents, ParentsName, ifctName, depth, orderString, ifctSeqString, ifctNameString, ifctOrder, ifctDepth) AS 
(
    select ifctSeq, ifctParents, cast('' as char(30)), ifctName, 0, cast(ifctSeq as char(10)), cast(ifctSeq as char(20)), cast(ifctName as char(100)), ifctOrder, ifctDepth from infrCategory where ifctParents = 1
    UNION ALL
    select d.ifctSeq, d.ifctParents, cte.ifctName, d.ifctName, depth + 1, concat(cte.orderString, '-', d.ifctOrder), concat(cte.ifctSeqString, '-', d.ifctSeq), concat(cte.ifctNameString, ' > ', d.ifctName), d.ifctOrder, d.ifctDepth from infrCategory d inner join CteCate cte on d.ifctParents = cte.ifctSeq
)
select ifctNameString from CteCate where ifctDepth = 3 and ifctNameString like '%%' order by orderString;

use cpcpcp;
select * from infrcategory;





SELECT 
	ifctSeq
    , ifctName
    , ifctParents
    , ifctDepth
FROM
	infrCategory
WHERE
	1 = 1
	AND ifctParents = 17
    AND ifctUseNy = 1
    AND ifctDelNy = 0
ORDER BY
	ifctOrder
;
use cpcpcp;
SELECT
			ifctSeq
			, ifctName
			, ifctParents
			, ifctDepth
            , ifctOrder
		FROM
			infrCategory
		WHERE 1 = 1
			AND ifctUseNy = 1
			AND ifctDelNy = 0
            AND ifctDepth = 2
		ORDER BY
			
			ifctDepth
            , ifctParents
			, ifctOrder
            ;
select * from infrcategory;
use cpcpcp;

select * from infrMember;

select 
a.ifmmSeq
,a.ifmmName
,a.ifmmId
,(select ifcdName from infrCode where ifcdSeq = a.ifmmGenderCd) as ifmmGenderName
,a.ifmmDob
,a.ifmmFavoriteColor
,a.ifmmDelNy
from infrMember a;
use cpcpcp;
INSERT INTO
		infrMemberEmail (
			ifmmSeq
			,ifmeEmailFull
		) VALUES (
			9
			,'test2@naver.com'
		);
use cpcpcp;

select * from infrmember;

INSERT INTO
infrMemberPhone (
	ifmmSeq
    
) VALUES (

);

use cpcpcp;
select * from infrMember;
delete from cpcpcp.infrMember where ifmmSeq = 17;
delete from infrMemberPhone where ifmmSeq = 17;

select last_insert_id() from infrMemberEmail;

select * from infrCodeGroup;
select * from infrCode;

delete from infrCodeGroup where ifcgSeq>=38;

select * from infrMemberAddress;


alter table infrMemberAddress change ifmaAddress3 ifmaAddressReferences varchar(100);

use cpcpcp;

select * from infrcategory;

