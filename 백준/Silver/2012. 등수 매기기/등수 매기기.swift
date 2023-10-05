import Foundation

let N = Int(readLine()!)!
var expectedGrade = [Int]()
var sum = 0

for _ in 0..<N {
    expectedGrade.append(Int(readLine()!)!)
}

expectedGrade.sort()

for (i, value) in expectedGrade.enumerated() {
    sum += abs(value - (i + 1))
}

print(sum)