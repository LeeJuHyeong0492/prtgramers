def solution(s):
    answer = 0
    right = 0
    fail = 0
    first_ch = ""

    for c in s:
        if first_ch == "":
            first_ch = c

        if first_ch == c:
            right += 1
        else:
            fail += 1
        
        if right == fail:
            answer += 1
            first_ch = ""
            right = 0
            fail = 0
    
    if first_ch != "":
        answer += 1
    
    return answer