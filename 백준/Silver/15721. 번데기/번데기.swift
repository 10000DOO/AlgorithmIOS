import Foundation

let A = Int(readLine()!)!
let T = Int(readLine()!)!
let target = Int(readLine()!)!
var arr = [Int]()
var cycle = 1
var targetIndex = 0
var index = -1

while arr.count < 10000 {
    arr.append(0)
    arr.append(1)
    arr.append(0)
    arr.append(1)
    
    for _ in 0..<cycle + 1 {
        arr.append(0)
    }
    for _ in 0..<cycle + 1 {
        arr.append(1)
    }
    cycle += 1
}

while true {
    if arr.count == 10000 {
        break
    }
    if arr.count > 10000 {
        arr.removeLast()
    }
}

for i in arr {
    index += 1
    
    if index % A == 0 {
        index = 0
    }
    
    if i == target {
        targetIndex += 1
        if targetIndex == T {
            print(index)
            exit(0)
        }
    }
}