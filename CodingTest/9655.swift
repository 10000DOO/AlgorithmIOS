//
//  main.swift
//  CodingTest
//
//  Created by 이건준 on 12/15/23.
//

import Foundation

let N = Int(readLine()!)!
var cache = Array(repeating: -1, count: 1001) // 게임 과정 기록.
cache[1] = 1
cache[2] = 2
cache[3] = 1
cache[4] = 2

if N >= 5 {
    for i in 5...N {
        cache[i] = min(cache[i - 3], cache[i - 1]) + 1
    }
}

if cache[N] % 2 == 1 { // 게임한 횟수가 홀수면,
    print("SK")
}
else { // 게임한 횟수가 짝수면,
    print("CY")
}
