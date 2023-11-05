//
//  main.swift
//  CodingTest
//
//  Created by 이건준 on 11/5/23.
//

import Foundation

let people = Int(readLine()!)!
var result = [Int]()

for _ in 0..<people {
    let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
    var max = 0
    for first in 0..<5 {
        for second in first + 1..<5 {
            for third in second + 1..<5 {
                if max <= ((input[first] + input[second] + input[third]) % 10) {
                    max = (input[first] + input[second] + input[third]) % 10
                }
            }
        }
    }
    result.append(max)
}

var maxnum = 0
var maxIndex = 0
for (index, ele) in result.enumerated() {
    if maxnum <= ele {
        maxnum = ele
        maxIndex = index
    }
}

print(maxIndex + 1)
