import Foundation

let pm = readLine()!.split(separator: " ").map { Int($0)! }
let p = pm[0]
let m = pm[1]
var room = [[(Int, String)]]()
var result = ""

for _ in 0..<p {
    let player = readLine()!.split(separator: " ").map { String($0) }
    let playerLevel = Int(player[0])!
    let playerName = player[1]
    var newRoom = true
    
    for j in room.indices {
        if room[j].count < m {
            if playerLevel - room[j][0].0 >= -10 && playerLevel - room[j][0].0 <= 10 {
                room[j].append((playerLevel, playerName))
                newRoom = false
                break
            }
        }
    }
    
    if newRoom {
        room.append([(playerLevel, playerName)])
    }
}

for i in room {
    var temp = i
    temp.sort{ $0.1 < $1.1 }
    if temp.count == m {
        result += "Started!\n"
        for j in temp {
            result += "\(j.0) \(j.1)\n"
        }
    } else {
        result += "Waiting!\n"
        for j in temp {
            result += "\(j.0) \(j.1)\n"
        }
    }
}

print(result)