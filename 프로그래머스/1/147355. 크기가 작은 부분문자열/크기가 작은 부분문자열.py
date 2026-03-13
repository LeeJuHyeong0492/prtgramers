def solution(t, p):
    answer = 0
    l = len(p)
    words = [t[i:i+l] for i in range(0,len(t)-l+1)]
    print(words)
    for word in words:
        if int(word)<=int(p):
            answer +=1
    return answer