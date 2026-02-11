-- 코드를 입력하세요
with base as (
    select c.CAR_ID, c.CAR_TYPE, c.DAILY_FEE
    from CAR_RENTAL_COMPANY_CAR c
    where c.CAR_TYPE in ("SUV","세단") and
        not exists (
            select 1
            from CAR_RENTAL_COMPANY_RENTAL_HISTORY h
            where c.CAR_ID = h.CAR_ID and
                h.START_DATE <= "2022-11-30" and
                h.END_DATE >= "2022-11-01"
        )
), base_cal as (
    select c.CAR_ID, c.CAR_TYPE, (c.DAILY_FEE*30)*(1-(p.DISCOUNT_RATE*0.01)) as FEE
    from CAR_RENTAL_COMPANY_DISCOUNT_PLAN p
    join base c on c.CAR_TYPE = p.CAR_TYPE
    where p.DURATION_TYPE like "%30%"
)

select c.CAR_ID, c.CAR_TYPE, round(c.FEE,0) as FEE
from base_cal c
where c.FEE >= 500000 and c.FEE < 2000000
order by c.FEE desc, c.CAR_TYPE, c.CAR_ID desc


# 자동차 종류가 '세단' 또는 'SUV' 인 자동차 중 
# 2022년 11월 1일부터 2022년 11월 30일까지 대여 가능하고 
# 30일간의 대여 금액이 50만원 이상 200만원 미만인 자동차에 대해서 
# 자동차 ID, 자동차 종류, 대여 금액(컬럼명: FEE) 리스트를 출력하는 SQL문을 작성해주세요. 
# 결과는 대여 금액을 기준으로 내림차순 정렬하고, 
# 자동차 종류를 기준으로 오름차순 정렬, 자동차 종류까지 같은 경우
# 자동차 ID를 기준으로 내림차순 정렬해주세요.