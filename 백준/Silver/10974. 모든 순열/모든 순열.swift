import Foundation

let N = Int(readLine()!)!
var arr = Array(repeating: 1, count: N)
var result = [[Int]]()
var check = Array(repeating: false, count: N)

for i in 1...N {
    arr[0] = i
    check[i - 1] = true
    make(arr: &arr, depth: 1)
    check[i - 1] = false
}

for row in result {
    let output = row.map { String($0) }.joined(separator: " ")
    print(output)
}

func make(arr: inout [Int], depth: Int) {
    if depth == N {
        result.append(arr)
        return
    }
    for i in 1...N {
        if !check[i - 1] {
            check[i - 1] = true
            arr[depth] = i
            make(arr: &arr, depth: depth + 1)
            check[i - 1] = false
        }
    }
}