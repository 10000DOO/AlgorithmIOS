//
//  File.swift
//  CodingTest
//
//  Created by 10000DOO on 2023/09/14.
//

import Foundation

var arr = readLine()!.split(separator: " ").map{ Int(String($0))! }

let N = arr[0]
let M = arr[1]

var setMin = Int.max
var oneMin = Int.max

for _ in 0..<M {
    arr = readLine()!.split(separator: " ").map{ Int(String($0))! }
    if setMin > arr[0] {
        setMin = arr[0]
    }
    if oneMin > arr[1] {
        oneMin = arr[1]
    }
}

let multiple = setMin / N

var result = 0

if N < multiple {
    result = N * oneMin
    print(result)
} else if multiple <= N && N < 6 {
    print(setMin)
} else {
    result = N / 6
    result += (N % 6) * oneMin
    print(result)
}
