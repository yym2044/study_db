-- phone, email, hobby, address, addressOnline 인서트

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
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`
)
VALUES
(
2
,40
,1
,2
,0
,now()
,now()
,now()
,now()
);

INSERT INTO `bts`.`infrmemberaddress`
(
`ifmmSeq`,
`ifmaDefaultNy`,
`ifmaTypeCd`,
`ifmaTitle`,
`ifmaAddress1`,
`ifmaAddress2`,
`ifmaZipcode`,
`ifmaDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`)
VALUES
(
2
,0
,44
,'배송대행지'
,'7850 SW Nimbus Ave'
,'S12345'
,'97008'
,0
,now()
,now()
,now()
,now()
);

INSERT INTO `bts`.`infrmemberaddressonline`
(
`ifmmSeq`,
`ifaoTypeCd`,
`ifaoDefaultNy`,

`ifaoUrl`,
-- `ifaoTitle`,
`ifaoDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`
)
VALUES
(
2
,34
,1

,'www.blog.naver.com/yym/'
-- ,
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