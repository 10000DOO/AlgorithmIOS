import Foundation

let N = Int(readLine()!)!
var nums = readLine()!.split(separator: " ").map{ Int($0)! }
var operators = readLine()!.split(separator: " ").map{ Int($0)! }
var minResult = Int.max
var maxResult = Int.min

allCases(temp: nums[0], index: 1)

func allCases(temp: Int, index: Int) {
    if operators.allSatisfy({ $0 == 0 }) {
        minResult = min(minResult, temp)
        maxResult = max(maxResult, temp)
        return
    }
    
    for i in operators.indices {
        if operators[i] != 0 {
            operators[i] -= 1
            switch i {
            case 0:
                allCases(temp: temp + nums[index], index: index + 1)
            case 1:
                allCases(temp: temp - nums[index], index: index + 1)
            case 2:
                allCases(temp: temp * nums[index], index: index + 1)
            case 3:
                allCases(temp: temp / nums[index], index: index + 1)
            default:
                break
            }
            operators[i] += 1
        }
    }
}

print(maxResult)
print(minResult)