import Foundation

struct Point {
    var x: Int
    var y: Int
}

func getArea(_ a: Int, _ b: Int, _ c: Int, _ points: [Point]) -> Int {
    return abs((points[a].y - points[b].y) * (points[c].x - points[b].x) - (points[a].x - points[b].x) * (points[c].y - points[b].y))
}

let n = Int(readLine()!)!
var points = [Point]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let newPoint = Point(x: input[0], y: input[1])
    points.append(newPoint)
}

var ans = 0
for i in 0..<(n - 2) {
    for j in (i + 1)..<(n - 1) {
        for k in (j + 1)..<n {
            ans = max(ans, getArea(i, j, k, points))
        }
    }
}

print(String(format: "%.9f", Double(ans) / 2))