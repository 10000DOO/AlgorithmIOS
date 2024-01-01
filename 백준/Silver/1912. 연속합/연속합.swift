import Foundation

let N = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map { Int(String($0))! }

var currentSum = arr[0]
var maxSum = arr[0]

for i in 1..<N {
    currentSum = max(arr[i], currentSum + arr[i])
    maxSum = max(maxSum, currentSum)
}

print(maxSum)