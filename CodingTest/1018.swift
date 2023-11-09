//
//  main.swift
//  CodingTest
//
//  Created by 이건준 on 11/9/23.
//

import Foundation

let size = readLine()!.split(separator: " ").map{ Int(String($0))! }
var board = [[String]]()
var minNum = Int.max

for _ in 0..<size[0] {
    let bw = Array(readLine()!)
    board.append(bw.map{ String($0) })
}

for i in 0...(size[0] - 8) {
    for j in 0...(size[1] - 8) {
        var countW = 0
        var countB = 0
        for k in 0..<8 {
            for l in 0..<8 {
                if (i + k + j + l) % 2 == 0 {
                    if board[i + k][j + l] != "W" {
                        countW += 1
                    }
                    if board[i + k][j + l] != "B" {
                        countB += 1
                    }
                } else {
                    if board[i + k][j + l] != "B" {
                        countW += 1
                    }
                    if board[i + k][j + l] != "W" {
                        countB += 1
                    }
                }
            }
        }
        minNum = min(minNum, min(countW, countB))
    }
}

print(minNum)
