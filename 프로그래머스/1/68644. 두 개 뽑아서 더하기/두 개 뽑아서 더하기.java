import java.util.*;

class Solution {
    public int[] solution(int[] numbers) {

        Set<Integer> set = new HashSet<>();
        for (int i = 0; i < numbers.length; i++) {
            for (int j = i+1; j < numbers.length; j++) {
                set.add(numbers[i]+numbers[j]);
            }
        }
        int[] answer = new int[set.size()];
        int idx = 0;
        for (int n : set){
            answer[idx++] = n;
        }
        
        Arrays.sort(answer);
        return answer;
    }
}

/*
* 이걸 하나씩 빼서 더해서 값을 set에 넣으면서 중복값을 줄이고 리턴해주는 형태로
* */