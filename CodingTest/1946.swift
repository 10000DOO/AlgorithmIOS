//
//  main.swift
//  CodingTest
//
//  Created by 10000DOO on 2023/09/12.
//

import Foundation

final class FileIO {
    private var buffer:[UInt8]
    private var index: Int
    
    init(fileHandle: FileHandle = FileHandle.standardInput) {
        buffer = Array(fileHandle.readDataToEndOfFile())+[UInt8(0)] // 인덱스 범위 넘어가는 것 방지
        index = 0
    }
    
    @inline(__always) private func read() -> UInt8 {
        defer { index += 1 }
        
        return buffer.withUnsafeBufferPointer { $0[index] }
    }
    
    @inline(__always) func readInt() -> Int {
        var sum = 0
        var now = read()
        var isPositive = true
        
        while now == 10
                || now == 32 { now = read() } // 공백과 줄바꿈 무시
        if now == 45{ isPositive.toggle(); now = read() } // 음수 처리
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now-48)
            now = read()
        }
        
        return sum * (isPositive ? 1:-1)
    }
    
    @inline(__always) func readString() -> String {
        var str = ""
        var now = read()
        
        while now == 10
                || now == 32 { now = read() } // 공백과 줄바꿈 무시
        
        while now != 10
                && now != 32 && now != 0 {
            str += String(bytes: [now], encoding: .ascii)!
            now = read()
        }
        
        return str
    }
}

let file = FileIO()

let T = file.readInt()

for _ in 0..<T {
    let N = file.readInt()
    
    var input = [[Int]](repeating: [Int](repeating: 0, count: 2), count: N)
    
    for i in 0..<input.count {
        input[i] = [file.readInt(), file.readInt()]
    }
    
    input.sort{ $0[0] < $1[0] }
    var result = 1;
    var min = input[0][1]
    
    for i in 1..<input.count {
        if min > input[i][1] {
            min = input[i][1]
            result += 1
            
            if min == 1 {
                break
            }
        }
    }
    print(result)
}
