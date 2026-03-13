def solution(s):
    answer = []
    last_pos = {}
    for i, ch in enumerate(s):
        if ch in last_pos:
            answer.append(i - last_pos[ch])
        else:
            answer.append(-1)
        
        last_pos[ch] = i
    return answer