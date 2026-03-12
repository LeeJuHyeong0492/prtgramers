def solution(k, m, score):
    answer = 0
    # 스코어 정렬하고 팝해서 빼주면서 채워주고
    score = sorted(score)
    cnt_epoch = len(score)//m
    li = []
    for i in range(cnt_epoch):
        for j in range(m):
            li.append(score.pop())
        min_v = min(li)
        answer += min_v * m
        li = []
        
    return answer