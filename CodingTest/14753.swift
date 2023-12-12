//
//  main.swift
//  CodingTest
//
//  Created by 이건준 on 12/12/23.
//

import Foundation
//n개의 카드가 있고 각 카드에는 정수가 있으며 두 개 이상의 카드가 동일한 정수를 가질 수 있습니다. 
//이 카드들 중에서 우리는 선택한 카드의 숫자의 곱이 최대가 되도록 두세 장의 카드를 선택하려고 합니다.
//예를 들어, 숫자가 5, 10, -2, 3, 5, 2인 카드 6장이 있다고 가정합니다. 숫자가 5, 10, 5인 카드 3장을 선택하면 세 숫자의 곱은 250입니다. , 이는 최대 제품입니다.
//숫자 10, 0, -5, 2가 포함된 4장의 카드에 대한 또 다른 예를 살펴보겠습니다. 이 예에서 숫자 10과 2가 포함된 카드 두 장을 선택하면 이 두 숫자의 곱은 20이 됩니다. 제품.

//카드에 n개의 숫자가 주어지면, 두 개 또는 세 개의 카드에 있는 숫자의 최대 곱을 계산하는 프로그램을 작성하세요.

let N = Int(readLine()!)!
var nums = readLine()!.split(separator: " ").map{ Int(String($0))! }

nums.sort()

let plusTwo = nums[0] * nums[1]
let plusThree = nums[0] * nums[1] * nums[2]
let minusTwo = nums[nums.count - 1] * nums[nums.count - 2]
let minusThree = nums[nums.count - 1] * nums[nums.count - 2] * nums[nums.count - 3]
let other = nums[0] * nums[1] * nums[nums.count - 1]

print(max(other, max(max(plusTwo, plusThree), max(minusTwo, minusThree))))
