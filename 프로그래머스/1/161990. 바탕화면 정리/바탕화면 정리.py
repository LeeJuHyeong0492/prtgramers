def solution(wallpaper):
    answer = []
    x_set = set()
    y_set = set()

    for i in range(len(wallpaper)):
        for j in range(len(wallpaper[i])):
            if wallpaper[i][j] == "#":
                y_set.add(j)
                x_set.add(i)
                print(i,end=",")
                print(j)

    answer.append(min(x_set))
    answer.append(min(y_set))
    answer.append(max(x_set)+1)
    answer.append(max(y_set)+1)
    return answer

# . 빈칸 # 파일있음