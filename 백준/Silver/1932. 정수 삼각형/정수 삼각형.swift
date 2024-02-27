import Foundation

let N = Int(readLine()!)!
var triangle = [[Int]]()
var dp = Array(repeating: Array(repeating: 0, count: N), count: N)
for _ in 0..<N {
    triangle.append(readLine()!.split(separator: " ").map { Int($0)! })
}

dp[0][0] = triangle[0][0]

for i in 1..<N {
    for j in 0...i {
        if j == 0 {
            dp[i][j] = dp[i - 1][j] + triangle[i][j]
        } else if j == i {
            dp[i][j] = dp[i - 1][j - 1] + triangle[i][j]
        } else {
            dp[i][j] = max(dp[i - 1][j] + triangle[i][j], dp[i - 1][j - 1] + triangle[i][j])
        }
    }
}

print(dp[N - 1].max()!)