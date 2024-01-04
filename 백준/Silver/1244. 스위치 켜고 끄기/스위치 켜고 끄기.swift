import Foundation

let N = Int(readLine()!)!
var switchArr = readLine()!.split(separator: " ").map{ Int(String($0))! }
let member = Int(readLine()!)!

for _ in 0..<member {
    let memberCard = readLine()!.split(separator: " ").map{ Int(String($0))! }
    if memberCard[0] == 1 { // 남자 학생
        for j in stride(from: memberCard[1], to: N+1, by: memberCard[1]) {
            switchArr[j-1] = switchArr[j-1] == 0 ? 1 : 0
        }
    } else { // 여자 학생
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