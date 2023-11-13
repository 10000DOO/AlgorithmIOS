//
//  main.swift
//  CodingTest
//
//  Created by 이건준 on 11/13/23.
//

import Foundation

var NM = readLine()!.split(separator: " ").map{ Int(String($0))! }
var N = NM[0]
var M = NM[1]
var DNA = [[String]]()
var result = [String]()
var min = 0

for _ in 0..<N {
    let temp = Array(readLine()!)
    DNA.append(temp.map{ String($0) })
}

for i in 0..<M {
    var A = 0
    var T = 0
    var G = 0
    var C = 0
    var maxVariables = [String]()
    for j in 0..<N {
        switch DNA[j][i] {
        case "A":
            A += 1
        case "T":
            T += 1
        case "G":
            G += 1
        case "C":
            C += 1
        default:
            break
        }
    }
    let maxCount = [A, T, G, C].max()
    if let max = maxCount {
        if A == max { maxVariables.append("A") }
        if T == max { maxVariables.append("T") }
        if G == max { maxVariables.append("G") }
        if C == max { maxVariables.append("C") }
    }
    maxVariables.sort()
    result.append(maxVariables[0])
}

for ele in DNA{
    for i in 0..<result.count{
        if ele[i] != result[i]{
            min += 1
        }
    }
}

print(result.joined(separator: ""))
print(min)
