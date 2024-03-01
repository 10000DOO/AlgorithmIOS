import Foundation

let N = Int(readLine()!)!
var wine = Array(repeating: 0, count: 10001)
var dp = Array(repeating: 0, count: 10001)

for i in 1...N {
    wine[i] = Int(readLine()!)!
}

dp[1] = wine[1]
dp[2] = wine[1] + wine[2]

if N > 2 {
    for i in 3...N {
        dp[i] = max(dp[i - 1], max(dp[i - 2] + wine[i], dp[i - 3] + wine[i - 1] + wine[i]))
    }
}

print(dp[N])