//
//  main.swift
//  baekjoon_test
//
//  Created by najin on 2023/02/16.
//

import Foundation

// MARK: - 크루스칼 알고리즘

// MARK: 네트워크 연결

//let nodeCnt = Int(readLine()!)!
//let edgeCnt = Int(readLine()!)!
//
//var parents = Array(0...nodeCnt)
//var edgeList = [[Int]]()
//var cost = 0
//
//// 간선들 입력받기
//for _ in (0..<edgeCnt) {
//    edgeList.append(readLine()!.split(separator: " ").map{Int($0)!})
//}
//
//// 최상위 부모 찾기
//func findParent(_ node: Int) -> Int {
//    if parents[node] != node {
//        parents[node] = findParent(parents[node])
//    }
//    return parents[node]
//}
//
//edgeList.sorted{$0[2] < $1[2]}.forEach {
//    let (a,b,dist) = (findParent($0[0]),findParent($0[1]),$0[2])
//
//    if a != b {
//        parents[a] = b
//        cost += dist
//    }
//}
//
//print(cost)

// MARK: 상근이의 여행

//let testCase = Int(readLine()!)!
//var parents = [Int]()
//
//func findParent(_ node: Int) -> Int {
//    if parents[node] == node {
//        return node
//    } else {
//        parents[node] = findParent(parents[node])
//    }
//    return parents[node]
//}
//
//for _ in (0..<testCase) {
//    let input = readLine()!.split(separator: " ").map{Int($0)!}
//    var cnt = 0
//    
//    parents = Array(0...input[0])
//    
//    for _ in (0..<input[1]) {
//        let edges = readLine()!.split(separator: " ").map{Int($0)!}
//        let a = findParent(edges[0])
//        let b = findParent(edges[1])
//        
//        if a != b {
//            parents[a] = b
//            cnt += 1
//        }
//    }
//    print(cnt)
//}

