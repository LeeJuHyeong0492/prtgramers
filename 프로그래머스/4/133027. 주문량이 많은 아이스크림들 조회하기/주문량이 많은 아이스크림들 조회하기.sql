-- 코드를 입력하세요
select j.FLAVOR
from JULY j
join FIRST_HALF f on f.FLAVOR = j.FLAVOR
group by j.FLAVOR
order by sum(j.TOTAL_ORDER)+f.TOTAL_ORDER desc
limit 3

# 740 3100

# 7월 아이스크림 총 주문량과 
# 상반기의 아이스크림 총 주문량을 더한 값이
# 큰 순서대로 상위 3개의 맛을 조회하는 SQL 문을 작성해주세요.