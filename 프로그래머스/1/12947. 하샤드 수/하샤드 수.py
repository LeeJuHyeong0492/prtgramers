def solution(x):
    
    sum_li = sum(int(i) for i in str(x))
    
    if x%sum_li == 0:
        return True
    else:
        return False