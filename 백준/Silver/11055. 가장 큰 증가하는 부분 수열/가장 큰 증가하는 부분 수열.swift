import Foundation

let A = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{ Int(String($0))! }
var dp = Array(repeating: 0, count: A)
var maxNum = 0

dp[0] = arr[0]

for i in 1..<A {
    var bigNum = 0
    for j in 0..<i {
        if dp[j] > bigNum && arr[j] < arr[i]{
            bigNum = dp[j]
        }
    }
    dp[i] = bigNum + arr[i]
}

for i in dp {
    if i > maxNum {
        maxNum = i
    }
}

print(maxNum)