def solution(numbers):
    answer = -1
    all_num = [0,1,2,3,4,5,6,7,8,9]

    no_num = set(all_num) - set(numbers)

    return sum(no_num)