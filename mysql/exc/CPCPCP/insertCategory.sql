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
13
,2
,'캐릭터별완구'
,2
,1
,0
);
use cpcpcp;
select * from infrcategory;
select * from infrcategory where ifctname like '소설%';

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

