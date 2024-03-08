import Foundation

let N = Int(readLine()!)!
var dp = Array(repeating: Array(repeating: 1, count: 10), count: N)

if N > 1 {
    for i in 1..<N {
        for j in 0..<10 {
            if j == 0 {
                dp[i][j] = dp[i - 1][j] % 10007
            } else {
                dp[i][j] = (dp[i - 1][j] + dp[i][j - 1]) % 10007
            }
        }
    }
}
print(dp[N - 1].reduce(0){ ($0 + $1) % 10007 })