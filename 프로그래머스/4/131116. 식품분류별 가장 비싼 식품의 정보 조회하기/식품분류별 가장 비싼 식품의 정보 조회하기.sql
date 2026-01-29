-- 코드를 입력하세요
with base as (SELECT CATEGORY,max(PRICE) as max_p
from FOOD_PRODUCT
where CATEGORY in("과자","국","김치","식용유")
group by CATEGORY
)

select f.CATEGORY, f.PRICE as MAX_PRICE, f.PRODUCT_NAME
from FOOD_PRODUCT f
join base b
    on b.CATEGORY = f.CATEGORY
where f.PRICE = b.max_p
order by f.PRICE desc

# FOOD_PRODUCT 테이블에서 식품분류별로 
# 가격이 제일 비싼 식품의 분류, 가격, 이름을 조회하는 SQL문을 작성해주세요. 
# 이때 식품분류가 '과자', '국', '김치', '식용유'인 경우만 출력시켜 주시고 
# 결과는 식품 가격을 기준으로 내림차순 정렬해주세요.