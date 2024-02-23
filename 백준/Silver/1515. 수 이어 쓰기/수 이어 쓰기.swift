import Foundation

func solution() {
    var inputArray = readLine()!.map{ Int(String($0)) }
    var num = 0
    
    while true {
        num += 1
        var numArray: [Int] = String(num).map { Int(String($0))! }
        
        while numArray.count > 0 && inputArray.count > 0 {
            if numArray.first! == inputArray.first! {
                inputArray.removeFirst()
            }
            numArray.removeFirst()
        }
        
        if inputArray.isEmpty {
            break
        }
    }
    
    print(num)
}

solution()