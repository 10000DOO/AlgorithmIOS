import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]

if N % 2 == 0 || M % 2 == 0 {
    print("A")
} else {
    print("B")
}