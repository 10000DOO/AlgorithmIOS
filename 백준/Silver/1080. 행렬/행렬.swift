import Foundation

func main() {
    let NMArr = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let N = NMArr[0]
    let M = NMArr[1]
    var count = 0
    
    var input = Array(repeating: [Int](), count: N)
    var target = Array(repeating: [Int](), count: N)
    var matching = Array(repeating: [Bool](), count: N)
    
    for i in 0..<N {
        let strArr = Array(readLine()!)
        let intArr = strArr.map { Int(String($0))! }
        input[i] = intArr
    }
    
    for i in 0..<N {
        let strArr = Array(readLine()!)
        let intArr = strArr.map { Int(String($0))! }
        target[i] = intArr
        for j in 0..<M {
            if input[i][j] == target[i][j] {
                matching[i].append(true)
            } else {
                matching[i].append(false)
            }
        }
    }
    
    if input == target {
        print(0)
        exit(0)
    }

    if (N < 3 || M < 3) {
        print(-1)
        exit(0)
    }
    
    for i in 0..<N - 2 {
        for j in 0..<M - 2 {
            if matching[i][j] == false {
                matching[i][j] = true
                matching[i][j+1] = !matching[i][j+1]
                matching[i][j+2] = !matching[i][j+2]
                matching[i+1][j] = !matching[i+1][j]
                matching[i+1][j+1] = !matching[i+1][j+1]
                matching[i+1][j+2] = !matching[i+1][j+2]
                matching[i+2][j] = !matching[i+2][j]
                matching[i+2][j+1] = !matching[i+2][j+1]
                matching[i+2][j+2] = !matching[i+2][j+2]
                count += 1
            }
        }
        if i != N-3 && (matching[i][M-2] == false || matching[i][M-1] == false) {
            print("-1")
            exit(0)
        }
        if i == N-3 {
            if matching[i][M-2] == false || matching[i][M-1] == false {
                print("-1")
                exit(0)
            }
            if matching[N-1].contains(false) || matching[N-2].contains(false) {
                print("-1")
                exit(0)
            }
        }
    }
    print(count)
}

main()
