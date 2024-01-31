import Foundation

var dp = Array(repeating: Array(repeating: 0, count: 201), count: 21)
var arr = Array(repeating: Array(repeating: 0, count: 2), count: 21)

if let input = readLine()?.split(separator: " ").compactMap({ Int($0) }), input.count == 2 {
    let n = input[0]
    let m = input[1]

    for i in 1...m {
        if let line = readLine()?.split(separator: " ").compactMap({ Int($0) }), line.count == 2 {
            arr[i][0] = line[0]
            arr[i][1] = line[1]
        }
    }

    for i in 1...m {
        for j in 0...n {
            if j - arr[i][0] >= 0 {
                dp[i][j] = max(dp[i - 1][j - arr[i][0]] + arr[i][1], dp[i - 1][j])
            }
            dp[i][j] = max(dp[i - 1][j], dp[i][j])
        }
    }

    print(dp[m][n])
}
