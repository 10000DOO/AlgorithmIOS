import Foundation

let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = NM[0]
let M = NM[1]
var board = [[Int]]()
var result = 0
let limit = min(N, M)

for _ in 0..<N {
    board.append(readLine()!.map { Int(String($0))! })
}

for i in 0..<N {
    for j in 0..<M {
        for k in 0..<limit {
            if i + k < N && j + k < M {
                if board[i][j] == board[i + k][j] && board[i + k][j] == board[i + k][j + k] && board[i + k][j + k] == board[i][j + k] {
                    result = max(result, (k + 1) * (k + 1))
                }
            } else {
                break
            }
        }
    }
}

print(result)