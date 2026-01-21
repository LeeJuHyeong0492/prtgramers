-- 코드를 작성해주세요

# FISH_INFO에서 평균 길이가 33cm 이상인 물고기들을 
# 종류별로 분류하여 잡은 수, 최대 길이, 물고기의 종류를 출력하는 SQL문을 작성해주세요. 
# 결과는 물고기 종류에 대해 오름차순으로 정렬해주시고, 
# 10cm이하의 물고기들은 10cm로 취급하여 평균 길이를 구해주세요.

# 평균길이가 33이상
select count(ifnull(LENGTH,10)) as FISH_COUNT, max(ifnull(LENGTH,10)) as MAX_LENGTH, FISH_TYPE
from FISH_INFO
group by FISH_TYPE
having avg(ifnull(LENGTH,10)) >= 33
order by FISH_TYPE
# select ifnull(LENGTH,10)
# from FISH_INFO

# 종류별로 잡은수 최대길이 물고기 종류

# select FISH_TYPE,FISH_COUNT,MAX_LENGTH