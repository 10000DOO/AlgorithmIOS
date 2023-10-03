import Foundation

var N = Int(readLine()!)!

var houses = readLine()!.split(separator: " ").map{ Int(String($0))! }

houses.sort()

var middle = (N - 1) / 2

print(houses[middle])