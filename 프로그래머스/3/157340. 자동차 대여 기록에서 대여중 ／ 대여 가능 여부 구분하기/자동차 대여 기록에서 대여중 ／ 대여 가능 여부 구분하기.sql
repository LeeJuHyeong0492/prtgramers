-- 코드를 입력하세요
SELECT CAR_ID,
    case when  max( case 
                when START_DATE <= '2022-10-16' and '2022-10-16' <= END_DATE
                then 1
                else 0 end ) = 1  then "대여중"
        else "대여 가능" end as AVAILABILITY
from CAR_RENTAL_COMPANY_RENTAL_HISTORY 
group by CAR_ID
order by CAR_ID desc
