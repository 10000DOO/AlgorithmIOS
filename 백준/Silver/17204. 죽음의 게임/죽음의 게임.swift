import Foundation

let NK = readLine()!.split(separator: " ").map { Int($0)! }
let N = NK[0]
let K = NK[1]
var people = [Int]()
var index = 0
var count = 0

for _ in 0..<N {
    people.append(Int(readLine()!)!)
}

while index != K {
    index = people[index]
    count += 1
    
    if count > N {
        count = -1
        break
    }
}

print(count)