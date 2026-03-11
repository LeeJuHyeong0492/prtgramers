def solution(arr, divisor):
    answer = sorted([num for num in arr if num % divisor == 0])

    return answer if len(answer) != 0 else [-1]
