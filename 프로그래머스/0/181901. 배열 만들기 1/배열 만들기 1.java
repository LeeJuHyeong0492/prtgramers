import java.util.*;

class Solution {
    public int[] solution(int n, int k) {
        
        int lenght = n/k;
        int[] answer = new int[lenght];
        for (int i = 0; i < lenght; i++) {
            answer[i] = (i+1)*k;
        }
        return answer;
    }
}