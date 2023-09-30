import Foundation

var NM = readLine()!.split(separator: " ").map{ Int(String($0))! }

var N = NM[0]
var M = NM[1]
var result = 0

if N == 1 {
    result = 1
} else if N == 2 {
    result = min(4, (M + 1) / 2)
} else if M >= 7 {
    result = M - 2
} else if M < 7 {
    result = min(4, M)
}

print(result)