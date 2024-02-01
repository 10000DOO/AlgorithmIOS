import Foundation

var N = 0
var K = 0
var board = [Character]()
var temp = [Character]()

func separate(_ color1: Character, _ color2: Character, _ color3: Character, _ i: Int) {
    var cR = 0
    var cG = 0
    var cB = 0

    if color1 == "R" {
        cR += 1
    } else if color1 == "G" {
        cG += 1
    } else {
        cB += 1
    }

    if color2 == "R" {
        cR += 1
    } else if color2 == "G" {
        cG += 1
    } else {
        cB += 1
    }

    if color3 == "R" {
        cR += 1
    } else if color3 == "G" {
        cG += 1
    } else {
        cB += 1
    }

    if (cR == 2 && cG == 1) || (cG == 2 && cB == 1) || (cB == 2 && cR == 1) {
        temp[i] = "R"
    } else {
        temp[i] = "G"
    }
}

func main() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    N = input[0]
    K = input[1]

    let line = readLine()!
    board = Array(line)
    temp = Array(repeating: " ", count: N)

    if N == 1 {
        board[0] = "G"
    } else {
        for _ in 0..<K {
            for i in 0..<N {
                if i == 0 {
                    if (board[0] == board[1] && board[0] == board[N-1]) ||
                        (board[0] != board[1] && board[0] != board[N-1] && board[1] != board[N-1]) {
                        temp[0] = "B"
                    } else {
                        separate(board[N-1], board[0], board[1], i)
                    }
                } else if i == N-1 {
                    if (board[0] == board[N-2] && board[0] == board[N-1]) ||
                        (board[0] != board[N-2] && board[0] != board[N-1] && board[N-2] != board[N-1]) {
                        temp[N-1] = "B"
                    } else {
                        separate(board[N-2], board[N-1], board[0], i)
                    }
                } else {
                    if (board[i] == board[i+1] && board[i] == board[i-1]) ||
                        (board[i] != board[i+1] && board[i] != board[i-1] && board[i+1] != board[i-1]) {
                        temp[i] = "B"
                    } else {
                        separate(board[i-1], board[i], board[i+1], i)
                    }
                }
            }
            board = temp
        }
    }

    var cR = 0
    var cG = 0
    var cB = 0

    for i in 0..<N {
        if board[i] == "R" {
            cR += 1
        } else if board[i] == "G" {
            cG += 1
        } else {
            cB += 1
        }
    }

    print("\(cR) \(cG) \(cB)")
}

main()