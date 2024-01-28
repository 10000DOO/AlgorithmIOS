import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
var Z = input[1]
let M = Set(readLine()!.split(separator: " ").map { Int($0)! })

if Z == N {
    Z = 0
}

for K in 1..<N {
    let arr = (0..<N).map { (1 + K * $0) % N }
    
    for val in arr {
        if M.contains(val) {
            break
        }
        if val == Z {
            print(K)
            exit(0)
        }
    }
}

print(1)  // M이 비어있는 경우
