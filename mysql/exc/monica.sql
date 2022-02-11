-- 코드그룹, 코드, 국적, 멤버 인서트


INSERT INTO `bts`.`infrCodeGroup`
(`ifcgName`,
`ifcgUseNy`,
`ifcgOrder`,
`ifcgDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`)
VALUES
(
'회원보안질문.구분',
1,
14,
0,
now(),
now(),
now(),
now()
);

select * from infrcodegroup order by ifcgOrder;


INSERT INTO `bts`.`infrcode`
(
`ifcgSeq`,
`ifcdOrder`,
`ifcdName`,
`ifcdUseNy`,
`ifcdDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`
)
VALUES
(
14
,3
,'태어난 고향'
,1
,0
,now()
,now()
,now()
,now()
);

select
a.ifcgseq '코드그룹번호'
,a.ifcgname '코드그룹 이름'
,b.ifcdseq '코드번호'
,b.ifcdname '코드이름'
,b.ifcdorder '그룹내 번호'
from infrcodegroup a
	left join infrcode b on b.ifcgseq = a.ifcgseq
order by a.ifcgseq, b.ifcdorder;

select
a.ifcgseq
,a.ifcgname
,b.ifcdseq '코드번호'
,b.ifcdname '코드이름'
,b.ifcdorder '그룹내 번호'
from infrcodegroup a
	left join infrcode b on b.ifcgseq = a.ifcgseq
order by a.ifcgseq, b.ifcdorder;




INSERT INTO `bts`.`infrnationality`
(
`ifnaName`,
`ifnaCode2Char`,
`ifnaCode3Char`,
`ifnaUseNy`,
`ifnaOrder`,
`ifnaDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`)
VALUES
(
'일본'
,'JP'
,'JPN'
,1
,3
,0
,now()
,now()
,now()
,now()
);

select * from infrmember;


INSERT INTO `bts`.`infrmember`
(
-- `ifmmSeq`,
`ifmmAdminNy`,
`ifmmDormancyNy`,
`ifmmName`,
`ifmmId`,
`ifmmPwd`,
`ifmmPwdModDate`,
`ifmmGenderCd`,
`ifmmDob`,
`ifmmSavedCd`,
`ifmmMarriageCd`,
`ifmmMarriageDate`,
`ifmmChildrenNum`,
`ifmmFavoriteColor`,
`ifmmEmailConsentNy`,
`ifmmSmsConsentNy`,
`ifmmPushConsentNy`,
`ifmmDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`)
VALUES
(

0,
0,
'김정민',
'TheMarine',
'bd948bbd4b067e198b65a715957ee8298309c6c13672f2691b42fa48ae78b1da',
now(),
3, 
"1984-04-21",
8,
13,
"2018-09-10",-- ifmmMarriageDate,
2,-- ifmmChildrenNum,
'Green',
1,
1,
1,
0,
now(),
now(),
now(),
now()
);

select * from infrMember;

delete from infrMember where ifmmSeq = 3;