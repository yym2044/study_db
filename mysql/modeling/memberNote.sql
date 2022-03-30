use cpcpcp;

select * from infrCode;

select * from infrMemberEmail;
use cpcpcp;
select * from 
infrMember a
left join 
infrMemberPhone b on b.ifmmSeq = a.ifmmSeq;

select * from infrMember;

SELECT
			*
FROM infrMember a
		LEFT JOIN infrMemberEmail b ON b.ifmmSeq = a.ifmmSeq AND ifmeDefaultNy = 1
		WHERE ifmmDelNy = 0;
        
select * from infrMemberEmail;
delete from infrMemberEmail where ifmeSeq = 3;
use cpcpcp;
select * from infrMember;
use cpcpcp;
update infrMember set ifmmDelNy = 0 where ifmmSeq >= 1;

use cpcpcp;
select * from infrMember;

select * from infrCodeGroup a left join infrCode b on b.ifcgSeq = a.ifcgSeq where a.ifcgName like '%상태%';

select * from cpcpcp.infrnationality;

select * from cpcpcp.infrmembernationality;

insert into cpcpcp.infrmembernationality (select * from bts.infrmembernationality);

-- form에 뿌릴 국적리스트
select ifnaSeq, ifnaName, ifnaCode2Char, ifnaCode3Char from infrnationality where ifnaUseNy = 1 and ifnaDelNy = 0;

select * from infrmembernationality;

INSERT INTO 
	infrMemberNationality (
		ifmmSeq
        , ifnaSeq
        , ifmnDelNy
        , ifmnDefaultNy
    ) VALUES (
		4
        , 1
        , 0
        , 1
    )
;

-- view
select a.ifmmSeq, b.ifnaSeq, (select ifnaName from infrNationality where ifnaSeq = b.ifnaSeq) from infrMember a left join infrmembernationality b on b.ifmmSeq = a.ifmmSeq where ifmnDefaultNy = 1 and a.ifmmSeq = 4
;



SELECT DISTINCT
			a.ifmmSeq
			, a.ifmmName
			, a.ifmmId
			, a.ifmmPwd
			, (select ifcdName from infrCode where ifcdSeq = a.ifmmGenderCd) as ifmmGenderName
			, a.ifmmDob
			, a.ifmmFavoriteColor
			, a.ifmmDelNy
			, (select ifcdName from infrCode where ifcdSeq = a.ifmmGradeCd) as ifmmGrade
			, a.ifmmRegDate
			, (select ifcdName from infrCode where ifcdSeq = a.ifmmStatusCd) as ifmmStatus
			, if(a.ifmmEmailConsentNy=1,'수신동의','수신거부') as ifmmEmailConsentNyText
			, if(a.ifmmSmsConsentNy=1,'수신동의','수신거부') as ifmmSmsConsentNyText
			, if(a.ifmmPushConsentNy=1,'수신동의','수신거부') as ifmmPushConsentNyText
						
			, b.ifmeEmailFull
			, b.ifmeEmailAccount
			, b.ifmeEmailDomain
			, b.ifmeEmailDomainCd
			
			, d.ifmaZipCode
			, d.ifmaAddress1
			, d.ifmaAddress2
			, d.ifmaAddressReferences
			
			, e.ifnaSeq
			, (select ifnaName from infrNationality where ifnaSeq = e.ifnaSeq) as ifnaName
            , (select ifnaCode2Char from infrNationality where ifnaSeq = e.ifnaSeq) as ifnaCode2Char
			, (select ifnaCode3Char from infrNationality where ifnaSeq = e.ifnaSeq) as ifnaCode3Char
			
		FROM infrMember a
		LEFT JOIN infrMemberEmail b ON b.ifmmSeq = a.ifmmSeq AND b.ifmeDefaultNy = 1
		
		LEFT JOIN infrMemberAddress d ON d.ifmmSeq = a.ifmmSeq AND d.ifmaDefaultNy = 1
		LEFT JOIN infrMemberNationality e ON e.ifmmSeq = a.ifmmSeq AND e.ifmnDefaultNy = 1
		WHERE
			1=1
		AND a.ifmmSeq = 1;

select * from infrmembernationality;

select * from infrMember;

delete from infrMember where ifmmSeq = 47;




select * from infrMemberPhone;

update infrMemberPhone set ifmpNumber = '02-123-4567' where ifmpSeq >= 22 and ifmpDeviceCd=25;

use cpcpcp;
select * from infrMemberNote;

select
	ifntSeq
    , ifntContent
    , (select ifmmName from infrMember a where a.ifmmSeq = ifntWriterCd) as ifntWriter
    , regDateTime as noteDateTime
from 
	infrMemberNote
Where 
	ifmmSeq = 2
	and ifntUseNy = 1
    and ifntDelNy = 0
    ;

insert into infrMemberNote (
	ifmmSeq
    , ifntOrder
    , ifntContent
    , regDateTime
    , ifntWriterCd
    , ifntUseNy
    , ifntDelNy
) values (
	2
    , 4
    , 'YOU'
    , now()
    , 1
    , 1
    , 0
)
;

SELECT ifntSeq , ifntContent , (select ifmmName from infrMember a where a.ifmmSeq = ifntWriterCd) 
AS ifntWriter , regDateTime AS noteDateTime FROM infrMemberNote WHERE 1=1 AND ifmmSeq = '1' 
AND ifntUseNy = 1 AND ifntDelNy = 0 ;


	INSERT INTO
		infrMemberNote (
			ifmmSeq
			, ifntOrder
			, ifntContent
			, ifntWriterCd
			, regDateTime
            , ifntUseNy
            , ifntDelNy
		) VALUES (
			1
			, (select ifnull(max(a.ifntOrder),0) + 1 from infrMemberNote a where a.ifmmSeq = 1)
			, '방가3'
			, 1
			, now()
            , 1
            , 0
		)
        ;
        
SELECT @ifntOrder:=0;

SET @ifntOrder = 0;
UPDATE 
	infrMembernote 
    
SET 
   ifntOrder = @ifntOrder:=@ifntOrder+1 where ifmmSeq=2 ORDER BY ifntOrder    
;

select * from infrMemberNote;
use cpcpcp;
DELETE FROM
		infrMemberNote
	WHERE 1=1
		AND ifntOrder = 1
        AND ifmmSeq = 1;
        
use cpcpcp;
select * from infrMember;


select * from infrMemberNote;

select * from infrMember;
select * from infrMemberEmail;
select * from infrMemberPhone;
select * from infrmembernationality;
use cpcpcp;
select * from infrMember order by regDateTime;

update infrMember set regDateTime = ifmmRegDate where ifmmSeq>=1;
