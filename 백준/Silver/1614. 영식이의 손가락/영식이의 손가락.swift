import Foundation

if let N = UInt64(readLine() ?? "0"),
    let leftUsage = UInt64(readLine() ?? "0") {

    var maxNum: UInt64 = 0

    if leftUsage == 0 {
        maxNum += N - 1
        print(maxNum)
    } else if N == 5 {
        maxNum += 4 + leftUsage * 8
        print(maxNum)
    } else if N == 1 {
        maxNum += leftUsage * 8
        print(maxNum)
    } else {
        maxNum += 5 + (leftUsage - 1) * 4

        if leftUsage % 2 == 0 {
            maxNum += N - 2
        } else {
            maxNum += 4 - N
        }

        print(maxNum)
    }
}