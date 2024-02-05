import Foundation

while true {
    var revenue = [Int]()    
    let N = Int(readLine()!)!
    
    if N == 0 {
        break
    } else {
        for _ in 0..<N {
            revenue.append(Int(readLine()!)!)
        }
        for i in 1..<N {
            revenue[i] = max(revenue[i], revenue[i - 1] + revenue[i])
        }
    }
    print(revenue.max()!)
}