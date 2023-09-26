import Foundation

var firstArr = readLine()!.split(separator: " ").map{ Int(String($0))! }

var N = firstArr[0]
var L = firstArr[1]

var leak = readLine()!.split(separator: " ").map{ Int(String($0))! }

leak.sort()

var count = N

var last = 0

for (index, element) in leak.enumerated() {
    if index == 0 {
        last = element
    } else {
        if element - last < L {
            count -= 1
        } else {
            last = element
        }
    }
}

print(count)