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