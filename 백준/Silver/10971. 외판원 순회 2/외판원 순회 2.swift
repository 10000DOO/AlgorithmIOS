import Foundation

var arr = [[Int]](repeating: [Int](repeating: 0, count: 11), count: 11)
var check = [Bool](repeating: false, count: 11)
var n = 0
var m = 987654321

func input() {
    if let inputN = readLine(), let nValue = Int(inputN) {
        n = nValue
        for i in 0..<n {
            if let inputLine = readLine() {
                let row = inputLine.split(separator: " ").compactMap { Int($0) }
                for j in 0..<n {
                    arr[i][j] = row[j]
                }
            }
        }
    }
}

func dfs(start: Int, y: Int, sum: Int, cnt: Int) {
    if cnt == n && start == y {
        m = min(m, sum)
        return
    }

    for x in 0..<n {
        if arr[y][x] == 0 {
            continue
        }

        if !check[y] && arr[y][x] > 0 {
            check[y] = true
            var newSum = sum + arr[y][x]

            if newSum <= m {
                dfs(start: start, y: x, sum: newSum, cnt: cnt + 1)
            }

            check[y] = false
        }
    }
}

func solution() {
    for y in 0..<n {
        dfs(start: y, y: y, sum: 0, cnt: 0)
    }
}

func output() {
    print(m)
}

input()
solution()
output()
