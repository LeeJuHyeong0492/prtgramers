-- 코드를 입력하세요
with ain as (SELECT ANIMAL_ID, ANIMAL_TYPE, NAME
from ANIMAL_INS
where SEX_UPON_INTAKE like "%Intact%"),
aout as (
select ANIMAL_ID, ANIMAL_TYPE, NAME
from ANIMAL_OUTS
where SEX_UPON_OUTCOME not like "%Intact%")

select i.ANIMAL_ID, i.ANIMAL_TYPE, i.NAME
from ain i
join aout o on i.ANIMAL_ID = o.ANIMAL_ID
order by i.ANIMAL_ID

# 보호소에서 중성화 수술을 거친 동물 정보를 알아보려 합니다. 
# 보호소에 들어올 당시에는 중성화되지 않았지만, 
# 보호소를 나갈 당시에는 중성화된 동물의 
# 아이디와 생물 종, 이름을 조회하는 
# 아이디 순으로 조회하는 SQL 문을 작성해주세요.

# Intact  중성화안된

