-- 코드를 작성해주
# select 
#     case when SKILL_CODE & (select sum(s.CODE) from SKILLCODES s where CATEGORY like "%Front End%") and SKILL_CODE & (select s.CODE from SKILLCODES s where  NAME like "Python") then "A"
#     when SKILL_CODE & (select s.CODE from SKILLCODES s where  NAME like "C#") then "B"
#     when SKILL_CODE & (select sum(s.CODE) from SKILLCODES s where  CATEGORY like "%Front End%") then "C" end as GRADE, ID, EMAIL
# from DEVELOPERS
# # group by ID, EMAIL
# order by GRADE, ID

with base as (select 
    case when SKILL_CODE & (select sum(s.CODE) from SKILLCODES s where CATEGORY like "%Front End%") and SKILL_CODE & (select s.CODE from SKILLCODES s where  NAME like "Python") then "A"
    when SKILL_CODE & (select s.CODE from SKILLCODES s where  NAME like "C#") then "B"
    when SKILL_CODE & (select sum(s.CODE) from SKILLCODES s where  CATEGORY like "%Front End%") then "C" end as GRADE, ID, EMAIL
from DEVELOPERS
# group by ID, EMAIL
order by GRADE, ID)

select b.GRADE, b.ID,b.EMAIL
from base b
where b.GRADE is not null








# # A : Front End 스킬과 Python 스킬을 함께 가지고 있는 개발자
# select s.CODE from SKILLCODES s where CATEGORY like "%Front End%"
# select s.CODE from SKILLCODES s where  NAME like "Python"

# # B : C# 스킬을 가진 개발자
# select s.CODE from SKILLCODES s where  NAME like "C#"

# # C : 그 외의 Front End 개발자
# select s.CODE from SKILLCODES s where  CATEGORY like "%Front End%"

# D165	Jerami	Edwards	jerami_edwards@grepp.co	400
# D161	Carsen	Garza	carsen_garza@grepp.co	2048
# D164	Kelly	Grant	kelly_grant@grepp.co	1024
# D163	Luka	Cory	luka_cory@grepp.co	16384
# D162	Cade	Cunningham	cade_cunningham@grepp.co	8452