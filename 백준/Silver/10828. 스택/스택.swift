import Foundation

let N = Int(readLine()!)!
var myStack = [Int]()

for _ in 0..<N {
    var input = readLine()!.split(separator: " ").map{ String($0) }
    switch input[0] {
        case "push":
        myStack.append(Int(input.last!)!)
        case "pop":
        let result = myStack.popLast()
        if result != nil {
            print(result!)
        } else {
            print("-1")
        }
        case "top":
        if !myStack.isEmpty {
            print(myStack.last!)
        } else {
            print("-1")
        }
        case "empty":
        if !myStack.isEmpty {
            print("0")
        } else {
            print("1")
        }
        case "size":
        print(myStack.count)
    default:
        break
    }
}