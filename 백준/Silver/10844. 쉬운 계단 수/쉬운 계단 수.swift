import Foundation

let mod = 1000000000
let N = Int(readLine()!)!

if N == 1 {
    print(9)
} else {
    var dp = [0] + Array(repeating: 1, count: 9)
    
    for _ in 1..<N {
        let pre = dp
        
        dp[0] = pre[1]
        dp[9] = pre[8]
        
        for j in 1...8 {
            dp[j] = (pre[j-1] + pre[j+1]) % mod
        }
    }
    
    print(dp.reduce(0, +) % mod)
}