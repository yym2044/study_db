-- 폰, 이메일, 취미 인서트

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

INSERT INTO `bts`.`infrmemberemail`
(
`ifmmSeq`,
`ifmeDefaultNy`,
`ifmeTypeCd`,
`ifmeEmailFull`,
`ifmeEmailAccount`,
`ifmeEmailDomain`,
`ifmeEmailDomainCd`,
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
,17
,'yym2044@gmail.com'
,'yym2044'
,'gmail.com'
,20
,0
,now()
,now()
,now()
,now()
);

INSERT INTO `bts`.`infrmemberhobby`
(
`ifmmSeq`,
`ifmhHobbyCd`,
`ifmhUseNy`,
`ifmhOrder`,
`ifmhDelNy`,
`regIp`,
`regSeq`,
`regDevice`,
`regDateTime`,
`regDateTimeSvr`,
`modIp`,
`modSeq`,
`modDevice`,
`modDateTime`,
`modDateTimeSvr`
)
VALUES
(

);



-- 코드번호 조회 쿼리 
select
a.ifcgName
,b.ifcdSeq
,b.ifcdName
from infrcodegroup a
left join infrcode b on b.ifcgSeq = a.ifcgSeq;