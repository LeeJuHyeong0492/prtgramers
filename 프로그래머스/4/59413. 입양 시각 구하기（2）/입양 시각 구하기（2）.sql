# select hour(p.DATETIME),count(*)
# from ANIMAL_OUTS p
# left outer join ANIMAL_OUTS c
#     on p.DATETIME = c.DATETIME
# group by hour(c.DATETIME)
# order by hour(c.DATETIME)

# select *
# from ANIMAL_OUTS

# WITH RECURSIVE hours AS (
#     SELECT 0 AS hour
#     UNION ALL
#     SELECT hour + 1
#     FROM hours
#     WHERE hour < 23
# )
# SELECT
#     h.hour AS HOUR,
#     COUNT(a.ANIMAL_ID) AS COUNT
# FROM hours h
# LEFT JOIN ANIMAL_OUTS a
#     ON HOUR(a.DATETIME) = h.hour
# GROUP BY h.hour
# ORDER BY h.hour;


# with recursive hours as(
# SELECT 0 AS hour
#     UNION ALL
#     SELECT hour + 1
#     FROM hours
#     WHERE hour < 23
# )
# select hour
# from hours







# 보호소에서는 몇 시에 입양이 가장 활발하게 일어나는지 알아보려 합니다. 
# 0시부터 23시까지, 각 시간대별로
# 입양이 몇 건이나 발생했는지 조회하는 SQL문을 작성해주세요. 이때 결과는 
# 시간대 순으로 정렬해야 합니다.

with recursive hour_24 as (
    select 0 as n
    union all
    
    select n+1
    from hour_24
    where n < 23
)

select h.n as HOUR, count(DATETIME) as COUNT
from ANIMAL_OUTS o
right join hour_24 h on h.n = hour(o.DATETIME)
group by h.n
order by h.n
