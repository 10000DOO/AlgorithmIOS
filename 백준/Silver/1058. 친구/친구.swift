import Foundation

let INF = 100000000
var cost = Array(repeating: Array(repeating: 0, count: 51), count: 51)

if let n = readLine().flatMap({ Int($0) }) {
    for i in 1...n {
        if let input = readLine() {
            let str = Array(input)
            for j in 1...n {
                if i == j { continue }
                cost[i][j] = str[j - 1] == "Y" ? 1 : INF
            }
        }
    }

    for k in 1...n {
        for i in 1...n {
            for j in 1...n {
                if i == j { continue }
                cost[i][j] = min(cost[i][j], cost[i][k] + cost[k][j])
            }
        }
    }

    var maxCnt = 0
    for i in 1...n {
        var cnt = 0
        for j in 1...n {
            if cost[i][j] == 2 || cost[i][j] == 1 {
                cnt += 1
            }
        }
        maxCnt = max(maxCnt, cnt)
    }

    print(maxCnt)
}