import Foundation

let N = Int(readLine()!)!
var numbers = readLine()!.split(separator: " ").map { Int($0)! }
var operList = readLine()!.split(separator: " ").map { Int($0)! }
var ansMin = Int.max
var ansMax = Int.min

solve(numbers[0], 0)
print(ansMax)
print(ansMin)

func solve(_ total: Int, _ idx: Int) {
    if idx == (N-1) {
        ansMin = min(ansMin, total)
        ansMax = max(ansMax, total)
        return
    }

    for i in 0..<4 {
        if operList[i] != 0 {
            operList[i] -= 1
            if i == 0 {
                solve(total + numbers[idx+1], idx+1)
            } else if i == 1 {
                solve(total - numbers[idx+1], idx+1)
            } else if i == 2 {
                solve(total * numbers[idx+1], idx+1)
            } else {
                solve(total / numbers[idx+1], idx+1)
            }

            operList[i] += 1
        }
    }
}