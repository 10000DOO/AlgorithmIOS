//
//  main.swift
//  CodingTest
//
//  Created by 이건준 on 10/14/23.
//

import Foundation

func solution(_ consume:[String], _ cards:[[String]]) -> Int {
    
    var consumeInfo = [String: Int]()
    
    var maxDiscount = 0
    var resultCardNum = -1
    
    for i in consume {
        let temp = i.split(separator: " ").map{ String($0) }
        if consumeInfo.keys.contains(temp[0]) {
            consumeInfo.updateValue(consumeInfo[temp[0]]! + Int(temp[1])!, forKey: temp[0])
        } else {
            consumeInfo.updateValue(Int(temp[1])!, forKey: temp[0])
        }
    }
    
    for (index, i) in cards.enumerated() {
        var cardInfo = [String: (Int, Int)]()
        var totalDiscount = 0
        for j in i {
            let temp = j.split(separator: " ").map{ String($0) }
            cardInfo[temp[0]] = (Int(temp[1])!, Int(temp[2])!)
        }
                
        for (consumeCategory, consumeAmount) in consumeInfo {
            if cardInfo.keys.contains(consumeCategory) {
                totalDiscount += min(consumeAmount * cardInfo[consumeCategory]!.0 / 100, cardInfo[consumeCategory]!.1)
            }
        }
        
        if maxDiscount < totalDiscount {
            maxDiscount = totalDiscount
            resultCardNum = index + 1
        }
        if maxDiscount == totalDiscount {
            resultCardNum = resultCardNum > (index + 1) ? (index + 1) : resultCardNum
        }
    }
    
    return resultCardNum
}
