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

update infrcodegroup
set ifcgdelny = 0
where ifcgseq > 10;





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
'미국'
,'US'
,'USA'
,1
,2
,0
,now()
,now()
,now()
,now()
);

select * from infrmember;


INSERT INTO `bts`.`infrmember`
(
`ifmmAdminNy`,
`ifmmDormancyNy`,
`ifmmName`,
`ifmmId`,
`ifmmPwd`,
`ifmmPwdModDate`,
`ifmmGender`,
`ifmmDob`,
`ifmmSavedCd`,
`ifmmMarriageCd`,
-- `ifmmMarriageDate`,
-- `ifmmChildrenNum`,
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
'윤영민',
'Desane',
'cheezeDalchong',
now(),
1,
"1996-06-07",
1,
1,
-- ifmmMarriageDate,
-- ifmmChildrenNum,
'Blue',
1,
0,
1,
0,
now(),
now(),
now(),
now()
);

