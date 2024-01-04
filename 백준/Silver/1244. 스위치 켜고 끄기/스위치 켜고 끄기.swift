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
        
        for j in 1..<N / 2 {
            if mark - j >= 0 && mark + j < N {
                if switchArr[mark - j] == switchArr[mark + j] {
                    switchArr[mark - j] = switchArr[mark - j] == 0 ? 1 : 0
                    switchArr[mark + j] = switchArr[mark + j] == 0 ? 1 : 0
                } else {
                    break
                }
            } else {
                break
            }
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