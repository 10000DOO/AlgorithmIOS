//
//  main.swift
//  CodingTest
//
//  Created by 이건준 on 11/6/23.
//

import Foundation

var target = readLine()!
var num = Int(readLine()!)!
var count = 0

for _ in 0..<num {
    var str = readLine()!
    str = str + str + str
    if str.contains(target) {
        count += 1
    }
}

print(count)
