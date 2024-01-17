import Foundation

let N = Int(readLine()!)!
var dp = Array(repeating: Array(repeating: 0, count: 2), count: 41)

dp[0] = [1,0]
dp[1] = [0,1]
for i in 0..<N {
    let input = Int(readLine()!)!
    fibo(n: input)
}

func fibo(n: Int) {
    if n == 0 {
        print("1 0")
        return
    }
    if n == 1 {
        print("0 1")
        return
    }
    
    for i in 2...n {
        dp[i][0] = dp[i - 1][0] + dp[i - 2][0]
        dp[i][1] = dp[i - 1][1] + dp[i - 2][1]
    }
    
    print("\(dp[n][0]) \(dp[n][1])")
}