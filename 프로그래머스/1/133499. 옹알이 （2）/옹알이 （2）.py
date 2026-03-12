def solution(babbling):
    answer = 0
    can = ["aya", "ye", "woo", "ma"]

    for s in babbling:
        for c in can:
           if c*2 in s:
               break
           
           s = s.replace(c," ")
        
        if s.strip() == "":
            answer += 1
    return answer