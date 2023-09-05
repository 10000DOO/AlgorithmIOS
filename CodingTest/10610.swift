//
//  main.swift
//  CodingTest
//
//  Created by 10000DOO on 2023/09/05.
//

import Foundation

var nums = Array(readLine()!).map {Int(String($0))!}

if nums.contains(0) {
    var sum = nums.reduce(0, +)
    if sum % 3 == 0 {
        nums.sort(by: >)
        let StringArr = nums.map{String($0)}
        let result = StringArr.joined(separator: "")
        print(result)
    } else {
        print("-1")
    }
} else {
    print("-1")
}
