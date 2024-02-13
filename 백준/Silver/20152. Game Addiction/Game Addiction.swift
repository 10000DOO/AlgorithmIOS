import Foundation

func main() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let H = input[0]
    let N = input[1]
    var arr = [[Int]](repeating: [Int](repeating: 0, count: 31), count: 31)
    for i in 0..<31 {
        arr[0][i] = 1
    }
    for i in 1..<31 {
        for j in i..<31 {
            arr[i][j] = arr[i - 1][j] + arr[i][j - 1]
        }
    }
    
    let k = abs(H - N)
    print(arr[k][k])
}

main()