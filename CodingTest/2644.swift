//
//  main.swift
//  CodingTest
//
//  Created by 이건준 on 10/27/23.
//

import Foundation

var people = Int(readLine()!)!
var result = 0
var isSuccess = false
var visitedQueue = [Bool](repeating: false, count: people + 1)
var needVisitStack: [Int] = []

let target = readLine()!.split(separator: " ").map{ Int(String($0))! }
var start = target[0]
var end = target[1]
var N = Int(readLine()!)!

var graph: [[Int]] = Array(repeating: [], count: people + 1)


for _ in 1...N {
    let relation = readLine()!.split(separator: " ").map{ Int(String($0))! }
    graph[relation[0]].append(relation[1])
    graph[relation[1]].append(relation[0])
}

dfs(start: start, count: 0)

if isSuccess {
    print(result)
} else {
    print(-1)
}

func dfs(start: Int, count: Int) {
    visitedQueue[start] = true
  if start == end {
    result = count
    isSuccess = true
    return
  }
  
  for i in graph[start] {
    if !visitedQueue[i] {
      dfs(start: i, count: count + 1)
    }
  }
}

