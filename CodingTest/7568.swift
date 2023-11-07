//
//  main.swift
//  CodingTest
//
//  Created by 이건준 on 11/7/23.
//

import Foundation

let num = Int(readLine()!)!
var arr = [[Int]]()

for _ in 0..<num {
    var size = readLine()!.split(separator: " ").map{ Int(String($0))! }
    arr.append(size)
}

for i in 0..<num {
    var count = 0
    for j in 0..<num {
        if arr[i][0] < arr[j][0] && arr[i][1] < arr[j][1] {
            count += 1
        }
    }
    print(count + 1, terminator: " ")
}
