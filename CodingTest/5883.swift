//
//  main.swift
//  CodingTest
//
//  Created by 이건준 on 12/14/23.
//

import Foundation

let N = Int(readLine()!)!
var arr = [Int]()
var variation = [Int]()

func main() {
    var result = 0
    
    if N == 1 {
        print(1)
        exit(0)
    }
    for _ in 0..<N {
        let n = Int(readLine()!)!
        arr.append(n)
        if !variation.contains(n) {
            variation.append(n)
        }
    }

    for i in variation {
        result = max(result, calc(skip: i))
    }
    
    print(result)
}

func calc(skip: Int) -> Int {
    var count = 1
    var maxNum = 1
    var gb = arr[0]
    for i in 1..<N {
        if arr[i] == skip {
            continue
        }
        if arr[i] == gb {
            count += 1
        }
        if arr[i] != gb {
            gb = arr[i]
            maxNum = max(maxNum, count)
            count = 1
        }
    }
    maxNum = max(maxNum, count)
    
    return maxNum
}

main()
