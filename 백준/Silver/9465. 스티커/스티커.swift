import Foundation

let N = Int(readLine()!)!

for _ in 0..<N {
    let K = Int(readLine()!)!
    var arr = [[Int]]()
    arr.append([0] + readLine()!.split(separator: " ").map{ Int($0)! })
    arr.append([0] + readLine()!.split(separator: " ").map{ Int($0)! })
    
    var dp = Array(repeating: Array(repeating: 0, count: K+1), count: 2)
    
    dp[0][1] = arr[0][1]
    dp[1][1] = arr[1][1]

    if K > 1 {
        for i in 2...K {
            dp[0][i] = max(dp[1][i-1], dp[1][i-2]) + arr[0][i]
            dp[1][i] = max(dp[0][i-1], dp[0][i-2]) + arr[1][i]
        }
    }

    print(max(dp[0][K], dp[1][K]))
}
