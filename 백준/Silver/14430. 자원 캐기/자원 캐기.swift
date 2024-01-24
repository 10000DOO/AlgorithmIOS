import Foundation

let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = NM[0]
let M = NM[1]
var dp = Array(repeating: Array(repeating: 0, count: M + 1), count: N + 1)
var board = [[Int]]()
var maxNum = 0

board.append(Array(repeating: 0, count: M + 1))
for _ in 0..<N {
    board.append([0] + readLine()!.split(separator: " ").map { Int(String($0))! })
}

for i in 1...N {
    for j in 1...M {
        dp[i][j] = max(dp[i - 1][j] + board[i][j], dp[i][j - 1] + board[i][j])
    }
}

for i in 1...N {
    for j in 1...M {
        maxNum = max(maxNum, dp[i][j])
    }
}

print(maxNum)