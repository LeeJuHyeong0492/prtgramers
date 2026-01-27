-- 코드를 입력하세요
with sum_t as (SELECT FOOD_TYPE as ty,max(FAVORITES) as max_sum
from REST_INFO
group by FOOD_TYPE)

select FOOD_TYPE,REST_ID,REST_NAME,FAVORITES
from REST_INFO,sum_t
where FAVORITES = sum_t.max_sum and FOOD_TYPE = sum_t.ty
order by FOOD_TYPE desc


# order by FOOD_TYPE desc


# REST_INFO 테이블에서 음식종류별로 
# 즐겨찾기수가 가장 많은 식당의 음식 종류, ID, 식당 이름, 즐겨찾기수를 조회하는 SQL문을 작성해주세요. 
# 이때 결과는 음식 종류를 기준으로 내림차순 정렬해주세요.