-- 코드를 입력하세요
with base as (
    SELECT count(*) as total_user
    from USER_INFO
    where year(JOINED) in (2021)
)

select year(s.SALES_DATE) as YEAR, month(s.SALES_DATE) as MONTH, count(distinct s.USER_ID) as PURCHASED_USERS, round(count(distinct s.USER_ID)/(select total_user from base),1) as PUCHASED_RATIO
from USER_INFO i
join ONLINE_SALE s on i.USER_ID =s.USER_ID
where year(i.JOINED) in (2021)
group by month(s.SALES_DATE)
order by YEAR,MONTH

# USER_INFO 테이블과 ONLINE_SALE 테이블에서 
# 2021년에 가입한 전체 회원들 중 
# 상품을 구매한 회원수와 상품을 구매한 회원의 비율(=2021년에 가입한 회원 중 상품을 구매한 회원수 / 2021년에 가입한 전체 회원 수)을 
# 년, 월 별로 출력하는 SQL문을 작성해주세요. 
# 상품을 구매한 회원의 비율은 소수점 두번째자리에서 반올림하고, 
# 전체 결과는 년을 기준으로 오름차순 정렬해주시고 년이 같다면 
# 월을 기준으로 오름차순 정렬해주세요.