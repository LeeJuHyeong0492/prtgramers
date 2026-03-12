def solution(lottos, win_nums):
    answer = []
    
    rank = [6,6,5,4,3,2,1]

    cnt_match = len(set(lottos) & set(win_nums))

    cnt_zero = lottos.count(0)

    answer = [rank[cnt_match+cnt_zero],rank[cnt_match]]
    return answer