import Foundation

let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = NM[0]
let M = NM[1]
var map = [[Int]]()
var dp = Array(repeating: Array(repeating: 0, count: M), count: N)

for i in 0..<N {
    map.append(readLine()!.split(separator: " ").map { Int(String($0))! })
}

dp[0][0] = map[0][0]

for i in 0..<N {
    for j in 0..<M {
        if i - 1 >= 0 && j - 1 >= 0 {
            dp[i][j] = max(max(dp[i - 1][j - 1] + map[i][j], dp[i - 1][j] + map[i][j]), dp[i][j - 1] + map[i][j])
        }
        if i - 1 >= 0 && j - 1 < 0 {
            dp[i][j] = dp[i - 1][j] + map[i][j]
        }
        if i - 1 < 0 && j - 1 >= 0 {
            dp[i][j] = dp[i][j - 1] + map[i][j]
        }
    }
}

print(dp[N - 1][M - 1])