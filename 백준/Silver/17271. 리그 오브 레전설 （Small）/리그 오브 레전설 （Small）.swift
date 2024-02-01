import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]
let DIV = 1_000_000_007

var cache = [Int](repeating: 0, count: N + 1)

cache[0] = 1
for i in 1...N {
    cache[i] = (cache[i - 1] + (i - M >= 0 ? cache[i - M] : 0)) % DIV
}

print(cache[N])
