-- 코드를 입력하세요
SELECT a.APNT_NO,p.PT_NAME,a.PT_NO,a.MCDP_CD,d.DR_NAME,a.APNT_YMD
from APPOINTMENT a
join PATIENT p
    on a.PT_NO = p.PT_NO
join DOCTOR d
    on d.DR_ID = a.MDDR_ID
where date_format(a.APNT_YMD,"%Y-%m-%d") in ('2022-04-13') and a.APNT_CNCL_YN = 'N' and a.MCDP_CD = 'CS'
order by a.APNT_YMD
# 
# ,
# PT_NAME,DR_NAME	

# APNT_YMD APNT_NO PT_NO MCDP_CD
# PATIENT, DOCTOR 그리고 APPOINTMENT 테이블에서 
# 2022년 4월 13일 취소되지 않은 흉부외과(CS) 진료 예약 내역을 조회하는 SQL문을 작성해주세요. 