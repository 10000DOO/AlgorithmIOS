//
//  1789.swift
//  CodingTest
//
//  Created by 10000DOO on 2023/09/01.
//

import Foundation

var S = Int(readLine()!)!

var sum = 0;
var i = 1;
while sum <= S {
    sum += i
    i += 1
}

print((i - 2).description)
