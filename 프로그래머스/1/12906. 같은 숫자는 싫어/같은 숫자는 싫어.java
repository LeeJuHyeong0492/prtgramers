import java.util.*;

import java.util.*;

public class Solution {
    public int[] solution(int []arr) {
        
        Deque<Integer> stack = new ArrayDeque<>();
        Deque<Integer> stack1 = new ArrayDeque<>();
        for (int n : arr){
            stack.push(n);
        }
        while (!stack.isEmpty()){
            if(!Objects.equals(stack1.peek(), stack.peek())){
                stack1.push(stack.pop());
            }else {
                stack.pop();
            }
        }
        int[] answer = new int[stack1.size()];
        for (int i = 0; i < answer.length; i++) {
            answer[i] = stack1.pop();
        }
        
        // [실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
        System.out.println("Hello Java");

        return answer;
    }
}
