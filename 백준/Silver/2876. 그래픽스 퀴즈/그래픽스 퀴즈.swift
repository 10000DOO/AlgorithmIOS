import Foundation

let N = Int(readLine()!)!
var dp = Array(repeating: [0,0,0,0,0], count: N)
for i in 0..<N {
    let q = readLine()!.split(separator:  " " ).map{Int(String($0))!}
    dp[i][q[0]-1] += 1
    dp[i][q[1]-1] += 1
}

var answer = [(Int, Int)]()
for i in 0..<5 {
    var sum = 0, ans = 0
    for j in 0..<N {
        let next = dp[j][i] > 0 ? 1 : 0
        if next == 0 {
            sum = 0
        }else {
            sum += next
        }
        ans = max(ans, sum)
    }
    answer.append((i+1, ans))
}
answer.sort(by: { $0.1 == $1.1 ? $0.0<$1.0 : $0.1 > $1.1})
print(answer.first!.1, answer.first!.0)