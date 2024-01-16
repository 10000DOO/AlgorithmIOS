import Foundation

let N = Int(readLine()!)!

if N < 2 {
    print(1)
    exit(0)
}
var dp = Array(repeating: 0, count: N + 1)

dp[0] = 1
dp[1] = 1

for i in 2...N {
    dp[i] = (dp[i - 1] + dp[i - 2] + 1) % 1000000007
}

print(dp[N])