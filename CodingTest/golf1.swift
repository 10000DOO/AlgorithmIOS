//
//  main.swift
//  CodingTest
//
//  Created by 이건준 on 10/14/23.
//

import Foundation

func solution(_ company_names:[String], _ scores:[[Int]]) -> [String] {
    
    var scoresIndex: [[Int]]
    var result = [String]()
    
    scoresIndex = calcScore(scores: scores)
    scoresIndex.sort { (first, second) -> Bool in
        if first[1] != second[1] {
            return first[1] > second[1]
        } else if first[2] != second[2] {
            return first[2] > second[2]
        } else {
            let firstCompanyName = company_names[first[0]]
            let secondCompanyName = company_names[second[0]]
            return firstCompanyName < secondCompanyName
        }
    }
    
    for i in 0..<scoresIndex.count {
        result.append(company_names[scoresIndex[i][0]])
    }
    
    return result
}

func calcScore(scores:[[Int]]) -> [[Int]] {
    var scoresIndex = [[Int]](repeating: [0, 0, 0], count: scores.count)
    for i in 0..<scores.count {
        var count = 0
        var sum = 0
        for j in 0..<scores[i].count {
            if scores[i][j] >= 80 {
                count += 1
            }
            sum += scores[i][j]
        }
        scoresIndex[i][0] = i
        scoresIndex[i][1] = count
        scoresIndex[i][2] = sum
    }
    
    return scoresIndex
}
