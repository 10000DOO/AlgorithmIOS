import Foundation

let N = Int(readLine()!)!
var switchArr = readLine()!.split(separator: " ").map{ Int(String($0))! }
let member = Int(readLine()!)!

for i in 0..<member {
    let memberCard = readLine()!.split(separator: " ").map{ Int(String($0))! }
    if memberCard[0] == 1 {
        for j in 0..<N {
            if (j + 1) % memberCard[1] == 0 {
                switchArr[j] = switchArr[j] == 0 ? 1 : 0
            }
        }
    } else {
        let mark = memberCard[1] - 1
        switchArr[mark] = switchArr[mark] == 0 ? 1 : 0
        
        var leftIndex = mark - 1
        var rightIndex = mark + 1
        while leftIndex >= 0 && rightIndex < N {
            if switchArr[leftIndex] == switchArr[rightIndex] {
                switchArr[leftIndex] = switchArr[leftIndex] == 0 ? 1 : 0
                switchArr[rightIndex] = switchArr[rightIndex] == 0 ? 1 : 0
            } else {
                break
            }
            leftIndex -= 1
            rightIndex += 1
        }
    }
}

for i in 0..<switchArr.count {
    if i % 20 == 19 {
        print(switchArr[i])
    } else {
        print(switchArr[i], terminator: " ")
    }
}