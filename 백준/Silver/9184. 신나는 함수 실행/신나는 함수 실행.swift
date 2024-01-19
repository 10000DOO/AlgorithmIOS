import Foundation

var dp = [[[Int]]](repeating: [[Int]](repeating: [Int](repeating: 0, count: 21), count: 21), count: 21)

func w(_ a: Int, _ b: Int, _ c: Int) -> Int {
    if a <= 0 || b <= 0 || c <= 0 {
        return 1
    }
    
    if a > 20 || b > 20 || c > 20 {
        if dp[20][20][20] != 0 {
            return dp[20][20][20]
        } else {
            return w(20, 20, 20)
        }
    }

    if dp[a][b][c] != 0 {
        return dp[a][b][c]
    }

    if a < b && b < c {
        dp[a][b][c] = w(a, b, c-1) + w(a, b-1, c-1) - w(a, b-1, c)
    } else {
        dp[a][b][c] = w(a-1, b, c) + w(a-1, b-1, c) + w(a-1, b, c-1) - w(a-1, b-1, c-1)
    }

    return dp[a][b][c]
}

while true {
    if let input = readLine() {
        let arr = input.split(separator: " ").map { Int(String($0))! }
        if arr[0] == -1 && arr[1] == -1 && arr[2] == -1 {
            break // 종료 조건 수정
        }
        let result = w(arr[0], arr[1], arr[2])
        print("w(\(arr[0]), \(arr[1]), \(arr[2])) = \(result)")
    }
}