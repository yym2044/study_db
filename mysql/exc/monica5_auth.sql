-- auth, menu, authMenu, authMember insert

INSERT INTO `bts`.`infrauth`
(
`ifatAdminNy`,
`ifatName`,
`ifatUseNy`,
`ifatOrder`,
`ifatDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`)
VALUES
(
1
,'회원관리자'
,1
,3
,0
,now()
,now()
,now()
,now()
);

INSERT INTO `bts`.`infrmenu`
(
`ifmuName`,
`ifmuParents`,
`ifmuDepth`,
`ifmuUseNy`,
`ifmuOrder`,
`ifmuDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`)
VALUES
(
'메뉴관리'
,2 -- ifmuParents
,2 -- ifmuDepth
,1 -- ifmuUseNy
,4 -- ifmuOrder
,0 -- ifmuDelNy
,now()
,now()
,now()
,now()
);

INSERT INTO `bts`.`infrauthmenu`
(
`ifatSeq`,
`ifmuSeq`,
`ifauRoleCd`, -- 1: 관리, 2: 조회
`ifauUseNy`,
`ifauDelNy`
)
VALUES
(
3
,4
,2
,1
,0
);

select * from infrauth;
select * from infrmenu;
select * from infrauthmenu;

INSERT INTO `bts`.`infrauthmember`
(
`ifamUseNy`,
`ifamOrder`,
`ifamDesc`,
`ifamDelNy`,
`regIp`,
`regSeq`,
`regDevice`,
`regDateTime`,
`regDateTimeSvr`,
`modIp`,
`modSeq`,
`modDevice`,
`modDateTime`,
`modDateTimeSvr`,
`ifmuSeq`,
`ifmmSeq`)
VALUES
(
);

select
a.ifatSeq 
,(select ifatName from infrAuth where ifatSeq = a.ifatSeq) as ifatName
,a.ifmuSeq
,(select ifmuName from infrMenu where ifmuSeq = a.ifmuSeq) as ifmuName
,a.ifauRolecd
,(select ifcdName from infrCode where ifcdSeq = ifauRoleCd) as ifauRoleName
,b.ifmuParents
,b.ifmuDepth
,b.ifmuOrder
from infrAuthMenu a
left join infrMenu b on b.ifmuSeq = a.ifmuSeq
where 1 = 1
	and a.ifatSeq = 1
order by 
	ifmuParents asc
    ,ifmuOrder asc;

select * from infrAuthMenu;
select * from infrMenu;
