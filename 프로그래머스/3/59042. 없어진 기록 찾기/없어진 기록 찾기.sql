-- 코드를 입력하세요
SELECT o.ANIMAL_ID, o.NAME
from ANIMAL_INS i
right outer join ANIMAL_OUTS o
    on i.ANIMAL_ID = o.ANIMAL_ID
where i.ANIMAL_ID is null
order by o.ANIMAL_ID

# 천재지변으로 인해 일부 데이터가 유실되었습니다. 
# 입양을 간 기록은 있는데, 보호소에 들어온 기록이 없는 
# 동물의 ID와 이름을 ID 순으로 조회하는 SQL문을 작성해주세요.

# out엔 있고 in에 없으면 데이터 유실로 판단