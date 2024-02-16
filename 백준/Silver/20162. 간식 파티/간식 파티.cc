#include<bits/stdc++.h>
using namespace std;
int dp[1001];
int eat[1001];
int main()
{
	ios_base::sync_with_stdio(false); cin.tie(NULL); cout.tie(NULL);
	int n;
	cin >> n;
	for (int i = 1; i <= n; i++) {
		cin >> eat[i];
	}
	dp[1] = eat[1];
	int ans = dp[1];
	for (int i = 2; i <= n; i++) {
		dp[i] = eat[i];
 		for (int j = 1; j < i; j++) {
			if (eat[j] < eat[i]) {
				dp[i] = max(dp[i], dp[j] + eat[i]);
			}
		}
		ans = max(ans, dp[i]);
	}
	cout << ans; 
}