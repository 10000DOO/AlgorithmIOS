import Foundation

let NZM = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = NZM[0]
let Z = NZM[1]
let M = NZM[2]
var obstacle = Array(repeating: false, count: N+1)

if M > 0 {
    let MValues = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    for i in 0..<M {
        obstacle[MValues[i]] = true
    }
}

func solve() -> Int {
    outer: for i in 1..<1000 {
        var cur = 1
        var isVisited = obstacle
        
        while cur < 1000 {
            if cur == Z {
                return i
            }
            if !isVisited[cur] {
                isVisited[cur] = true
            } else {
                break
            }
            cur += i
            if cur > N {
                cur -= N
            }
        }
    }
    return -1
}

print(solve())
