import Foundation

let N = Int(readLine()!)!
var L = readLine()!.split(separator: " ").map { Int($0)! }
var J = readLine()!.split(separator: " ").map { Int($0)! }
L = [0] + L
J = [0] + J

var dp = Array(repeating: Array(repeating: 0, count: 101), count: N + 1)

for i in 1...N {
    for j in 1...100 {
        if L[i] <= j {
            dp[i][j] = max(dp[i-1][j], dp[i-1][j-L[i]] + J[i])
        } else {
            dp[i][j] = dp[i-1][j]
        }
    }
}

print(dp[N][99])