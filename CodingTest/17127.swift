//
//  main.swift
//  CodingTest
//
//  Created by 이건준 on 10/30/23.
//

import Foundation

var N = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{ Int(String($0)) }
var section = N - 3
var max = 0


for i in 0..<4 {
    var temp = 1
    for j in i..<i + section {
        temp = temp * arr[j]!
    }
    
    if i == 0 {
        temp = temp + arr[N - 1]! + arr[N - 2]! + arr[N - 3]!
        max = max < temp ? temp : max
    }
    
    if i == 1 {
        temp = temp + arr[0]! + arr[N - 1]! + arr[N - 2]!
        max = max < temp ? temp : max
    }
    
    if i == 2 {
        temp = temp + arr[0]! + arr[1]! + arr[N - 1]!
        max = max < temp ? temp : max
    }
    
    if i == 3 {
        temp = temp + arr[0]! + arr[1]! + arr[2]!
        max = max < temp ? temp : max
    }
}

print(max)
