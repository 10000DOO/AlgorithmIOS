import Foundation

func getClockNum() -> [Bool] {
    var visit = [Bool](repeating: false, count: 10000)

    for a in 1..<10 {
        for b in 1..<10 {
            for c in 1..<10 {
                for d in 1..<10 {
                    let n = getMin(a, b, c, d)

                    if !visit[n] {
                        visit[n] = true
                    }
                }
            }
        }
    }

    return visit
}

func getMin(_ a: Int, _ b: Int, _ c: Int, _ d: Int) -> Int {
    var minVal = Int.max

    minVal = min(minVal, a * 1000 + b * 100 + c * 10 + d)
    minVal = min(minVal, b * 1000 + c * 100 + d * 10 + a)
    minVal = min(minVal, c * 1000 + d * 100 + a * 10 + b)
    minVal = min(minVal, d * 1000 + a * 100 + b * 10 + c)

    return minVal
}

func main() {
    var input = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let a = input[0]
    let b = input[1]
    let c = input[2]
    let d = input[3]
    let minVal = getMin(a, b, c, d)
    var clockNum = getClockNum()

    var answer = 0
    for i in 1111...minVal {
        if clockNum[i] {
            answer += 1
        }
    }

    print(answer)
}

main()