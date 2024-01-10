import Foundation

let input = readLine()!.split(separator: " ").map { String($0) }
var kingX = input[0].first { $0.isLetter }?.unicodeScalars.first.flatMap { Int($0.value) % 65 }
var kingY = Int(input[0].filter { $0.isNumber })! - 1

var stoneX = input[1].first { $0.isLetter }?.unicodeScalars.first.flatMap { Int($0.value) % 65 }
var stoneY = Int(input[1].filter { $0.isNumber })! - 1

for _ in 0..<Int(input[2])! {
    let movement = readLine()!
    if movement == "R" {
        if kingX == 7 {
            continue
        } else {
            if kingX! + 1 == stoneX && kingY == stoneY {
                if stoneX == 7 {
                    continue
                } else {
                    kingX! += 1
                    stoneX! += 1
                }
            }
            else {
                kingX! += 1
            }
        }
    }
    if movement == "L" {
        if kingX == 0 {
            continue
        } else {
            if kingX! - 1 == stoneX && kingY == stoneY {
                if stoneX == 0 {
                    continue
                } else {
                    kingX! -= 1
                    stoneX! -= 1
                }
            } else {
                kingX! -= 1
            }
        }
    }
    if movement == "B" {
        if kingY == 0 {
            continue
        } else {
            if kingY - 1 == stoneY && kingX == stoneX {
                if stoneY == 0 {
                    continue
                } else {
                    kingY -= 1
                    stoneY -= 1
                }
            } else {
                kingY -= 1
            }
        }
    }
    if movement == "T" {
        if kingY == 7 {
            continue
        } else {
            if kingY + 1 == stoneY && kingX == stoneX {
                if stoneY == 7 {
                    continue
                } else {
                    kingY += 1
                    stoneY += 1
                }
            } else {
                kingY += 1
            }
        }
    }
    if movement == "RT" {
        if kingX == 7 || kingY == 7{
            continue
        } else {
            if kingX! + 1 == stoneX && kingY + 1 == stoneY {
                if stoneX == 7 || stoneY == 7 {
                    continue
                } else {
                    kingX! += 1
                    kingY += 1
                    stoneX! += 1
                    stoneY += 1
                }
            } else {
                kingX! += 1
                kingY += 1
            }
        }
    }
    if movement == "LT" {
        if kingX == 0 || kingY == 7{
            continue
        } else {
            if kingX! - 1 == stoneX && kingY + 1 == stoneY {
                if stoneX == 0 || stoneY == 7 {
                    continue
                } else {
                    kingX! -= 1
                    kingY += 1
                    stoneX! -= 1
                    stoneY += 1
                }
            } else {
                kingX! -= 1
                kingY += 1
            }
        }
    }
    if movement == "RB" {
        if kingX == 7 || kingY == 0{
            continue
        } else {
            if kingX! + 1 == stoneX && kingY - 1 == stoneY {
                if stoneX == 7 || stoneY == 0 {
                    continue
                } else {
                    kingX! += 1
                    kingY -= 1
                    stoneX! += 1
                    stoneY -= 1
                }
            } else {
                kingX! += 1
                kingY -= 1
            }
        }
    }
    if movement == "LB" {
        if kingX == 0 || kingY == 0{
            continue
        } else {
            if kingX! - 1 == stoneX && kingY - 1 == stoneY {
                if stoneX == 0 || stoneY == 0 {
                    continue
                } else {
                    kingX! -= 1
                    kingY -= 1
                    stoneX! -= 1
                    stoneY -= 1
                }
            } else {
                kingX! -= 1
                kingY -= 1
            }
        }
    }
}

print("\(String(UnicodeScalar(65 + kingX!)!))\(kingY + 1)")
print("\(String(UnicodeScalar(65 + stoneX!)!))\(stoneY + 1)")