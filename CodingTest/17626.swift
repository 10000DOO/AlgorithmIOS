//
//  main.swift
//  CodingTest
//
//  Created by 이건준 on 11/23/23.
//

import Foundation

extension Double {
    func isInteger() -> Bool {
        return Double(floor(self)) == Double(self)
    }
}
func fs(_ num: Double) -> Int {
    if sqrt(num).isInteger() {
        return 1
    }
    let a: Int = Int(sqrt(num))
    for i in 0...a where sqrt(num-Double(i*i)).isInteger() {
        return 2
    }
    for i in 0...a {
        for j in 0...Int(sqrt(num-Double(i*i))) where sqrt(num-Double(i*i+j*j)).isInteger() {
            return 3
        }
    }
    return 4
}
print(fs(Double(readLine()!)!))


import Foundation

let value = Int(readLine()!)!
var squared: [Int] = []
var count = 1
var result = 0
while count * count <= value {
    squared.append(count * count)
    count += 1
}

if squared.contains(value) {
    result = 1
} else {
    for i in 0..<squared.count {
        let first = squared[squared.count - i - 1]
        if squared.contains(value - first) {
            result = 2
            break
        }
        if first < value/2 {
            break
        }
    }
    if result == 0 {
        for i in 0..<squared.count {
            for j in i..<squared.count {
                if squared.contains(value - squared[squared.count - i - 1] - squared[squared.count - j - 1]) {
                    result = 3
                    break
                }

            }
        }
    }
    if result == 0 {
        result = 4
    }

}

print(result)
