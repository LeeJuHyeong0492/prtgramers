def solution(board, moves):
    answer = 0
    basket = []

    for m in moves:
        move = m-1
        for l in range(len(board)):
            if board[l][move] != 0:
                doll = board[l][move]
                board[l][move] = 0

                if basket and (basket[-1] == doll):
                    basket.pop()
                    answer += 2
                else:
                    basket.append(doll)
                break
    
    return answer