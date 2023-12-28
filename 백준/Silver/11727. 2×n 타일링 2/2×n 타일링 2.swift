import Foundation

let N = Int(readLine()!)!
var dp = Array(repeating: 0, count: N + 1)

if N >= 1 {
    dp[1] = 1
}

if N >= 2 {
    dp[2] = 3
}

if N >= 3 {
    dp[3] = 5
}

if N >= 4 {
    for i in 4...N {
        dp[i] = (dp[i - 1] + 2 * dp[i - 2]) % 10007
    }
}

print(dp[N])