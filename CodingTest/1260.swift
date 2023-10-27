//
//  main.swift
//  CodingTest
//
//  Created by 이건준 on 10/27/23.
//

import Foundation

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }

let nums = input[0]
let times = input[1]
let start = input [2]

var graph = Array(repeating: [Int](), count: nums + 1)
var visitedQueue = Array(repeating: false, count: nums + 1)

for _ in 0..<times {
    let lines = readLine()!.split(separator: " ").map{ Int(String($0))! }
    graph[lines[0]].append(lines[1])
    graph[lines[1]].append(lines[0])
}

for i in 1...nums {
    graph[i].sort()
}

DFS(start: start)
print()
BFS(start: start)

func DFS(start: Int) {
    print(start, terminator: " ")
    visitedQueue[start] = true
    
    for i in graph[start] {
        if !visitedQueue[i] {
            DFS(start: i)
        }
    }
}

func BFS(start: Int) {
    var queue = [Int]()
    queue.append(start)
    visitedQueue[start] = false
    
    while !queue.isEmpty {
        var node = queue.removeFirst()
        print(node, terminator: " ")
        
        for i in graph[node] {
            if visitedQueue[i] {
                queue.append(i)
                visitedQueue[i] = false
            }
        }
    }
}
