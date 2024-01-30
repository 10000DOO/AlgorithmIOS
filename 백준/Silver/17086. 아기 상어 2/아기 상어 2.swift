import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let m = input[1]
let dx = [-1, -1, -1, 0, 1, 0, 1, 1]
let dy = [-1, 0, 1, 1, 1, -1, 0, -1]

var sharkList = [[Int]]()
for _ in 0..<n {
    sharkList.append(readLine()!.split(separator: " ").map { Int($0)! })
}

var ans = 0

for i in 0..<n {
    for j in 0..<m {
        if sharkList[i][j] == 0 {
            ans = max(ans, bfs(x: i, y: j))
        }
    }
}

func bfs(x: Int, y: Int) -> Int {
    var visited = Array(repeating: Array(repeating: false, count: m), count: n)
    var queue = [(x, y, 0)]
    visited[x][y] = true

    while !queue.isEmpty {
        let (x, y, distance) = queue.removeFirst()

        for i in 0..<8 {
            let nx = x + dx[i]
            let ny = y + dy[i]

            if 0 <= nx && nx < n && 0 <= ny && ny < m && !visited[nx][ny] {
                if sharkList[nx][ny] == 0 {
                    queue.append((nx, ny, distance + 1))
                    visited[nx][ny] = true
                } else {
                    return distance + 1
                }
            }
        }
    }

    return 0
}

print(ans)