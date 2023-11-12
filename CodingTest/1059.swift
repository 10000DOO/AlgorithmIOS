//
//  main.swift
//  CodingTest
//
//  Created by 이건준 on 11/12/23.
//

import Foundation

let n = Int(readLine()!)!
var numbers = readLine()!.split(separator: " ").map { Int($0)! }
let target = Int(readLine()!)!

if numbers.contains(target) {
    print(0)
    exit(0)
}

numbers.sort()

var count = 0

if target < numbers[0] {
    count = (numbers[0] - target) * target - 1
} else {
    for i in 0..<n - 1 {
        if numbers[i] < target && numbers[i + 1] > target {
            let left = numbers[i]
            let right = numbers[i + 1]
            if target != left && target != right {
                count = (target - left) * (right - target) - 1
            }
            break
        }
    }
}

print(count)
