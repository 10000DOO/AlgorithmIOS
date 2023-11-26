//
//  main.swift
//  CodingTest
//
//  Created by 이건준 on 11/26/23.
//

import Foundation

let input = Int(readLine()!)!
var count = 0

if input <= 99 {
    print(input)
    exit(0)
}

for i in 111...999 {
    if i > input {
        break
    }
    var first = i / 100
    var second = i % 100 / 10
    var third = i % 10
    
    if (first - second == second - third) || (third - second == second - first) {
        count += 1
    }
}

print(count + 99)
