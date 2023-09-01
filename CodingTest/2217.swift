//
//  main.swift
//  CodingTest
//
//  Created by 10000DOO on 2023/08/19.
//
// readLine()!.split(separator: " ")
// readLine()!.split(separator: " ").map{ Int(String($0))! }
//var input = readLine()!
//let input = Array(readLine()!)
//let result = input.map { Int(String($0))! }

import Foundation

var N = Int(readLine()!)!
var kg = [Int]()

for _ in 0..<N {
    kg.append(Int(readLine()!)!)
}

kg.sort(by: >)

var max = 0;

for i in 0..<kg.count {
    var weight = kg[i] * (i+1)
    if weight > max {
        max = weight
    }
}

print(max)
