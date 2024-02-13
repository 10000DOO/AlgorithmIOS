import Foundation

let N = Int(readLine()!)!
var homeWork = [(Int, Int)]()
var grade = 0

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    if input[0] == 1 {
        homeWork.append((input[1], input[2] - 1))
    }
    if let score = homeWork.popLast() {
        if score.1 == 0 {
            grade += score.0
        } else {
            homeWork.append((score.0, score.1 - 1))
        }
    }
}

print(grade)