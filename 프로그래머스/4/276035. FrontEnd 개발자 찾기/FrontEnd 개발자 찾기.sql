-- 코드를 작성해주세요
with base as (
    select sum(CODE) as code_sum
    from SKILLCODES 
    where CATEGORY like "%Front End%"
)

select d.ID, d.EMAIL, d.FIRST_NAME, d.LAST_NAME
from DEVELOPERS d 
join base b on d.SKILL_CODE & b.code_sum  
order by d.ID

# DEVELOPERS 테이블에서 
# Front End 스킬을 가진 개발자의 정보를 조회하려 합니다. 조건에 맞는 
# 개발자의 ID, 이메일, 이름, 성을 조회하는 SQL 문을 작성해 주세요.
# 결과는 ID를 기준으로 오름차순 정렬해 주세요.