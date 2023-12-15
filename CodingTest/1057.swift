//
//  main.swift
//  CodingTest
//
//  Created by 이건준 on 12/15/23.
//

import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let N = input[0]
var kim = input[1]
var lim = input[2]

for i in 1..<N {
    if (kim % 2 == 1 && lim == kim + 1) || (lim % 2 == 1 && kim == lim + 1) {
        print(i)
        exit(0)
    }
    
    if kim % 2 == 1 {
        kim = (kim / 2) + 1
    } else {
        kim = kim / 2
    }
    
    if lim % 2 == 1 {
        lim = (lim / 2) + 1
    } else {
        lim = lim / 2
    }
}
