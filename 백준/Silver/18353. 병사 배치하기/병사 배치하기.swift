import Foundation

let N = Int(readLine()!)!
let soldiers = readLine()!.split(separator: " ").map{ Int(String($0))! }
var dp = Array(repeating: 1, count: N) // 초기값을 1로 설정
var count = 0

for i in 1..<N {
    for j in stride(from: i - 1, through: 0, by: -1) {
        if soldiers[i] < soldiers[j] { // 수정: 값 비교 방향 변경
            dp[i] = max(dp[i], dp[j] + 1)
        }
    }
}

let maxLength = dp.max() ?? 0 // 최대 길이를 찾는 부분 수정

print(N - maxLength)
