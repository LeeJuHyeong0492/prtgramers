import java.util.*;

class Solution {
    public int[] solution(int[] num_list, int n) {
        int a = 0;
        if((num_list.length%n) == 0){
            a = (num_list.length/n);
        }else {
            a = (num_list.length/n)+1;
        }
        
        int[] answer = new int[a];
        int idx = 0;
        for (int i = 0; i < num_list.length; i = i+n) {
            answer[idx++] = num_list[i];
        }
        return answer;
    }
}