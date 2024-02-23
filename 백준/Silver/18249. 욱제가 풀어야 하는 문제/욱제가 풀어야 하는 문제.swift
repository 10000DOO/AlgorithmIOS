import Foundation

let T = Int(readLine()!)!
let mid = 1000000007
var dp = Array(repeating:0,count:191230)
dp[1] = 1
dp[2] = 2
for i in 3...191229 {
    dp[i] = ((dp[i-1]%mid)+(dp[i-2])%mid)%mid
}
for _ in 0..<T {
    let N = Int(readLine()!)!
    print(dp[N])
}