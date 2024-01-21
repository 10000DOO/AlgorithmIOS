import Foundation

let N = Int(readLine()!)!
var snow = readLine()!.split(separator: " ").map { Int(String($0))! }
var result = 0

snow.sort{ $0 > $1 }
while !snow.isEmpty {
    if snow.count >= 2 {
        snow[0] = snow[0] - 1
        snow[1] = snow[1] - 1
        result += 1
        snow = snow.filter { $0 > 0 }
        snow.sort{ $0 > $1 }
    } else {
        snow[0] = snow[0] - 1
        result += 1
        if snow[0] == 0 {
            break
        }
    }
}

if result > 1440 {
    print(-1)
} else {
    print(result)
}