import Foundation

var t = 0, m = 0
var res = [Double](repeating: 0, count: 4)
var adj = [[(Int, Double)]](repeating: [], count: 4)

func dfs(_ now: Int, _ p: Double, _ cnt: Int) {
    if cnt == t {
        res[now] += p * 100
        return
    }

    for i in adj[now] {
        dfs(i.0, p * i.1, cnt + 1)
    }
}

func main() {
    t = Int(readLine()!)!
    m = Int(readLine()!)!

    for _ in 0..<m {
        if let input = readLine()?.split(separator: " ") {
            let s = Int(input[0].unicodeScalars.first!.value) - Int("A".unicodeScalars.first!.value)
            let e = Int(input[1].unicodeScalars.first!.value) - Int("A".unicodeScalars.first!.value)
            let p = Double(input[2])!
            adj[s].append((e, p))
        }
    }

    for i in 0..<4 {
        dfs(i, 0.25, 0)
    }
    
    for i in 0..<4 {
        print(String(format: "%.2f", res[i]))
    }
}

main()