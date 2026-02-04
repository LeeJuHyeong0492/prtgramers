import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

class Solution {
    public int solution(int[] nums) {
        HashSet<Integer> set = new HashSet<>();
        for(int n: nums){
            set.add(n);
        }
        
        int answer = Math.min(set.size(),nums.length/2);
        return answer;
    }
}