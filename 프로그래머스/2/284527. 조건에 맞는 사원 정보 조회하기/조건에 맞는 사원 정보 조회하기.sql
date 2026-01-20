-- 코드를 작성해주세요
select sub.SCORE as "SCORE", e.EMP_NO, e.EMP_NAME, e.POSITION, e.EMAIL
from HR_EMPLOYEES e
join (select sum(SCORE) as "SCORE",EMP_NO
from HR_GRADE
group by EMP_NO
order by sum(SCORE) desc
limit 1) sub
    on e.EMP_NO = sub.EMP_NO

# HR_DEPARTMENT, HR_EMPLOYEES, HR_GRADE 테이블에서 
# 2022년도 한해 평가 점수가 가장 높은 사원 정보를 조회하려 합니다. 
# 2022년도 평가 점수가 가장 높은 사원들의 점수, 사번, 성명, 직책, 이메일을 조회하는 SQL문을 작성해주세요.
# 2022년도의 평가 점수는 상,하반기 점수의 합을 의미하고, 
# 평가 점수를 나타내는 컬럼의 이름은 SCORE로 해주세요.

