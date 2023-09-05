//
//  main.swift
//  CodingTest
//
//  Created by 10000DOO on 2023/09/04.
//

import Foundation

var N = Int(readLine()!)!
let distance: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }
let oilPrice: [Int] = readLine()!.split(separator: " ").map { Int(String($0))! }

var currentCity = 0
var totalPrice = 0
var minPrice = oilPrice[currentCity]

for i in 0..<N-1 {
    minPrice = min(minPrice, oilPrice[i])
    totalPrice += minPrice * distance[i]
}

print(totalPrice.description)
