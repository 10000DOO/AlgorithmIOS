//
//  main.swift
//  CodingTest
//
//  Created by 10000DOO on 2023/09/07.
//

import Foundation

var input = readLine()!.split(separator: " ").map{ Int(String($0))! }
var count = 0

while input[1] > input[0] {
    if input[1] % 10 == 1 {
        input[1] = input[1] / 10
        count += 1
    } else if input[1] % 2 == 0 {
        input[1] = input[1] / 2
        count += 1
    } else {
        break
    }
}

if input[0] == input[1] {
    print("\(count + 1)")
} else {
    print("-1")
}
