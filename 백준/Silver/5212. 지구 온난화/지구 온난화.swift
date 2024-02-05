import Foundation

let RC = readLine()!.split(separator: " ").map { Int($0)! }
let R = RC[0]
let C = RC[1]
var map = [[String]]()
var newMap = [[String]]()
var minX = Int.max
var minY = Int.max
var maxX = Int.min
var maxY = Int.min

for _ in 0..<R {
    map.append(Array(readLine()!).map{ String($0) })
}

for i in 0..<R {
    var temp = [String]()
    for j in 0..<C {
        var ocean = 0
        if i - 1 < 0 {
            ocean += 1
        } else if i - 1 >= 0 && map[i - 1][j] == "." {
            ocean += 1
        }
        if i + 1 >= R {
            ocean += 1
        } else if i + 1 < R && map[i + 1][j] == "." {
            ocean += 1
        }
        if j + 1 >= C {
            ocean += 1
        } else if j + 1 < C && map[i][j + 1] == "." {
            ocean += 1
        }
        if j - 1 < 0 {
            ocean += 1
        } else if j - 1 >= 0 && map[i][j - 1] == "." {
            ocean += 1
        }
        if ocean >= 3 {
            temp.append(".")
        } else {
            temp.append(map[i][j])
            if map[i][j] == "X" {
                minX = min(minX, j)
                minY = min(minY, i)
                maxX = max(maxX, j)
                maxY = max(maxY, i)
            }
        }
    }
    newMap.append(temp)
}

for i in minY...maxY {
    for j in minX...maxX {
        print(newMap[i][j], terminator: "")
    }
    print()
}