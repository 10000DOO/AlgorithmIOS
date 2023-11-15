//
//  main.swift
//  CodingTest
//
//  Created by 이건준 on 11/9/23.
//

import Foundation

let arr = readLine()!.split(separator: " ").map{ Int(String($0))! }
let height = arr[0]
let width = arr[1]
var board = [[String]]()
var result = Int.max

for _ in 0..<height {
    let bw = Array(readLine()!)
    board.append(bw.map{ String($0) })
}

for i in 0...height - 8 {
    for j in 0...width - 8 {
        var Bcount = 0
        var Wcount = 0
        for k in 0 + i..<8 + i {
            for l in 0 + j..<8 + j {
                if (k + l) % 2 == 0 {
                    if board[k][l] != "W" {
                        Wcount += 1
                    }
                    if board[k][l] != "B" {
                        Bcount += 1
                    }
                } else {
                    if board[k][l] != "B" {
                        Wcount += 1
                    }
                    if board[k][l] != "W" {
                        Bcount += 1
                    }
                }
            }
        }
        result = min(result, min(Bcount, Wcount))
    }
}

print(result)
