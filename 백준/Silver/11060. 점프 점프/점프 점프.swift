import Foundation

let N = Int(readLine()!)!
let maze = readLine()!.split(separator: " ").map { Int(String($0))! }
var dp = Array(repeating: N + 1, count: N)
dp[0] = 0

for i in 1..<N {
    for j in 0..<i {
        if maze[j] + j >= i {
            dp[i] = min(dp[i], dp[j] + 1)
        }
    }
}

if dp[N - 1] == N + 1 {
    print(-1)
} else {
    print(dp[N - 1])
}