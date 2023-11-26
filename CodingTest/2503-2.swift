//
//  main.swift
//  CodingTest
//
//  Created by 이건준 on 11/26/23.
//

import Foundation

func main () {
    let N = Int(readLine()!)!
    var result = [String]()

    for i in 1...9 {
        for j in 1...9 where i != j {
            for k in 1...9 where k != i && k != j {
                result.append(String(i * 100 + j * 10 + k))
            }
        }
    }

    for _ in 0..<N {
        var input = readLine()!.split(separator: " ").map { String($0) }
        var temp = [String]()
        for j in result {
            if calc(resultNum: j, target: input[0], strike: Int(input[1])!, ball: Int(input[2])!) {
                temp.append(j)
            }
        }
        result = temp
    }
    
    print(result.count)
}

func calc(resultNum: String, target: String, strike: Int, ball: Int) -> Bool {
    var num1 = Array(resultNum)
    var num2 = Array(target)
    var strikeNum = 0
    var ballNum = 0
    
    for i in 0..<3 {
        if num1[i] == num2[i] {
            strikeNum += 1
        } else {
            if num1.contains(num2[i]) {
                ballNum += 1
            }
        }
    }
    
    if strike == strikeNum && ball == ballNum {
        return true
    } else {
        return false
    }
}

main()
