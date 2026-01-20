-- 코드를 입력하세요
SELECT MCDP_CD as '진료과 코드', count(APNT_YMD) as '5월예약건수'
from APPOINTMENT
where APNT_YMD >= "2022-05-01"
 and APNT_YMD < "2022-06-01"
group by MCDP_CD
order by count(APNT_YMD), MCDP_CD

# APPOINTMENT 테이블에서 2022년 5월에 예약한 환자 수를 진료과코드 별
# 로 조회하는 SQL문을 작성해주세요. 이때, 
# 컬럼명은 '진료과 코드', '5월예약건수'로 지정
# 해주시고 결과는 진료과별 예약한 환자 수를 기준으로 오름차순 정렬하고, 
# 예약한 환자 수가 같다면 진료과 코드를 기준으로 오름차순 정렬해주세요.