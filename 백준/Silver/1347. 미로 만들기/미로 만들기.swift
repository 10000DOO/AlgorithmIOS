import Foundation

let N = Int(readLine()!)!
var direction = Array(readLine()!).map{ String($0) }
var map = Array(repeating: Array(repeating: "#", count: 102), count: 102)
var myX = 51
var myY = 51
var moveX = [0, 1, 0, -1]
var moveY = [1, 0, -1, 0]
var mydirection = 0
var minX = 51
var maxX = 51
var minY = 51
var maxY = 51
var result = ""

for i in direction {
    map[myY][myX] = "."
    
    if i == "R" {
        moveRight()
    } else if i == "L" {
        moveLeft()
    } else {
        myX += moveX[mydirection]
        myY += moveY[mydirection]
        minX = min(minX, myX)
        maxX = max(maxX, myX)
        minY = min(minY, myY)
        maxY = max(maxY, myY)
    }
}

map[myY][myX] = "."

for i in minY...maxY {
    for j in minX...maxX {
        result += map[i][j]
    }
    result += "\n"
}

print(result)

func moveRight() {
    mydirection -= 1
    if mydirection < 0 {
        mydirection = 3
    }
}

func moveLeft() {
    mydirection += 1
    if mydirection > 3 {
        mydirection = 0
    }
}