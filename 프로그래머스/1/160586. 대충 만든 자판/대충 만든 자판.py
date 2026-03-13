def solution(keymap, targets):
    answer = []
    min_press = {}

    for key in keymap:
        for i, ch in enumerate(key):
            if ch not in min_press or min_press[ch] > i +1:
                min_press[ch] = i+1

    for target in targets:
        total = 0
        for ch in target:
            if ch in min_press:
                total += min_press[ch]
            else:
                total = -1
                break
        answer.append(total)
    return answer