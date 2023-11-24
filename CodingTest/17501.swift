//
//  main.swift
//  CodingTest
//
//  Created by 이건준 on 11/24/23.
//

import Foundation

func main() {
    let day = Int(readLine()!)!
    var runDay = [Int](repeating: 0, count: 20)
    var pay = [Int](repeating: 0, count: 20)
    var dp = [Int](repeating: 0, count: 20)

    for i in 1...day {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        runDay[i] = input[0]
        pay[i] = input[1]
    }

    for i in stride(from: day, through: 1, by: -1) {
        if runDay[i] > day - i + 1 {
            dp[i] = dp[i + 1]
        } else {
            dp[i] = max(pay[i] + dp[i + runDay[i]], dp[i + 1])
        }
    }

    print(dp[1])

}

main()
