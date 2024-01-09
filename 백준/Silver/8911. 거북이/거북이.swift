import Foundation

let N = Int(readLine()!)!
var LFRB = [[-1, 0, 1, 0], [0, 1, 0, -1]]
var currentDirection = 1

for _ in 0..<N {
    let arr = readLine()!.map{ String($0) }
    var xPosition = 0
    var yPosition = 0
    var minX = 0
    var minY = 0
    var maxX = 0
    var maxY = 0
    
    for i in arr {
        if i == "F" {
            xPosition += LFRB[0][currentDirection]
            yPosition += LFRB[1][currentDirection]
        } else if i == "L" {
            currentDirection = currentDirection == 0 ? 3 : currentDirection - 1
        } else if i == "R" {
            currentDirection = currentDirection == 3 ? 0 : currentDirection + 1
        } else if i == "B" {
            xPosition -= LFRB[0][currentDirection]
            yPosition -= LFRB[1][currentDirection]
        }
        
        minX = min(minX, xPosition)
        minY = min(minY, yPosition)
        maxX = max(maxX, xPosition)
        maxY = max(maxY, yPosition)
    }
    
    print((maxX - minX) * (maxY - minY))
}