import Foundation

let N = Int(readLine()!)!
var dp = Array(repeating: 0, count: N + 1)

if N >= 1 {
    dp[1] = 1
}
if N >= 2 {
    dp[2] = 2
}

if N >= 3 {
    for i in 3...N {
        dp[i] = (dp[i - 1] + dp[i - 2]) % 10007
    }
}

print(dp[N])