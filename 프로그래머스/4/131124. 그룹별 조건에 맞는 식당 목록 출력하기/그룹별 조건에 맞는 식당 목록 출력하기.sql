-- 코드를 입력하세요
with base as (
    select count(MEMBER_ID) as m_count, MEMBER_ID
    from REST_REVIEW
    group by MEMBER_ID),
count_rank as (
    SELECT rank() over( order by m_count desc) as rnk, MEMBER_ID,m_count
    from base)

select m.MEMBER_NAME, r.REVIEW_TEXT, date_format(r.REVIEW_DATE,"%Y-%m-%d") as REVIEW_DATE
from MEMBER_PROFILE m
join count_rank c on c.MEMBER_ID = m.MEMBER_ID
join REST_REVIEW r on r.MEMBER_ID = m.MEMBER_ID
where c.rnk = 1
order by r.REVIEW_DATE, r.REVIEW_TEXT

# MEMBER_PROFILE와 REST_REVIEW 테이블에서 
# 리뷰를 가장 많이 작성한 회원의 리뷰들을 조회하는 SQL문을 작성해주세요. 
# 회원 이름, 리뷰 텍스트, 리뷰 작성일이 출력되도록 작성해주시고, 
# 결과는 리뷰 작성일을 기준으로 오름차순, 리뷰 작성일이 같다면 
# 리뷰 텍스트를 기준으로 오름차순 정렬해주세요.