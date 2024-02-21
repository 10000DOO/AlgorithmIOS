import Foundation

let sound = Array(readLine()!).map{ String($0) }
var ducks = [[String]]()

for i in sound {
    var isOk = false
    if i == "q" {
        var needNew = true
        for j in 0..<ducks.count {
            if ducks[j].last! == "k" {
                ducks[j].append("q")
                isOk = true
                needNew = false
                break
            }
        }
        if needNew {
            ducks.append(["q"])
            isOk = true
        }
        needNew = true
    }
    if i == "u" {
        for j in 0..<ducks.count {
            if ducks[j].last! == "q" {
                ducks[j].append("u")
                isOk = true
                break
            }
        }
    }
    if i == "a" {
        for j in 0..<ducks.count {
            if ducks[j].last! == "u" {
                ducks[j].append("a")
                isOk = true
                break
            }
        }
    }
    if i == "c" {
        for j in 0..<ducks.count {
            if ducks[j].last! == "a" {
                ducks[j].append("c")
                isOk = true
                break
            }
        }
    }
    if i == "k" {
        for j in 0..<ducks.count {
            if ducks[j].last! == "c" {
                ducks[j].append("k")
                isOk = true
                break
            }
        }
    }
    
    if !isOk {
        print(-1)
        exit(0)
    }
    isOk = false
}

for i in ducks {
    if i.last! != "k" {
        print(-1)
        exit(0)
    }
}

print(ducks.count)