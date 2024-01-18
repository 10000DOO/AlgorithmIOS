import Foundation

let N = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map { Int(String($0))! }
var dp = Array(repeating: 1, count: N)

for i in 1..<N {
    var count = 1
    for j in 0..<i {
        if nums[i] > nums[j] {
            count = max(count, dp[j] + 1)
        }
    }
    dp[i] = count
}

print(dp.max()!)