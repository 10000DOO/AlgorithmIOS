import Foundation

let N = Int(readLine()!)!
var aMinute = 0
var bMinute = 0
var aSecond = 0
var bSecond = 0
var aScore = 0
var bScore = 0
var pastSecond = 0
var pastMinute = 0

for i in 0..<N {
    let input = readLine()!.split(separator: " ").map { String($0) }
    let time = input[1].split(separator: ":").map { Int($0)! }
    let minute = time[0]
    let second = time[1]

    if i != 0 {
        if aScore > bScore {
            if second >= pastSecond {
                aSecond += (second - pastSecond)
                aMinute += (minute - pastMinute)
            } else {
                aSecond += (60 + second - pastSecond)
                aMinute += (minute - 1 - pastMinute)
            }
        } else if bScore > aScore {
            if second >= pastSecond {
                bSecond += (second - pastSecond)
                bMinute += (minute - pastMinute)
            } else {
                bSecond += (60 + second - pastSecond)
                bMinute += (minute - 1 - pastMinute)
            }
        }
    }
    if aSecond >= 60 {
        aSecond -= 60
        aMinute += 1
    }
    if bSecond >= 60 {
        bSecond -= 60
        bMinute += 1
    }
    if input[0] == "1" {
        aScore += 1
    } else {
        bScore += 1
    }
    pastMinute = minute
    pastSecond = second
}

if aScore > bScore {
    if pastSecond >= 0 {
        aSecond += (60 - pastSecond)
        aMinute += (47 - pastMinute)
    } else {
        aSecond += (-pastSecond)
        aMinute += (48 - pastMinute)
    }
} else if bScore > aScore {
    if pastSecond >= 0 {
        bSecond += (60 - pastSecond)
        bMinute += (47 - pastMinute)
    } else {
        bSecond += (-pastSecond)
        bMinute += (48 - pastMinute)
    }
}

if aSecond >= 60 {
    aSecond -= 60
    aMinute += 1
}
if bSecond >= 60 {
    bSecond -= 60
    bMinute += 1
}

print(String(format: "%02d:%02d", aMinute, aSecond))
print(String(format: "%02d:%02d", bMinute, bSecond))