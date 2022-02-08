select * from infrmember;

INSERT INTO `bts`.`infrmemberphone`
(
`ifmmSeq`,
`ifmpDefaultNy`,
`ifmpTypeCd`,
`ifmpDeviceCd`,
`ifmpTelecomCd`,
`ifmpNumber`,
`infeDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`
)
VALUES
(
2
,0
,22
,25
,29
,'031-527-6685'
,0
,now()
,now()
,now()
,now()
);



-- 코드번호 조회 쿼리 
select
a.ifcgName
,b.ifcdSeq
,b.ifcdName
from infrcodegroup a
left join infrcode b on b.ifcgSeq = a.ifcgSeq;