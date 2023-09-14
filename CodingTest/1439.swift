//
//  main.swift
//  CodingTest
//
//  Created by 10000DOO on 2023/09/14.
//

import Foundation

var S = Array(readLine()!).map {Int(String($0))!}

var num = S[0]
var count = 0

for i in 1..<S.count {
    if num != S[i] {
        num = S[i]
        count += 1
    }
}

var result = 0

if count == 0 {
    print(result)
} else if count % 2 == 1 {
    result = (count + 1) / 2
    print(result)
} else if count % 2 == 0 {
    result = count / 2
    print(result)
}
