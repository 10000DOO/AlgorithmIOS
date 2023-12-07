//
//  main.swift
//  CodingTest
//
//  Created by 이건준 on 12/7/23.
//

import Foundation

let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = NM[0]
let M = NM[1]
var count = 0
var badCombination = Array(repeating: Array(repeating: 0, count: N + 1), count: N + 1)

for _ in 0..<M {
    var input = (readLine()!.split(separator: " ").map { Int(String($0))! })
    badCombination[input[0]][input[1]] = 1
    badCombination[input[1]][input[0]] = 1
}

for i in 1..<N + 1 {
    for j in i+1..<N + 1 {
        for k in j+1..<N + 1 {
            if badCombination[i][j] == 1 || badCombination[j][k] == 1 || badCombination[i][k] == 1 {
                continue
            } else {
                count += 1
            }
        }
    }
}

print(count)
