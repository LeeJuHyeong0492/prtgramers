import java.util.*;

class Solution {
    public int solution(int n, int[] lost, int[] reserve) {
        int[] to = new int[n + 1];

        for (int l : lost) to[l]--;
        for (int r : reserve) to[r]++;

        for (int i = 1; i <= n; i++) {
            if (to[i] == -1) {
                if (i > 1 && to[i - 1] == 1) {
                    to[i]++;
                    to[i - 1]--;
                } else if (i < n && to[i + 1] == 1) {
                    to[i]++;
                    to[i + 1]--;
                }
            }
        }

        int answer = 0;
        for (int i = 1; i <= n; i++) {
            if (to[i] >= 0) answer++;
        }

        return answer;
    }
}
