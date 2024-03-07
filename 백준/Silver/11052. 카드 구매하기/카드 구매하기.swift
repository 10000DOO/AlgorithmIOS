import Foundation

let N = Int(readLine()!)!
var card = [0] + readLine()!.split(separator: " ").map{ Int(String($0))!}
var dp = Array(repeating: 0, count: N + 1)

dp[1] = card[1]

if N > 1 {
    for i in 2...N {
        for j in 0...i {
            dp[i] = max(dp[i], max(card[i], card[j] + dp[i - j]))
        }
    }
}

print(dp[N])