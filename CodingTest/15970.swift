//
//  main.swift
//  CodingTest
//
//  Created by 이건준 on 12/13/23.
//

import Foundation

let N = Int(readLine()!)!
var arr = [[Int]]()
var sum = 0

for _ in 0..<N {
    arr.append(readLine()!.split(separator: " ").map{ Int(String($0))! })
}

arr.sort { $0[0] < $1[0] }

for point in arr {
    var minPath = Int.max
    for target in arr {
        if point[1] == target[1] && point[0] != target[0] {
            minPath = min(minPath, point[0] - target[0] > 0 ? point[0] - target[0] : target[0] - point[0])
        }
    }
    sum += minPath
}

print(sum)
