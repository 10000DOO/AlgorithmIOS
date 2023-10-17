//
//  main.swift
//  CodingTest
//
//  Created by 이건준 on 10/17/23.
//

import Foundation

let N = Int(readLine()!)!
var arr = [Int]()
var dic = [Int: Int]()
var num3 = [Int]()
var average = 0

for _ in 0..<N {
    arr.append(Int(readLine()!)!)
}

arr.sort()

var sum = 0

for i in arr {
    sum += i
    if dic.keys.contains(i) {
        dic[i]! += 1
    } else {
        dic[i] = 1
    }
}

if Double(sum) / Double(N) < 0 {
    average = Int(Double(sum) / Double(N) - 0.5)
} else {
    average = Int(Double(sum) / Double(N) + 0.5)
}
let median = arr[N / 2]
let maxFrequency = dic.values.max() ?? 0
let modeArray = dic.filter { $0.value == maxFrequency }.keys.sorted()

print(average)
print(median)
print(modeArray.count > 1 ? modeArray[1] : modeArray[0])
print(arr.last! - arr.first!)
