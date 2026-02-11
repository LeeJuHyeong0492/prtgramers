import java.util.*;

class Solution {
    public int solution(int[] num_list) {
        int answer = 0;
        int pl = 0;
        if (num_list.length >= 11){
            pl = 1;
        }
        for (int n : num_list){
            if (pl == 1){
                answer += n;
            }else {
                answer = answer*n;
                if(answer ==0){
                    answer = n;
                }
                
            }
        }
        return answer;
    }
}