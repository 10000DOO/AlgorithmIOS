import Foundation

let N = Int(readLine()!)!
var arr = [Int]()
arr.append(Int.max)
arr  = arr + readLine()!.split(separator: " ").map { Int($0)! }
var dp = Array(repeating: 0, count: N + 1)
var maxValue = 0

for i in 1...N {
    var maxNum = 0
    for j in 0..<i {
        if arr[j] > arr[i] {
            maxNum = max(maxNum, dp[j] + arr[i])
        }
    }
    dp[i] = maxNum
}

print(dp.max()!)