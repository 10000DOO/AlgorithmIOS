import Foundation

var n = 0
var s = 0
var arr = [Int]()
var cnt = 0

func funcRecursive(cur: Int, tot: Int) {
    if cur == n {
        if tot == s {
            cnt += 1
        }
        return
    }
    
    funcRecursive(cur: cur + 1, tot: tot)
    funcRecursive(cur: cur + 1, tot: tot + arr[cur])
}

func main() {
    if let input = readLine() {
        let inputValues = input.split(separator: " ").map { Int($0)! }
        n = inputValues[0]
        s = inputValues[1]
    }
    
    if let input = readLine() {
        arr = input.split(separator: " ").map { Int($0)! }
    }
    
    funcRecursive(cur: 0, tot: 0)
    
    if s == 0 {
        cnt -= 1
    }
    
    print(cnt)
}

main()
