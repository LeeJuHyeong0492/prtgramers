def solution(price, money, count):
    answer = 0
    sum_m = 0
    for i in range(count):
        sum_m += price*(i+1)
    answer = max(0,(sum_m-money))
    return answer