import Foundation

let NM = readLine()!.split{$0==" "}.map{ Int(String($0))! }
let N = NM[0]
let M = NM[1]
var chapterDays = [[Int]]()
var maxPages = 0
for _ in 0..<M {
    chapterDays.append(readLine()!.split{$0==" "}.map{ Int(String($0))! })
}

allCases(days: 0, pages: 0, depth: 0)

print(maxPages)

func allCases(days: Int, pages: Int, depth: Int) {
    if days <= N {
        maxPages = max(maxPages, pages)
    }
    
    if depth == M {
        return
    }
    
    allCases(days: days + chapterDays[depth][0], pages: pages + chapterDays[depth][1], depth: depth + 1)
    allCases(days: days, pages: pages, depth: depth + 1)
}