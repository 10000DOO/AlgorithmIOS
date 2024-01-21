import Foundation

let N = Int(readLine()!)!
var dp = Array(repeating: 1, count: N + 1)

if N == 1 {
    print(1)
    exit(0)
}
if N == 2 {
    print(2)
    exit(0)
}
dp[1] = 1
dp[2] = 2
for i in 3...N {
    var minNum = Int.max
    for j in 1...i {
        if i - (j * j) < 0 {
            break
        }
        if j * j == i {
            dp[i] = 1
            break
        }
        minNum = min(minNum, dp[i - (j * j)] + 1)
        dp[i] = minNum
    }
}

print(dp[N])