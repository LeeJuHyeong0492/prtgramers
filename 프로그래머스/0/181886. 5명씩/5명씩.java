import java.util.*;

class Solution {
    public String[] solution(String[] names) {

        int num = (names.length+4)/5;
        if(num == 0){
            num = 1;
        }
        String[] answer = new String[num];
        int idx = 0;
        for (int i = 0; i < num; i++) {
            answer[i] = names[idx];
            idx +=5;
        }
        return answer;
    }
}