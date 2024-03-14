import Foundation

let NM = readLine()!.split(separator: " ").map{ Int($0)! }
let N = NM[0]
let M = NM[1]
var visited = Array(repeating: Array(repeating: true, count: M), count: N)
var board = [[String]]()
var dx = [-1, 0, 1, 0]
var dy = [0, 1, 0, -1]
var result = ""
var count = 0

for i in 0..<N {
    let input = Array(readLine()!).map{ String($0) }
    for j in input.indices {
        if input[j] == "*" {
            visited[i][j] = false
        }
    }
    board.append(input)
}

for i in 0..<N {
    for j in 0..<M {
        if board[i][j] == "*" {
            var size = 1
            
            while true {
                if i - size < 0 || i + size >= N || j - size < 0 || j + size >= M {
                    if size - 1 > 0 {
                        result += "\(i + 1) \(j + 1) \(size - 1)\n"
                        count += 1
                    }
                    break
                } else {
                    if board[i - size][j] == "*" && board[i + size][j] == "*" && board[i][j - size] == "*" && board[i][j + size] == "*" {
                        visited[i - size][j] = true
                        visited[i + size][j] = true
                        visited[i][j - size] = true
                        visited[i][j + size] = true
                        visited[i][j] = true
                        size += 1
                    } else {
                        if size - 1 > 0 {
                            result += "\(i + 1) \(j + 1) \(size - 1)\n"
                            count += 1
                        }
                        break
                    }
                }
            }
        }
    }
}

let allTrue = visited.allSatisfy { row in
    row.allSatisfy { $0 == true }
}

if allTrue {
    print("\(count)\n" + result)
} else {
    print(-1)
}