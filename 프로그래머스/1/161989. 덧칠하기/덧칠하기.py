def solution(n, m, section):
    answer = 0
    last_paintpos = 0
    for s in section:
        if s > last_paintpos:
            answer += 1
            last_paintpos = s + m -1
    return answer