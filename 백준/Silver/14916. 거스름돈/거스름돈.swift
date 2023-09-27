import Foundation

var change = Int(readLine()!)!
var result = 0

if change / 5 > 0 {
    result = change / 5
    var remain = change % 5
    if remain % 2 == 0 {
        result += (remain / 2)
        print(result)
    } else {
        result += (remain + 5) / 2
        print(result - 1)
    }
} else {
    if change % 2 == 0 {
        print(change / 2)
    } else {
        print("-1")
    }
}