import Foundation

var T = Int(readLine()!)!

for _ in 0..<T {
    var N = Int(readLine()!)!
    var stock = readLine()!.split(separator: " ").map{ Int(String($0))! }
    var maxPrice = 0
    var profit = 0
    
    for i in (0..<N).reversed() {
        if stock[i] > maxPrice {
            maxPrice = stock[i]
        } else {
            profit += maxPrice - stock[i]
        }
    }
    
    print(profit)
}