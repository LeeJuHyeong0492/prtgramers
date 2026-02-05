import java.util.*;

class Solution {
    public int solution(int[] numbers) {
        Map<Integer,Integer> map = new HashMap<>();
        int answer = 0;
        for (int i = 0; i < 10; i++) {
            map.put(i,0);
        }
        for (int n : numbers){
            map.put(n,1);
        }
        for(int key : map.keySet()){
            if(map.get(key) == 0){
                answer += key;
            }
        }

        return answer;
    }
}