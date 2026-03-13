def solution(cards1, cards2, goal):
    # 각 카드 뭉치에서 뽑을 순서를 가리키는 '포인터'
    idx1 = 0
    idx2 = 0
    
    for word in goal:
        # 1. cards1의 현재 순서(idx1)가 단어와 일치하는지 확인
        if idx1 < len(cards1) and cards1[idx1] == word:
            idx1 += 1 # 일치하면 다음 카드로 이동
            
        # 2. cards2의 현재 순서(idx2)가 단어와 일치하는지 확인
        elif idx2 < len(cards2) and cards2[idx2] == word:
            idx2 += 1 # 일치하면 다음 카드로 이동
            
        # 3. 둘 다 일치하지 않으면 이 조합은 실패!
        else:
            return "No"
            
    # 모든 단어를 순서대로 잘 찾았다면 성공
    return "Yes"