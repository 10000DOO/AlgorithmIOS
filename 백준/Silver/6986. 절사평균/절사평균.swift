import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let K = input[1]

var li = [Double]()
for _ in 0..<N {
    let score = Double(readLine()!)!
    li.append(score)
}

li.sort()

let js = li[K..<N-K].reduce(0, +) / Double(N - K * 2)
let bs = (li[K..<N-K].reduce(0, +) + li[K] * Double(K) + li[N-K-1] * Double(K)) / Double(N)

print(String(format: "%.2f", js + 1e-8))
print(String(format: "%.2f", bs + 1e-8))
