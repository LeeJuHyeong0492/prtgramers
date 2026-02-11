import java.util.*;

class Solution {
    public int solution(int[] numbers, int n) {
        int answer = 0;
        for (int s : numbers){
            if(answer > n){
                return answer;
            }
            answer += s;
        }
        return answer;
    }
}