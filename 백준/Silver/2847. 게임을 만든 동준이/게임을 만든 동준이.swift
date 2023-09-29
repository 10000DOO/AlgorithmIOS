import Foundation

let N = Int(readLine()!)!
var numList = [Int]()
var result = 0

for _ in 0..<N {
    numList.append(Int(readLine()!)!)
}

numList.reverse()

for i in 0..<N - 1 {
    if numList[i] <= numList[i + 1] {
        result += numList[i + 1] - numList[i] + 1
        numList[i + 1] = numList[i] - 1
    }
}

print(result)