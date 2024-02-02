import Foundation

let N = Int(readLine()!)!
let M = Int(readLine()!)!
var dp = Array(repeating: Array(repeating: 0, count: 31), count: 11)

for i in 1...M {
    dp[1][i] = 1
}

for i in 1...N {
    dp[i][i] = 1
}

if N > 1 {
    for i in 2...N {
        for j in i...M {
            dp[i][j] = dp[i][j - 1] + dp[i - 1][j - 1]
        }
    }
}

print(dp[N][M])