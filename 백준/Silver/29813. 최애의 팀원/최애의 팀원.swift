import Foundation

let N = Int(readLine()!)!
var line = [[String]]()

for _ in 0..<N {
    line.append(readLine()!.split(separator: " ").map { String($0) })
}

while line.count > 1 {
    let person = line[0][0]
    let num = Int(line[0][1])!
    line.remove(at: 0)
    
    for _ in 0..<num - 1 {
        line.append(line.remove(at: 0))
    }
    
    line.remove(at: 0)
}

print(line[0][0])