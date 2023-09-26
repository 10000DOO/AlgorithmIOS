import Foundation

let input = Array(readLine()!)
var result: [Character] = [] // Character 배열로 변경
var alphabet: [String:Int] = [:]
var last = 0
var middle = ""

for element in input {
    if alphabet[element.description] == nil {
        alphabet.updateValue(1, forKey: element.description)
    } else {
        alphabet[element.description]! += 1
    }
}

if alphabet.filter({$0.value % 2 != 0}).count > 1 {
    print("I'm Sorry Hansoo")
} else {
    let sortedDic = alphabet.sorted{$0.key < $1.key}
    for (key, value) in sortedDic {
        if value % 2 != 0 {
            middle = key
        }
        for _ in 0..<value/2 {
            result.append(key.first!) // Character를 추가
        }
        last = value/2
    }
    let resultString = String(result) // Character 배열을 다시 문자열로 변환
    print(resultString + middle + resultString.reversed())
}