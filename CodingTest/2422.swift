//
//  main.swift
//  CodingTest
//
//  Created by 이건준 on 11/16/23.
//

import Foundation

let NM = readLine()!.split(separator: " ").map{ Int(String($0))! }
var hateCombine = Array(repeating: Array(repeating: 0, count: NM[0]), count: NM[0])
var count = 0

for _ in 0..<NM[1] {
    var combination = readLine()!.split(separator: " ").map{ Int(String($0))! }
    hateCombine[combination[0]-1][combination[1]-1] = 1
    hateCombine[combination[1]-1][combination[0]-1] = 1
}

for i in 0..<NM[0] {
    for j in i+1..<NM[0] {
        for k in j+1..<NM[0] {
            if hateCombine[i][j] != 0 || hateCombine[j][k] != 0 || hateCombine[i][k] != 0 {
                continue
            } else {
                count += 1
            }
        }
    }
}

print(count)
