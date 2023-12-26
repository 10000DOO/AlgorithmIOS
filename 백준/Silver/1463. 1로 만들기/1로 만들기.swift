import Foundation

var N = Int(readLine()!)!

var arr = Array(repeating: 0, count: N + 1)

if N >= 2 {
    arr[2] = 1
}
if N >= 3 {
    arr[3] = 1
}
if N >= 4 {
    arr[4] = 2
}

if N > 4 {
    for i in 5...N {
        arr[i] = arr[i - 1] + 1
        
        if i % 3 == 0 {
            arr[i] = min(arr[i], arr[i/3] + 1)
        }
        
        if i % 2 == 0 {
            arr[i] = min(arr[i], arr[i/2] + 1)
        }
    }
}

print(arr[N])