import Foundation

var firstInput = readLine()!.split(separator: " ").map{ Int(String($0))! }
var n = firstInput[0]
var m = firstInput[1]
var cards = readLine()!.split(separator: " ").map{ Int(String($0))! }
var sum = 0

for _ in 0..<m {
    cards.sort()
    cards[0] = cards[0] + cards[1]
    cards[1] = cards[0]
}

for i in 0..<n {
    sum += cards[i]
}

print(sum)