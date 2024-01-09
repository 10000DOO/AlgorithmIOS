import Foundation

func main() {
    guard let input = readLine() else { return }
    let inputs = input.components(separatedBy: " ").map { Int($0)! }
    let n = inputs[0]
    let k = inputs[1]
    
    guard let arrayInput = readLine() else { return }
    var s = [0] + arrayInput.components(separatedBy: " ").map { Int($0)! % 2 }
    var dp = Array(repeating: Array(repeating: 0, count: k + 1), count: n + 1)
    
    for i in 1...n {
        for j in 0...k {
            if s[i] == 0 { // When even
                dp[i][j] = dp[i - 1][j] + 1
            }
            if j != 0 && s[i] == 1 { // When odd
                dp[i][j] = dp[i - 1][j - 1]
            }
        }
    }

    let result = dp.map { $0[k] }
    print(result.max() ?? 0)
}

main()