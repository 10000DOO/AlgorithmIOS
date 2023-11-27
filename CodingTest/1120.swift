//
//  main.swift
//  CodingTest
//
//  Created by 이건준 on 11/27/23.
//

import Foundation

var words = readLine()!.split(separator: " ").map { String($0) }
var first = Array(words[0])
var second = Array(words[1])
var minNum = Int.max

for i in 0...second.count - first.count {
    var count = 0
    for j in i..<first.count + i {
        if first[j - i] != second[j] {
            count += 1
        }
    }
    minNum = min(minNum, count)
}

print(minNum)
