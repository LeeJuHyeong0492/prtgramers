def solution(phone_number):
    answer = ''
    star = '*'*(len(phone_number)-4)
    raw_num = phone_number[-4:]
    return star + raw_num