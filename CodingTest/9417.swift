//
//  main.swift
//  CodingTest
//
//  Created by 이건준 on 11/22/23.
//

import Foundation

func main() {
    let N = Int(readLine()!)!

    for _ in 0..<N {
        var result = 0
        var nums = readLine()!.split(separator: " ").map{ Int(String($0))! }
        nums.sort()
        for i in 0..<nums.count {
            for j in i + 1..<nums.count {
                result = max(euclideanead(num1: nums[j], num2: nums[i]), result)
            }
        }
        
        print(result)
    }
}

func euclideanead(num1: Int, num2: Int) -> Int {
    var numA = num1
    var numB = num2
    while true {
        if numA % numB != 0 {
            var temp = numA % numB
            numA = num2
            numB = temp
        } else {
            return numB
        }
    }
}

main()
