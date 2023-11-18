//
//  main.swift
//  CodingTest
//
//  Created by 이건준 on 11/18/23.
//

import Foundation

let N = Int(readLine()!)!
var result = [String]()

for i in 1...9 {
    for j in 1...9 where j != i {
        for k in 1...9 where k != i && k != j {
            result.append(String(i * 100 + j * 10 + k))
        }
    }
}

func check(resultNum: String, target: String, strike: String, ball: String) -> Bool {
    var scount = 0
    var bcount = 0
    
    var resultArr = Array(resultNum)
    var targetArr = Array(target)
    
    for i in 0..<resultArr.count {
        if resultArr[i] == targetArr[i] {
            scount += 1
        } else if targetArr.contains(resultArr[i]) {
            bcount += 1
        }
    }
    
    if scount == Int(strike) && bcount == Int(ball) {
        return true
    } else {
        return false
    }
}

for i in 0..<N {
    var input = readLine()!.split(separator: " ").map{ String($0) }
    var temp = [String]()
    for num in result {
        if check(resultNum: num, target: input[0], strike: input[1], ball: input[2]) {
            temp.append(num)
        }
    }
    
    result = temp
}

print(result.count)
