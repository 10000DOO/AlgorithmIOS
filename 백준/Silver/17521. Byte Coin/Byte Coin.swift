import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
var price = [Int]()
var money = input[1]
var stock = 0

for i in 0..<input[0] {
    price.append(Int(readLine()!)!)
}

for i in 0..<input[0] - 1 {
    if price[i] > price[i + 1] && stock > 0 {
        money = money + (stock * price[i])
        stock = 0
    }
    
    if price[i] < price[i + 1] && price[i] <= money {
        stock = money / price[i]
        money = money % price[i]
    }
}

if stock > 0 {
    money = money + (stock * price.last!)
}

print(money)