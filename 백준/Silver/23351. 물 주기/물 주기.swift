import Foundation

let NKAB = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = NKAB[0]
let K = NKAB[1]
let A = NKAB[2]
let B = NKAB[3]
var days = 0
var flower = Array(repeating: K, count: N)

while !flower.contains(0) {
    var minIndex = 0
    var temp = 0
    var minValue = Int.max
    for i in 0...N - A {
        for j in i..<i + A {
            temp += flower[j]
        }
        if minValue > temp {
            minIndex = i
            minValue = temp
        }
        temp = 0
    }
    for k in minIndex..<minIndex + A {
        flower[k] += B
    }
    for l in 0..<N {
        flower[l] -= 1
    }
    days += 1
}

print(days)
