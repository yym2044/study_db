-- Nationality, joinQna Insert

INSERT INTO `bts`.`infrmembernationality`
(
`ifmmSeq`,
`ifnaSeq`,
`ifmnDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`)
VALUES
(
2
,1
,0
,now()
,now()
,now()
,now()
);

INSERT INTO `bts`.`infrmemberjoinqna`
(
`ifmmSeq`,
`ifjqQuestionCd`,
`ifjqAnswer`,
`ifjqDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`
)
VALUES
(
2
,45
,'우리 가족'
,0
,now()
,now()
,now()
,now()
);

select * from infrmemberjoinqna;

select
a.ifcgseq
,a.ifcgName
,b.ifcdSeq
,b.ifcdName
from infrCodeGroup a
left join infrCode b on b.ifcgSeq = a.ifcgSeq;