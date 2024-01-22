import Foundation

let N = Int(readLine()!)!
var longMonth = [1, 3, 5, 7, 8, 10, 12]
var shortMonth = [4, 6, 9, 11]
var month = 1
var date = 4
var year = 2019
var result = 0

func isSpecialYear(year: Int) -> Bool {
    if (year % 4 == 0 && year % 100 != 0) || year % 400 == 0 {
        return true
    } else {
        return false
    }
}

while year <= N {
    let newDate = date + 7
    if newDate > 31 && longMonth.contains(month) {
        month += 1
        if month > 12 {
            month = 1
            year += 1
        }
        date = newDate - 31
        continue
    }
    if newDate > 30 && shortMonth.contains(month) {
        month += 1
        date = newDate - 30
        continue
    }
    if newDate > 28 && month == 2 {
        month += 1
        if isSpecialYear(year: year) {
            date = newDate - 29
        } else {
            date = newDate - 28
        }
        continue
    }
    date = newDate
    
    if date == 13 {
        result += 1
    }
}

print(result)