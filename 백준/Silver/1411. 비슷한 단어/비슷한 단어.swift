import Foundation

let N = Int(readLine()!)!
var word = [String]()
var count = 0

for _ in 0..<N {
    let temp = Array(readLine()!).map{ String($0) }
    var convert = Array(repeating: 0, count: temp.count)
    var index = 1
    for i in 0..<temp.count {
        for j in i..<temp.count {
            if temp[i] == temp[j] && convert[j] == 0 {
                convert[j] = index
            }
        }
        index += 1
    }
    word.append(convert.map { String($0) }.joined(separator: ""))
}

for i in 0..<N {
    for j in i + 1..<N {
        if word[i] == word[j] {
            count += 1
        }
    }
}

print(count)