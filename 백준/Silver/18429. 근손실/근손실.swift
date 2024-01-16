import Foundation

var result = 0
var day = 0
var arr: [Int] = []
var visited: [Bool] = []

func main() {
    let nk = readLine()!.split(separator: " ").map { Int($0)! }
    let n = nk[0]
    let k = nk[1]
    
    arr = readLine()!.split(separator: " ").map { Int($0)! }
    visited = Array(repeating: false, count: n)
    
    muscle(w: 500, k: k, ex: arr)
    
    print("\(result)")
}

func muscle(w: Int, k: Int, ex: [Int]) {
    if w < 500 {
        return
    }
    if day == ex.count {
        result += 1
        return
    }
    for i in 0..<ex.count {
        if !visited[i] {
            visited[i] = true
            let newWeight = w - k + ex[i]
            day += 1
            muscle(w: newWeight, k: k, ex: ex)
            visited[i] = false
            day -= 1
        }
    }
}

main()
