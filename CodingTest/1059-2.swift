//
//  main.swift
//  CodingTest
//
//  Created by 이건준 on 12/5/23.
//

import Foundation

let L = Int(readLine()!)!
var S = readLine()!.split(separator: " ").map{ Int(String($0))! }
let n = Int(readLine()!)!
var A = 0
var B = 0

if S.contains(n) {
    print(0)
    exit(0)
}

S.sort()

if n < S[0] {
    print((n - 0) * (S[0] - n - 1) + (n - 1))
} else {
    for (index, number) in S.enumerated() {
        if number >= n {
            A = S[index - 1]
            B = number
            break
        }
    }
    
    print((n - A) * (B - n - 1) + (n - A - 1))
}
