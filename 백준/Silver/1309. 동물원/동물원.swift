import Foundation

let N = Int(readLine()!)!
var dp = Array(repeating: 1, count: 100001)

dp[1] = 3

if N == 1 {
    print(3)
    exit(0)
}

if N > 1 {
    for i in 2...N {
        dp[i] = (dp[i - 1] * 2 + dp[i - 2]) % 9901
    }
    
    print(dp[N] % 9901)
}