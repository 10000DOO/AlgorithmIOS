import Foundation

let NK = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = NK[0]
let K = NK[1]
var count = 0
let kit = readLine()!.split(separator: " ").map { Int(String($0))! }
var check = Array(repeating: false, count: N)

func isOk(arr: [Int]) {
    var health = 500
    for i in 0..<N {
        health = health - K + arr[i]
        if health < 500 {
            return
        }
    }
    count += 1
}

func makeArr(array: inout [Int], depth: Int) {
    if depth == N {
        
        isOk(arr: array)
        return
    }
    for i in 0..<N {
        if !check[i] {
            check[i] = true
            array[depth] = kit[i]
            makeArr(array: &array, depth: depth + 1)
            check[i] = false
        }
    }
}

var input = Array(repeating: 0, count: N)
makeArr(array: &input, depth: 0)

print(count)