def solution(a, b, n):
    answer = 0

    while n >= a:
        new_cola = (n//a)*b
        remain_bo = n % a
        answer += new_cola
        n = new_cola + remain_bo
    return answer