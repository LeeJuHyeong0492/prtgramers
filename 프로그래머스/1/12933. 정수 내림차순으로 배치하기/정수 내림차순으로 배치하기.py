def solution(n):
    answer = 0
    li = sorted(str(n), reverse= True)
    s = "".join(li)
    return int(s)