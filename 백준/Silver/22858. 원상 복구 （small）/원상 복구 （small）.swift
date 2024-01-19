import Foundation

let arr = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = arr[0]
let K = arr[1]
var first = readLine()!.split(separator: " ").map { Int(String($0))! }
let change = readLine()!.split(separator: " ").map { Int(String($0))! }

for _ in 0..<K {
    var temp = Array(repeating: 0, count: n)
    for j in 0..<n {
        temp[change[j] - 1] = first[j]
    }
    first = temp
}

for i in 0..<first.count {
    if i == first.count - 1 {
        print(first[i])
    } else {
        print(first[i], terminator: " ")
    }
}