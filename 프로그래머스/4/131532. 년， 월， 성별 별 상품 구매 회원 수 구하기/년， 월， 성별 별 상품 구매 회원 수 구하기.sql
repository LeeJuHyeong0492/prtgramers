-- 코드를 입력하세요

select year(o.SALES_DATE), month(o.SALES_DATE), i.GENDER, count(distinct o.USER_ID) as USERS
from  USER_INFO i
join ONLINE_SALE o
    on i.USER_ID = o.USER_ID
where i.GENDER is not null
group by year(o.SALES_DATE),month(o.SALES_DATE),i.GENDER
order by year(o.SALES_DATE),month(o.SALES_DATE),i.GENDER

# USER_INFO 테이블과 ONLINE_SALE 테이블에서 
# 년, 월, 성별 별로 상품을 구매한 회원수를 집계하는 SQL문을 작성해주세요. 
# 결과는 년, 월, 성별을 기준으로 오름차순 정렬해주세요. 이때, 
# 성별 정보가 없는 경우 결과에서 제외해주세요.