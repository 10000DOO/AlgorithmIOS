import Foundation

let N = Int(readLine()!)!
var d = Array(repeating: Array(repeating: 0, count: 3), count: N + 1)
var a = Array(repeating: Array(repeating: 0, count: 3), count: N + 1)

for i in 1...N {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    for j in 0..<3 {
        a[i][j] = input[j]
    }
}

for i in 1...N {
    d[i][0] = min(d[i-1][1], d[i-1][2]) + a[i][0]
    d[i][1] = min(d[i-1][0], d[i-1][2]) + a[i][1]
    d[i][2] = min(d[i-1][0], d[i-1][1]) + a[i][2]
}

let result = min(min(d[N][0], d[N][1]), d[N][2])

print(result)