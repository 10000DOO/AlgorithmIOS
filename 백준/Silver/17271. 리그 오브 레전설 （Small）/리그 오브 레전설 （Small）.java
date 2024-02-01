import java.util.*;
import java.io.*;
import java.math.*;

public class Main {
	public static void main(String[] args) throws Exception{
		Scanner sc = new Scanner(System.in);
		int N = sc.nextInt();
		int M = sc.nextInt();
		int[] dp = new int[Math.max(2,N+1)];
		dp[0] = 1; // i == M일때 B가 추가되는 경우의 수 때문에 1로 채웁니다.
		dp[1] = 1;
		int divNum = 1_000_000_007;
		for (int i = 2; i <= N; i++) {
			if(i<M) {				
				dp[i] = dp[i-1]%divNum;
			}else {
				dp[i] = (dp[i-1] + dp[i-M])%divNum;
			}
		}
		System.out.println(dp[N]);
//		System.out.println(Arrays.toString(dp));
		
	}
	
}