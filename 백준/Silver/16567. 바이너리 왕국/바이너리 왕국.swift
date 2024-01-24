import Foundation

var input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]

var status = readLine()!.split(separator: " ").map { Int($0)! }

var cnt = 0
var conti = false

for i in 0..<N {
    if status[i] == 1 && !conti {
        cnt += 1
        conti = true
    } else if status[i] == 0 {
        conti = false
    }
}

var result = ""

for _ in 0..<M {
    let trial = readLine()!.split(separator: " ").map { Int($0)! }
    if trial[0] == 0 {
        result += "\(cnt)\n"
    } else {
        let index = trial[1] - 1
        if status[index] == 1 {
            continue
        } else {
            status[index] = 1
            
            if index == 0 {
                if status[index + 1] == 0 {
                    cnt += 1
                }
            } else if index == N - 1 {
                if status[index - 1] == 0 {
                    cnt += 1
                }
            } else {
                if status[index - 1] == 0 && status[index + 1] == 0 {
                    cnt += 1
                } else if status[index - 1] == 1 && status[index + 1] == 1 {
                    cnt -= 1
                }
            }
        }
    }
}

print(result, terminator: "")