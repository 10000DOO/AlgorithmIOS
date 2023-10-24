//
//  main.swift
//  CodingTest
//
//  Created by 이건준 on 10/24/23.
//

import Foundation

var input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let D1 = input[0]
let p = input[1]
var D = [Int]()

D.append(D1)

while true {
    var next = 0
    var target = D.last!
    while true {
        var temp = 1
        let one = target % 10
        for _ in 0..<p {
            temp = temp * one
        }
        next += temp
        if target / 10 > 0 {
            target = target / 10
        } else {
           break
        }
    }
    if !D.contains(next) {
        D.append(next)
    } else {
        for (i, ele) in D.enumerated() {
            if ele == next {
                print(i)
                exit(0)
            }
        }
    }
}
