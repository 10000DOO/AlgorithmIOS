import Foundation

let NK = readLine()!.split(separator: " ").map { Int($0)! }
let N = NK[0]
let K = NK[1]
var open = readLine()!.split(separator: " ").map { Int($0)! }
var team = readLine()!.split(separator: " ").map { Int($0)! }
var sum = [(Int, Int)]()
var maxTeamElement = Set<Int>()

for i in 0..<N {
    for j in 0..<N {
        sum.append((j, open[i] * team[j]))
    }
}

sum.sort{ $0.1 > $1.1}

for i in sum {
    if maxTeamElement.count == K && !maxTeamElement.contains(i.0) {
        print(i.1)
        break
    } else {
        maxTeamElement.insert(i.0)
    }
}