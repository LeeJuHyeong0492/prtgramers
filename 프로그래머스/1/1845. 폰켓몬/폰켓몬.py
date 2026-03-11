def solution(nums):
    pick_count= len(nums)//2
    type_count = len(set(nums))
    
    answer = min(pick_count,type_count)
    return answer

