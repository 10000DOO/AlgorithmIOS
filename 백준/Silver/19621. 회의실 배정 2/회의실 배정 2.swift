import Foundation

let N = Int(readLine()!)!
var schedule = [[Int]]()
var dp = Array(repeating: 0, count: N + 1)

for _ in 0..<N {
    schedule.append(readLine()!.split(separator: " ").map { Int($0)! })
}

dp[1] = schedule[0][2]

if N > 1 {
    for i in 2...N {
        dp[i] = max(dp[i - 2] + schedule[i - 1][2], dp[i - 1])
    }
}

print(dp.max()!)