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
    if let input = readLine() {
        let st = StringTokenizer(input)
        if let a = Int(st.nextToken()), let b = Int(st.nextToken()), let c = Int(st.nextToken()), let d = Int(st.nextToken()) {
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
    }
}

class StringTokenizer {
    let input: String
    var tokens: [String]
    var index: Int

    init(_ input: String) {
        self.input = input
        self.tokens = input.split(separator: " ").map { String($0) }
        self.index = 0
    }

    func nextToken() -> String {
        defer { index += 1 }
        return tokens[index]
    }
}

// Call the main function
main()
