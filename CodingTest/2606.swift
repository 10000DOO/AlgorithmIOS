//
//  main.swift
//  CodingTest
//
//  Created by 이건준 on 10/18/23.
//

import Foundation

func main() {
    let N = Int(readLine()!)!
    var graph = [Int: [Int]]()

    for i in 1...N {
        graph.updateValue([Int](), forKey: i)
    }

    let lineNum = Int(readLine()!)!

    for _ in 0..<lineNum {
        let line = readLine()!.split(separator: " ").map{ Int(String($0))! }
        graph[line[0]]?.append(line[1])
        graph[line[1]]?.append(line[0])
    }
    print(DFS(graph: graph, start: 1).count - 1)
}

func DFS(graph: [Int: [Int]], start: Int) -> [Int] {
    var visitedQueue: [Int] = []
    var needVisitStack: [Int] = [start]
    
    while !needVisitStack.isEmpty {
        let node: Int = needVisitStack.removeLast()
        if visitedQueue.contains(node) { continue }
        
        visitedQueue.append(node)
        needVisitStack += graph[node] ?? []
    }
    
    return visitedQueue
}

main()
