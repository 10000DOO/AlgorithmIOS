import Foundation

let target = readLine()!
let n = Int(readLine()!)!
var books: [(Int, String)] = []

for _ in 0..<n {
    let input = readLine()!.split(separator: " ")
    let cost = Int(input[0])!
    let title = String(input[1])
    books.append((cost, title))
}

func wordInBook(word: String, book: String, price: Int) -> Int {
    var cnt = 0
    var book = book
    for w in word {
        if let range = book.range(of: String(w)) {
            cnt += 1
            book.removeSubrange(range)
            if cnt == word.count {
                return price
            }
        }
    }
    return Int.max
}

var result = [Int]()

for i in 0..<(1<<n) {
    var searchStr = ""
    var sumPrice = 0
    for j in 0..<n {
        if (i & 1 << j) != 0 {
            searchStr += books[j].1
            sumPrice += books[j].0
        }
    }
    result.append(wordInBook(word: target, book: searchStr, price: sumPrice))
}

let minResult = result.min()!
print(minResult == Int.max ? -1 : minResult)
