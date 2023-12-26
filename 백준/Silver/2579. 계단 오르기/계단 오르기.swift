import Foundation

let N = Int(readLine()!)!
var stair = [Int]()
var dp = Array(repeating: 0, count: N + 1)

stair.append(0)
for _ in 0..<N {
    stair.append(Int(readLine()!)!)
}

if N == 1 {
    print(stair[1])
    exit(0)
}
if N == 2 {
    print(stair[1] + stair[2])
    exit(0)
}

dp[1] = stair[1]
dp[2] = stair[1] + stair[2]

for i in 3...N {
    dp[i] = max(dp[i - 2] + stair[i], dp[i - 3] + stair[i - 1] + stair[i])
}

print(dp[N])