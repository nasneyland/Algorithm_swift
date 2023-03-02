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

// MARK: - DFS/BFS

// MARK: 연결 요소의 개수

//let input = readLine()!.split(separator: " ").map{Int($0)!}
//
//var visited = Array(repeating: false, count: input[0])
//var networks = [[Int]](repeating: [], count: input[0])
//var cnt = 0
//
//for _ in 0..<input[1] {
//    let inputNetworks = readLine()!.split(separator: " ").map{Int($0)!}
//    networks[inputNetworks[0] - 1].append(inputNetworks[1] - 1)
//    networks[inputNetworks[1] - 1].append(inputNetworks[0] - 1)
//}
//
//func bfs(_ index: Int) {
//    visited[index] = true
//
//    for i in networks[index] {
//        if !visited[i] {
//            bfs(i)
//        }
//    }
//}
//
//for d in 0..<input[0] {
//    if !visited[d] {
//        bfs(d)
//        cnt += 1
//    }
//}
//print(cnt)

// MARK: 미로탐색

// 첫번재풀이 (시간초과)
//let goal = readLine()!.split(separator: " ").map{Int($0)!}
//var miro = [[Int]]()
//var result = [Int]()
//
//for _ in (1...goal[0]) {
//    miro.append(String(readLine()!).map{Int(String($0))!})
//}
//
//func dfs(_ x: Int, _ y: Int, _ depth: Int, _ visited: [[Int]]) {
//    var visitedList: [[Int]] = visited
//    visitedList.append([x,y])
//
//    // 갈 수 없는 길인 경우
//    if miro[x][y] == 0 || visited.contains([x,y]) {
//        return
//    } else {
//        visitedList.append([x,y])
//    }
//
//    // 조건에 맞는 경우
//    if x == goal[0] - 1 && y == goal[1] - 1 {
//        result.append(depth)
//        return
//    }
//
//    //위로 이동하는 경우
//    if x > 0 {
//        dfs(x-1, y, depth+1, visitedList)
//    }
//    // 아래로 이동하는 경우
//    if x < goal[0] - 1 {
//        dfs(x+1, y, depth+1, visitedList)
//    }
//    // 왼쪽으로 이동하는 경우
//    if y > 0 {
//        dfs(x, y-1, depth+1, visitedList)
//    }
//    // 오른쪽으로 이동하는 경우
//    if y < goal[1] - 1 {
//        dfs(x, y+1, depth+1, visitedList)
//    }
//}
//
//dfs(0,0,0,[[]])
//print(result.min()! + 1)

// 두번째 풀이 (시간초과)
//let goal = readLine()!.split(separator: " ").map{Int($0)!}
//var miro = [[Int]]()
//
//for _ in (1...goal[0]) {
//    miro.append(String(readLine()!).map{Int(String($0))!})
//}
//
//func dfs(_ x: Int, _ y: Int, _ depth: Int) {
//    // 갈 수 없는 길인 경우
//    if miro[x][y] == 0 || (miro[x][y] != 1 && miro[x][y] < depth) {
//        return
//    } else {
//        miro[x][y] = depth + 1
//    }
//
//    // 조건에 맞는 경우
//    if x == goal[0] - 1 && y == goal[1] - 1 {
//        return
//    }
//
//    //위로 이동하는 경우
//    if x > 0 {
//        dfs(x-1, y, depth+1)
//    }
//    // 아래로 이동하는 경우
//    if x < goal[0] - 1 {
//        dfs(x+1, y, depth+1)
//    }
//    // 왼쪽으로 이동하는 경우
//    if y > 0 {
//        dfs(x, y-1, depth+1)
//    }
//    // 오른쪽으로 이동하는 경우
//    if y < goal[1] - 1 {
//        dfs(x, y+1, depth+1)
//    }
//}
//
//dfs(0,0,1)
//print(miro[goal[0]-1][goal[1]-1] - 1)

// 세번째 풀이
let goal = readLine()!.split(separator: " ").map{Int($0)!}
var miro = [[Int]]()

for _ in (1...goal[0]) {
    miro.append(String(readLine()!).map{Int(String($0))!})
}

func dfs(_ x: Int, _ y: Int, _ depth: Int) {
    
    let point = miro[x][y]
    // 갈 수 없는 길인 경우
    if point == 0 || (point != 1 && point < depth) {
        return
    } else {
        miro[x][y] = depth + 1
    }

    // 조건에 맞는 경우
    if x == goal[0] - 1 && y == goal[1] - 1 {
        return
    }

    //위로 이동하는 경우
    
    if x > 0 {
        dfs(x-1, y, depth+1)
    }
    // 아래로 이동하는 경우
    if x < goal[0] - 1 {
        dfs(x+1, y, depth+1)
    }
    // 왼쪽으로 이동하는 경우
    if y > 0 {
        dfs(x, y-1, depth+1)
    }
    // 오른쪽으로 이동하는 경우
    if y < goal[1] - 1 {
        dfs(x, y+1, depth+1)
    }
}

dfs(0,0,1)
print(miro[goal[0]-1][goal[1]-1] - 1)
