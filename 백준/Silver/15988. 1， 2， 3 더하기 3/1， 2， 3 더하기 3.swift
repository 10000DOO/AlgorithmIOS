import Foundation

let N = Int(readLine()!)!

for _ in 0..<N {
    let T = Int(readLine()!)!
    var dp = Array(repeating: 0, count: T + 1)
    
    if T == 1 {
        print(1)
        continue
    }
    if T == 2 {
        print(2)
        continue
    }
    if T == 3 {
        print(4)
        continue
    }
    dp[1] = 1
    dp[2] = 2
    dp[3] = 4
    for i in 4...T {
        dp[i] = (dp[i - 1] + dp[i - 2] + dp[i - 3]) % 1000000009
    }
    
    print(dp[T])
}