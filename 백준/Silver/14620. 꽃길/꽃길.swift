import Foundation

let N = Int(readLine()!)!
var visited = [[Bool]](repeating: [Bool](repeating: false, count: N), count: N)
var cost = [[Int]]()
var result = 999999999
let dy = [-1, 1, 0, 0]
let dx = [0, 0, -1, 1]

func check(_ y: Int, _ x: Int) -> Bool {
    if visited[y][x] { return true }
    for i in 0..<4 {
        let ny = y + dy[i]
        let nx = x + dx[i]
        if visited[ny][nx] { return true }
    }
    return false
}

func used(_ y: Int, _ x: Int) -> Int {
    var tmp = 0
    visited[y][x] = true
    tmp += cost[y][x]
    for i in 0..<4 {
        let ny = y + dy[i]
        let nx = x + dx[i]
        visited[ny][nx] = true
        tmp += cost[ny][nx]
    }
    return tmp
}

func dfs(_ y: Int, _ x: Int, _ val: Int, _ depth: Int) {
    if depth == 3 {
        result = min(result, val)
        return
    }
    let temp = visited
    var i = y, j = x, c = 0
    while i < N - 1 {
        while j < N - 1 {
            if check(i, j) {
                j += 1
                continue
            }
            c = used(i, j)
            dfs(i, j + 1, val + c, depth + 1)
            visited = temp
            j += 1
        }
        j = 1
        i += 1
    }
}

for _ in 0..<N {
    let row = readLine()!.split(separator: " ").map { Int($0)! }
    cost.append(row)
}

dfs(1, 1, 0, 0)
print(result)
