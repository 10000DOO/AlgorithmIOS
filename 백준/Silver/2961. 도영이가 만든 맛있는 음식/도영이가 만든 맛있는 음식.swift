import Foundation

let N = Int(readLine()!)!

var ingredient = [(Int, Int)]()

for _ in 0..<N {
    if let input = readLine()?.split(separator: " ").map({ Int($0)! }) {
        ingredient.append((input[0], input[1]))
    }
}

var result = [(Int, Int)]()
var ans = Int.max

func makeNums(goal: Int, level: Int, idx: Int) {
    // 종료 조건
    if level == goal {
        // 신맛과 쓴 맛의 차를 구하기
        var jucy = 1
        var bitter = 0
        for sub in result {
            jucy *= sub.0
            bitter += sub.1
        }

        ans = min(ans, abs(jucy - bitter))
        return
    }

    for i in idx..<N {
        result.append(ingredient[i])
        makeNums(goal: goal, level: level + 1, idx: i + 1)
        result.removeLast()
    }
}

for i in 1...N {
    makeNums(goal: i, level: 0, idx: 0)
}

print(ans)