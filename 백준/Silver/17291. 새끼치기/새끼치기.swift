import Foundation

let N = Int(readLine()!)!
var year = 2
var oddYear = [3]
var evenYear = [Int]()

while year <= N {
    oddYear = oddYear.map { $0 - 1 }
    evenYear = evenYear.map { $0 - 1 }
    
    if year % 2 == 1 {
        for _ in 0..<oddYear.count {
            oddYear.append(3)
        }
        for _ in 0..<evenYear.count {
            oddYear.append(3)
        }
    } else {
        for _ in 0..<evenYear.count {
            evenYear.append(4)
        }
        for _ in 0..<oddYear.count {
            evenYear.append(4)
        }
    }
    
    oddYear = oddYear.filter{ $0 > 0 }
    evenYear = evenYear.filter{ $0 > 0 }
    year += 1
}

print(oddYear.count + evenYear.count)