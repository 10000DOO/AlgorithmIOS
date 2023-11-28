//
//  main.swift
//  CodingTest
//
//  Created by 이건준 on 11/28/23.
//

import Foundation

let boardSize = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = Int(readLine()!)!
var stickers = [[Int]]()

for _ in 0..<N {
    stickers.append(readLine()!.split(separator: " ").map { Int(String($0))! })
}

var result = 0

for i in 0..<N {
    for j in i + 1..<N {
        let (r1, c1) = (stickers[i][0], stickers[i][1])
        let (r2, c2) = (stickers[j][0], stickers[j][1])

        if (r1 + r2 <= boardSize[0] && max(c1, c2) <= boardSize[1]) || (max(r1, r2) <= boardSize[0] && c1 + c2 <= boardSize[1]) {
            result = max(result, r1*c1 + r2*c2)
        }
        if (c1 + r2 <= boardSize[0] && max(r1, c2) <= boardSize[1]) || (max(c1, r2) <= boardSize[0] && r1 + c2 <= boardSize[1]) {
            result = max(result, r1*c1 + r2*c2)
        }
        if (c1 + c2 <= boardSize[0] && max(r1, r2) <= boardSize[1]) || (max(c1, c2) <= boardSize[0] && r1 + r2 <= boardSize[1]) {
            result = max(result, r1*c1 + r2*c2)
        }
        if (r1 + c2 <= boardSize[0] && max(c1, r2) <= boardSize[1]) || (max(r1, c2) <= boardSize[0] && c1 + r2 <= boardSize[1]) {
            result = max(result, r1*c1 + r2*c2)
        }
    }
}

print(result)
