import Foundation

let N = Int(readLine()!)!
//var nums = Set<Int>()
let roma  = [1, 10, 5, 50]
var result = 0
var dp = Array(repeating: Array(repeating: false, count: 1001), count: 21)

for i in roma {
    calc(sum: i, depth: 1)
}

//print(nums.count)
print(result)

func calc(sum: Int, depth: Int) {
    dp[depth][sum] = true
    if depth == N {
        if dp[depth][sum] {
            result += 1
        }
        //nums.insert(sum)
        return
    }
    
    for i in roma {
        var newSum = sum + i
        if dp[depth + 1][newSum] {
            continue
        } else {
            calc(sum: newSum, depth: depth + 1)
        }
    }
}