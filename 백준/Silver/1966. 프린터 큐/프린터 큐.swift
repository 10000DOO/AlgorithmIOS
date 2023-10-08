import Foundation

let count = Int(readLine()!)!

for _ in 0..<count {
    var NM = readLine()!.split(separator: " ").map{ Int(String($0))! }
    var N = NM[0]
    var M = NM[1]
    var importance = readLine()!.split(separator: " ").map{ Int(String($0))! }
    var max = importance.max()
    var index = [Int]()
    var count = 0
    
    for i in 0..<N {
        index.append(i)
    }
    
    while true {
        if importance.first == max{
            count += 1
            if index.first == M {
                print(count)
                break
            } else {
                importance.removeFirst()
                index.removeFirst()
                max = importance.max()
            }
        } else {
            importance.append(importance.first!)
            index.append(index.first!)
            importance.removeFirst()
            index.removeFirst()
        }
    }
}