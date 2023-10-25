//
//  main.swift
//  CodingTest
//
//  Created by 이건준 on 10/25/23.
//

import Foundation

var visitedQueue: [Int] = []
var needVisitQueue = [Int]()
func main() {
    let N = Int(readLine()!)!
    for _ in 0..<N {
        var count = 0
        var num = Int(readLine()!)!
        let arr = readLine()!.split(separator: " ").map{ Int(String($0))! }
        
        
        var graph = [Int: [Int]]()
        graph.updateValue([], forKey: 0)
        for (index, i) in arr.enumerated() {
            graph.updateValue([i], forKey: index + 1)
        }
        
        for i in 1..<graph.count {
            if visitedQueue.contains(i){
                continue
            } else {
                count += 1
                BFS(graph: graph, start: i)
            }
        }
        print(count)
        visitedQueue = []
        needVisitQueue = []
    }
}

func BFS(graph: [Int: [Int]], start: Int) {
    needVisitQueue.append(start)
    while !needVisitQueue.isEmpty {
        let node: Int = needVisitQueue.removeFirst()
        if visitedQueue.contains(node) { continue }
        
        visitedQueue.append(node)
        needVisitQueue += graph[node] ?? []
    }
}

main()
