import Foundation

let N = readLine()!.split(separator: " ").map{ Int(String($0))! }
var limit = N[0]
var kCount = N[1]
let k = readLine()!.split(separator: " ").map{ Int(String($0))! }
var maxNum = 0

for i in 0...limit {
    var num = i
    var ok = false
    while num > 0 {
        if k.contains(num % 10) {
            ok = true
            num = num / 10
        } else {
            ok = false
            break
        }
    }
    
    if ok {
        maxNum = i
    }
}

print(maxNum)