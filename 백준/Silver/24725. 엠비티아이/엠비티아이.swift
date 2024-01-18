import Foundation

let N = 201
let M = 201
var Map = [[Character]](repeating: [Character](repeating: " ", count: M), count: N)

let dy = [-1, -1, -1, 0, 0, 1, 1, 1]
let dx = [-1, 0, 1, -1, 1, -1, 0, 1]

func find(_ y: Int, _ x: Int, _ stage: Int) -> Int {
    var cnt = 0
    for i in 0..<8 {
        var ny = y + dy[i]
        var nx = x + dx[i]
        if ny < 0 || nx < 0 || ny >= N || nx >= M {
            continue
        }
        if Map[ny][nx] == "N" || Map[ny][nx] == "S" {
            ny += dy[i]
            nx += dx[i]
            if ny < 0 || nx < 0 || ny >= N || nx >= M {
                continue
            }
            if Map[ny][nx] == "F" || Map[ny][nx] == "T" {
                ny += dy[i]
                nx += dx[i]
                if ny < 0 || nx < 0 || ny >= N || nx >= M {
                    continue
                }
                if Map[ny][nx] == "P" || Map[ny][nx] == "J" {
                    cnt += 1
                }
            }
        }
    }
    return cnt
}

func main() {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let N = input[0]
    let M = input[1]

    for i in 0..<N {
        let line = readLine()!
        for (j, char) in line.enumerated() {
            Map[i][j] = char
        }
    }

    var ans = 0
    for i in 0..<N {
        for j in 0..<M {
            if Map[i][j] == "E" || Map[i][j] == "I" {
                ans += find(i, j, 0)
            }
        }
    }
    print(ans)
}

main()
