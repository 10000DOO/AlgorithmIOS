import Foundation

let answer = readLine()!.split(separator: " ").map { Int($0)! }
var count = 0

for i in 1...5 {
    var myAnswer = [Int]()
    myAnswer.append(i)
    if answer[0] == i {
        allCases(answerArr: &myAnswer, wrong: 0, correct: 1, depth: 1)
    } else {
        allCases(answerArr: &myAnswer, wrong: 1, correct: 0, depth: 1)
    }
}

print(count)

func allCases(answerArr: inout [Int], wrong: Int, correct: Int, depth: Int) {
    if depth > 2 && answerArr[depth - 1] == answerArr[depth - 2] && answerArr[depth - 2] == answerArr[depth - 3] {
        return
    }
    if depth == 10 {
        count += 1
        return
    }
    
    for i in 1...5 {
        if answer[depth] == i {
            answerArr.append(i)
            allCases(answerArr: &answerArr, wrong: wrong, correct: correct + 1, depth: depth + 1)
            answerArr.removeLast()
        } else {
            if wrong < 5 {
                answerArr.append(i)
                allCases(answerArr: &answerArr, wrong: wrong + 1, correct: correct, depth: depth + 1)
                answerArr.removeLast()
            }
        }
    }
}