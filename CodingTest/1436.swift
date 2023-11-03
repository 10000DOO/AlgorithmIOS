//
//  main.swift
//  CodingTest
//
//  Created by 이건준 on 11/3/23.
//

import Foundation

var input = Int(readLine()!)!
var count = 0
var num = 666

while true {
    var temp = num
    while temp >= 666 {
        if temp % 1000 == 666 {
            count += 1
            break
        }
        temp /= 10
    }
    
    if input == count {
        print(num)
        break
    }
    
    num = num + 1
}
