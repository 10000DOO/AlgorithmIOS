import Foundation

let N = Int(readLine()!)!
var arr = [Int]()
var dp = Array(repeating: 0, count: N)

for _ in 0..<N {
    arr.append(Int(readLine()!)!)
}

dp[0] = arr[0]

if N > 1 {
    for i in 1..<N {
        for j in 0..<i {
            if arr[j] < arr[i] {
                dp[i] = max(dp[j] + arr[i], dp[i])
            } else {
                dp[i] = max(arr[i], dp[i])
            }
        }
    }
}

print(dp.max()!)
