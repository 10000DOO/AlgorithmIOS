import Foundation

let N = Int(readLine()!)!
let M = Int(readLine()!)!
var rooms = Array(repeating: 0, count: N + 1)

for _ in 0..<M {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let x = input[0]
    let y = input[1]

    for room in x..<y {
        rooms[room] = 1
    }
}

let answer = rooms.filter { $0 == 0 }.count - 1

print(answer)