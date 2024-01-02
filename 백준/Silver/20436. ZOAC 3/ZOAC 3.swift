let inputLine = readLine()!.split(separator: " ")
let left = Character(String(inputLine[0]))
let right = Character(String(inputLine[1]))

let strings = Array(readLine()!)

let keyboard = ["qwertyuiop", "asdfghjkl", "zxcvbnm"]
let mo = "yuiophjklbnm"

var xl: Int?, yl: Int?, xr: Int?, yr: Int?

for i in 0..<keyboard.count {
    if let index = keyboard[i].firstIndex(of: left) {
        xl = i
        yl = keyboard[i].distance(from: keyboard[i].startIndex, to: index)
    }

    if let index = keyboard[i].firstIndex(of: right) {
        xr = i
        yr = keyboard[i].distance(from: keyboard[i].startIndex, to: index)
    }
}

var time = 0

for string in strings {
    time += 1
    if mo.contains(string) {
        for i in 0..<keyboard.count {
            if let index = keyboard[i].firstIndex(of: string) {
                let nx = i
                let ny = keyboard[i].distance(from: keyboard[i].startIndex, to: index)

                time += abs(nx - xr!) + abs(ny - yr!)
                xr = nx
                yr = ny
                break
            }
        }
    } else {
        for i in 0..<keyboard.count {
            if let index = keyboard[i].firstIndex(of: string) {
                let nx = i
                let ny = keyboard[i].distance(from: keyboard[i].startIndex, to: index)

                time += abs(nx - xl!) + abs(ny - yl!)
                xl = nx
                yl = ny
                break
            }
        }
    }
}

print(time)