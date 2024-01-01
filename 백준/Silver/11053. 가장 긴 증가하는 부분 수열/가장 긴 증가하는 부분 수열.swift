import Foundation

let N = Int(readLine()!)!

var arr = readLine()!.split(separator: " ").map{ Int(String($0))! }

var dp = Array(repeating: 1, count: N + 1)

dp[1] = 1

if N == 1 {
    print("1")
    exit(0)
}

for i in 1..<N {
    for j in 0..<i {
        if arr[i] > arr[j] && dp[i] < dp[j] + 1 {
            dp[i] = dp[j] + 1
        }
    }
}

print(dp.max()!)