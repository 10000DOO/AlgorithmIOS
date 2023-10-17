//
//  main.swift
//  CodingTest
//
//  Created by 이건준 on 10/14/23.
//

import Foundation

func solution(_ deposit:[Int]) -> [Int] {
    
    var account = [Int]()
    
    for i in deposit {
        if i > 0 {
            account.append(i)
        } else if i < 0{
            var change = account.removeLast()
            if change + i < 0 {
                change = change + i
                while true {
                    change += account.removeLast()
                    if change > 0 {
                        account.append(change)
                        break
                    }
                }
            } else if change + i > 0 {
                account.append(change + i)
            }
        }
    }
    
    return account
}
