//
//  main.swift
//  CodingTest
//
//  Created by 이건준 on 12/21/23.
//

import Foundation

let N = Int(readLine()!)!

for _ in 0..<N {
    var input = readLine()!.split(separator: " ").map{ Int(String($0))! }
    
    if input[0] - input[1] == 0 {
        print(1)
    } else {
        var west = 1.0
        for i in 1...(input[0]) {
            west *= Double(i)
        }
        
        var westReverse = 1.0
        for i in 1...(input[1] - input[0]) {
            westReverse *= Double(i)
        }
        
        var east = 1.0
        for i in 1...input[1] {
            east *= Double(i)
        }
        
        print(Int(round(east / (west * westReverse))))
    }
}
