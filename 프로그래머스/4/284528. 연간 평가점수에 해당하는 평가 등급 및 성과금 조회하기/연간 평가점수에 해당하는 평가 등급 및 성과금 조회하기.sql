-- 코드를 작성해주세요

with base_score as (
    select sum(SCORE)/2 as score,EMP_NO
    from HR_GRADE
    group by EMP_NO),
    base_grade as (
    select 
        case when s.score >= 96 then 'S'
        when s.score >= 90 then 'A'
        when s.score >= 80 then 'B'
        else 'C' end as grade,
        s.EMP_NO,
        case when s.score >= 96 then 0.2
        when s.score >= 90 then 0.15
        when s.score >= 80 then 0.1
        else 0 end as bo
    from base_score s)

select g.EMP_NO, e.EMP_NAME, g.grade, (e.SAL*g.bo) as BONUS
from base_grade g
join HR_EMPLOYEES e on e.EMP_NO = g.EMP_NO
order by g.EMP_NO

# score	EMP_NO
# 88	2017002
# 89	2018001
# 87.5	2019001
# 90.5	2020002
# 86.5	2020005