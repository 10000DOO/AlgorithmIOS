//
//  main.swift
//  CodingTest
//
//  Created by 이건준 on 10/31/23.
//

import Foundation

let word = readLine()!
var result = [String]()

for i in 1..<word.count - 1 {
    for j in i+1..<word.count {
        let index1 = word.index(word.startIndex, offsetBy: i)
        let index2 = word.index(word.startIndex, offsetBy: j)
        
        let part1 = String(word[..<index1].reversed())
        let part2 = String(word[index1..<index2].reversed())
        let part3 = String(word[index2...].reversed())
    
        result.append(part1 + part2 + part3)
    }
}

result.sort()
print(result.first!)

