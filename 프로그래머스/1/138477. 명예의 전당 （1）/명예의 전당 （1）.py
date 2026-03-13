def solution(k, score):
    answer = []
    # 스코어 앞에서 빼고
    # 리스트에 넣어서 내림차순해서 밑에꺼 빼기
    li = []
    for s in score:
        li.append(s)
        li.sort(reverse=True)

        if len(li)>k:
            li.pop()
        
        answer.append(li[-1])
    return answer