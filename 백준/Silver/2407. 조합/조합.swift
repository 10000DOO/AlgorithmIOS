import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let m = input[1]

var dp = Array(repeating: Array(repeating: "0", count: 101), count: 101)

func calculateCombination(_ n: Int, _ r: Int) -> String {
    if n == r || r == 0 {
        return "1"
    }
    
    if dp[n][r] != "0" {
        return dp[n][r]
    }
    
    dp[n][r] = bigNumberAddition(calculateCombination(n - 1, r - 1), calculateCombination(n - 1, r))
    return dp[n][r]
}

func bigNumberAddition(_ num1: String, _ num2: String) -> String {
    var tempNum1 = Array(num1.reversed())
    var tempNum2 = Array(num2.reversed())
    while tempNum1.count < tempNum2.count {
        tempNum1.append("0")
    }
    while tempNum1.count > tempNum2.count {
        tempNum2.append("0")
    }
    
    var carry = 0
    var result = ""
    for i in 0..<tempNum1.count {
        let temp = Int(String(tempNum1[i]))! + Int(String(tempNum2[i]))! + carry
        result = String(temp % 10) + result
        carry = temp / 10
    }
    
    if carry != 0 {
        result = String(carry) + result
    }
    
    return result
}

print(calculateCombination(n, m))
