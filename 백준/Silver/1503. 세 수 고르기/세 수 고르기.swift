import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let m = input[1]
let s = readLine()!.split(separator: " ").map { Int(String($0))! }
var res = Int.max

for i in 1...1001 where !s.contains(i) {
    for j in 1...1001 where !s.contains(j) {
        for k in 1...1001 where !s.contains(k) {
            let q = i * j * k
            if abs(n - q) < res {
                res = abs(n - q)
            }
            if n + 1 < q {
                break
            }
        }
    }
}

print(res)
