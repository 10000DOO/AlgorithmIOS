import Foundation

let N = Int(readLine()!)!
var allCount = [Int]()
var result = [Int]()
for i in 1...9 {
    for j in 1...9 where i != j {
        for k in 1...9 where i != k && j != k {
            allCount.append(i * 100 + j * 10 + k)
        }
    }
}

for i in 0..<N {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    var num = input[0]
    var st = input[1]
    var ba = input[2]
    for j in allCount {
        var strike = 0
        var ball = 0
        if j / 100 == num / 100 {
            strike += 1
        }
        if (j % 100) / 10 == (num % 100) / 10 {
            strike += 1
        }
        if j % 10 == num % 10 {
            strike += 1
        }
        
        if j / 100 == (num % 100) / 10 {
            ball += 1
        }
        if j / 100 == num % 10  {
            ball += 1
        }
        
        if (j % 100) / 10 == num / 100 {
            ball += 1
        }
        if (j % 100) / 10 == num % 10 {
            ball += 1
        }
        
        if j % 10 == num / 100 {
            ball += 1
        }
        if j % 10 == (num % 100) / 10 {
            ball += 1
        }
        
        if strike == st && ball == ba {
            result.append(j)
        }
    }
    allCount = result
    result.removeAll()
}

print(allCount.count)