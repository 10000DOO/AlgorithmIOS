//
//  main.swift
//  CodingTest
//
//  Created by 이건준 on 11/3/23.
//

import Foundation

let first = Int(readLine()!)!
var maxIndex = 0
var maxCount = 0
var arr = Array(repeating: [Int](), count: first + 1)

for i in 1...first {
    var count = 2
    arr[i].append(first)
    arr[i].append(i)
    while true {
        if arr[i][arr[i].count - 2] - arr[i][arr[i].count - 1] >= 0 {
            arr[i].append(arr[i][arr[i].count - 2] - arr[i][arr[i].count - 1])
            count += 1
        } else {
            break
        }
    }
    if maxCount < count {
        maxCount = count
        maxIndex = i
    }
}

print(maxCount)
for i in arr[maxIndex] {
    print(i, terminator: " ")
}
