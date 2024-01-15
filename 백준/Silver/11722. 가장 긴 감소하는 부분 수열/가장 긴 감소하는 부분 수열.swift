import Foundation

let N = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
var dp = Array(repeating: 1, count: N)
var maxNum = 1

for i in 1..<N {
    var maxdp = 1
    for j in 0..<i {
        if input[i] < input[j] {
            maxdp = max(maxdp, dp[j] + 1)
        }
    }
    dp[i] = maxdp
    maxNum = max(maxdp, maxNum)
}

print(maxNum)