def solution(N, stages):
    answer = []
    stage_count = [0]*(N+2)
    for s in stages:
        stage_count[s] += 1
    
    # 실패율 저장 딕셔너리
    fails = {}
    player_len = len(stages)

    # 실패율 계산
    for i in range(1,N+1):
        if player_len > 0:
            fails[i] = stage_count[i]/player_len
            player_len -= stage_count[i]
        else:
            fails[i] = 0

    # 실패율 내리차순

    return sorted(fails,key=lambda x: fails[x], reverse= True)