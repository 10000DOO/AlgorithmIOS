import Foundation

let N = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
var check = Array(repeating: false, count: N)
var allCase = Array(repeating: 1, count: N)
var maxNum = 0

for i in 0..<N {
    allCase[0] = input[i]
    check[i] = true
    make(arr: &allCase, depth: 1)
    check[i] = false
}

func make(arr: inout [Int], depth: Int) {
    if depth == N {
        var temp = 0
        for i in 0..<N - 1 {
            temp += abs(arr[i] - arr[i + 1])
        }
        maxNum = max(maxNum, temp)
        return
    }
    for i in 0..<N {
        if !check[i] {
            check[i] = true
            arr[depth] = input[i]
            make(arr: &arr, depth: depth + 1)
            check[i] = false
        }
    }
}

print(maxNum)