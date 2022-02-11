select
a.ifmmSeq
,a.ifmmAdminNy
,a.ifmmDormancyNy
,a.ifmmName
,a.ifmmId
,a.ifmmPwdModDate
,a.ifmmGenderCd
,(
	case
		when a.ifmmgendercd = 3 then '남성'
        when a.ifmmgendercd = 4 then '여성'
        when a.ifmmgendercd = 5 then '기타'
	end
) as ifmmGenderNameCase
,b.ifmaTypeCd
,(select ifcdName from infrCode where ifcdSeq = b.ifmaTypeCd) as ifmaTypeName  -- 이런 식으로 뽑아오자
,b.ifmaTitle
,b.ifmaAddress1 
,b.ifmaAddress2
,b.ifmaZipCode
,c.ifaoTypeCd
,c.ifaosnsTypeCd
,(select ifcdName from infrCode where ifcdSeq = c.ifaoSnsTypeCd) as ifaoSnsTypeName
,c.ifaoUrl
,d.ifmpTypeCd
,(select ifcdName from infrCode where ifcdSeq = d.ifmpTypeCd) as ifmpTypeName
,d.ifmpDeviceCd
,(select ifcdName from infrCode where ifcdSeq = d.ifmpDeviceCd) as ifmpDeviceName
,d.ifmpTelecomCd
,(select ifcdName from infrCode where ifcdSeq = d.ifmpTelecomCd) as ifmpTelecomName
,d.ifmpNumber
, concat(substring(d.ifmpNumber,1,3),'-',substring(d.ifmpNumber,4,4),'-',substring(d.ifmpNumber,8,4)) as ifmpNumberConcat
,e.ifmeTypeCd
,(select ifcdName from infrCode where ifcdSeq = e.ifmeTypeCd) as ifmeTypeName
,e.ifmeEmailFull
,e.ifmeEmailAccount
,e.ifmeEmailDomain
,e.ifmeEmailDomainCd
,(select ifcdName from infrCode where ifcdSeq = e.ifmeEmailDomainCd) as ifmeEmailDomainName
,f.ifmhHobbyCd
,(select ifcdName from infrCode where ifcdSeq = f.ifmhHobbyCd) as ifmhHobbyName
,g.ifnaSeq
,(select ifnaName from infrnationality where ifnaSeq = g.ifnaSeq) as ifnaName
,h.ifjqQuestionCd
,(select ifcdName from infrCode where ifcdSeq = ifjqQuestionCd) as ifjqQuestionName
,h.ifjqAnswer
from infrMember a
left join infrMemberAddress b on b.ifmaDelNy = 0 and b.ifmaDefaultNy = 1 and b.ifmmSeq = a.ifmmSeq
left join infrMemberAddressOnline c on c.ifaoDelNy = 0 and c.ifaoDefaultNy = 1 and c.ifmmSeq = a.ifmmSeq
left join infrMemberPhone d on d.ifmpDefaultNy = 1 and d.ifmpDelNy = 0 and d.ifmmSeq = a.ifmmSeq
left join infrMemberEmail e on e.ifmeDefaultNy = 1 and e.ifmeDelNy = 0 and e.ifmmSeq = a.ifmmSeq
left join infrmemberhobby f on f.ifmhUseNy = 1 and f.ifmhDelNy = 0 and f.ifmhOrder = 1 and f.ifmmSeq = a.ifmmSeq
left join infrMemberNationality g on g.ifmnDefaultNy = 1 and g.ifmnDelNy = 0 and g.ifmmSeq = a.ifmmSeq
left join infrMemberJoinQna h on h.ifjqDelNy = 0 and h.ifmmSeq = a.ifmmSeq
where 1=1
	and a.ifmmDelNy = 0
   -- and a.ifmmId like '%esan%'
;
use bts;