//
//  main.swift
//  cote
//
//  Created by najin on 2022/12/22.
//

import Foundation

// ------------------------------------------------------------------------------------------
// MARK: String

var str = "abcdefghijklmnopqrstuvwxyz"

//print(str.remove(at: str.startIndex))
//print(str.firstIndex(of: "e")!.utf16Offset(in: str))
//print(str[str.index(str.startIndex, offsetBy: 8)])
//let start = str.index(str.startIndex, offsetBy: 4)
//let end = str.index(str.startIndex, offsetBy: 8)
//print(str[start...end])
//print(str[str.startIndex])
//print(str[str.startIndex])
//print(str[str.index(after: str.startIndex)])
//print(str[str.index(str.startIndex, offsetBy: str.count - 1)])
//print(str[str.index(before: str.endIndex)])
//print(str.contains("efg"))
//let arr = str.map{String($0)}
//print(arr)
//print(arr.reduce("", +))
//print(arr.joined())
//print(str.prefix(3))
//print(str.suffix(1))
//var catStr = str
//let catIndex = catStr.index(catStr.startIndex, offsetBy: 2)
//catStr.insert(contentsOf: "cat", at: catIndex)
//print(catStr)
//var removeStr = str
//let removeRange = removeStr.index(removeStr.startIndex, offsetBy: 11)...removeStr.index(removeStr.startIndex, offsetBy: 13)
//removeStr.removeSubrange(removeRange)
//print(removeStr)
//print(str.replacingOccurrences(of:"q", with:"Q"))

//let stringbj = #"""
//         ,r'"7
//r`-_   ,'  ,/
// \. ". L_r'
//   `~\/
//      |
//      |
//"""#
//print(stringbj)

// ------------------------------------------------------------------------------------------
// MARK: Date

let formatter = DateFormatter()
formatter.locale = Locale(identifier: "ko")
formatter.dateFormat = "yyyy-MM-dd"
let now = formatter.string(from: Date())
//print(now)

// ------------------------------------------------------------------------------------------
// MARK: Int, Double, Float
let intValue: Int = 0
let doubleValue: Double = 0.0

let a = 1.1234567

//print(ceil(a))
//print(floor(a))
//print(trunc(a))
//print(round(a))

//print((1...3).reduce(1){$0 * $1})

let ten = 10
let ten2 = "1010"

//print(String(ten, radix: 2))
//print(Int(ten2, radix: 2))

// ------------------------------------------------------------------------------------------
// MARK: Range

let range = (1...2)

//print(range.map{Int($0)})

// ------------------------------------------------------------------------------------------
// MARK: Array

//var totalArray: [String]
let intArray = [1,2,3,4,5,6,7,8,9]
//var intArray1 = [3,7,2,9,4,7]
//var intArray2 = [[1], [3], [5], [7]]
//let strArray = ["a","b","c","d"]
//let strArray1 = ["a","b","c","d"]
//var strArray2 = [["a"], ["b"], ["c"], ["d"]]

//// 2개씩 묶는 경우의 수
//for (index, str) in strArray.enumerated() {
//    for i in (index+1 ..< strArray.count) {
//        print("a:\(str), b:\(strArray[i])")
//    }
//}
//
//// 3개씩 묶는 경우의 수
//for (index, str) in strArray.enumerated() {
//    for i in (index+1 ..< strArray.count) {
//        for j in (i+1 ..< strArray.count) {
//            print("a:\(str), b:\(strArray[i]), c:\(strArray[j])")
//        }
//    }
//}

//totalArray = strArray1 + strArray
//print(totalArray)
//
//print(intArray1.sorted())
//print(intArray1.sorted(by: <))
//print(intArray1.sorted(by: >))

//print(Array(strArray2.joined(separator: [""])))

// ------------------------------------------------------------------------------------------
// MARK: - 고급 함수

// ------------------------------------------------------------------------------------------
// MARK: 최대공약수

func GCD(_ a: Int, _ b: Int) -> Int {
    let mod: Int = a % b
    return 0 == mod ? min(a, b) : GCD(b, mod)
}

// ------------------------------------------------------------------------------------------
// MARK: 최소공배수

func LCM(_ a: Int, _ b: Int) -> Int {
    return a * b / GCD(a, b)
}

// ------------------------------------------------------------------------------------------
// MARK: Dictionary

var dic = ["height" : 65, "age" : 50]
var dic2: [String: Int] = [:]
var intDic = [1:1, 5:1, 3:1]
var sortDict = ["aaa" : 65, "bbb" : 50, "ccc" : 40, "ddd" : 50, "aa" : 50, "cc" : 50]

//print(type(of: sortDict))
//print(type(of: sortDict.sorted {($0.1, $0.0) < ($1.1, $1.0)}))

//print(intDic)

// ------------------------------------------------------------------------------------------
// MARK: 소수판별

// 제곱근 이용하는 방식
func isPrime(_ num: Int) -> Bool {
    if(num<4) {
        return num == 1 || num == 0 ? false : true
    }
    for i in 2...Int(sqrt(Double(num))) {
        if (num % i == 0) { return false }
    }
    return true
}

// ------------------------------------------------------------------------------------------
// MARK: 팩토리얼

func fac(_ n: Int) -> Double {
    return Double((1...n).reduce(1.0){ Double($0) * Double($1) })
}

func factorial(_ num: Int) -> Int {
    if num <= 1 { return 1 } //재귀탈출점
    
    return (num * factorial(num - 1))
}

func factorial(_ num1: Int, _ num2: Int) -> Int {
    if num1 == num2 { return num1 } //재귀탈출점
    
    return (num1 * factorial(num1 - 1, num2))
}

// ------------------------------------------------------------------------------------------
// MARK: 크루스칼 알고리즘 (부모찾기)

func kruskal(_ n:Int, _ costs:[[Int]]) -> Int {
    var parent = Array(0..<n)
    var cost = 0
    
    func findParent(_ child: Int) -> Int {
        if parent[child] != child {
            parent[child] = findParent(parent[child])
        }
        return parent[child]
    }

    costs.sorted { $0[2] < $1[2] }.forEach { connection in
        let root1 = findParent(connection[0])
        let root2 = findParent(connection[1])
        
        if root1 != root2 {
            parent[root1] = root2
            cost += connection[2]
        }
    }
    
    return cost
}

func solution(_ n:Int, _ costs:[[Int]]) -> Int {
    var parent = Array(0..<n)
    var cost = 0
    
    // 최상위 부모 찾기
    func findParent(_ node: Int) -> Int {
        if parent[node] != node {
            return findParent(parent[node])
        } else {
            return node
        }
    }
    
    // 같은 부모로 엮기
    func union(_ a: Int, _ b: Int) {
        let a = findParent(a)
        let b = findParent(b)
        
        if a < b {
            parent[b] = a
        } else {
            parent[a] = b
        }
    }
    
    costs.sorted{$0[2] < $1[2]}.forEach {
        let (a, b, dist) = ($0[0], $0[1], $0[2])
        
        if findParent(a) != findParent(b) {
            cost += dist
            
            union(a, b)
        }
    }
    
    return cost
}

// [[1, 7, 12], [4, 7, 13], [1, 5, 17], [3, 5, 20], [2, 4, 24], [1, 4, 28], [3, 6, 37], [5, 6, 45], [2, 5, 62], [1, 2, 67], [5, 7, 73]]
//print(kruskal(7, [[1,7,12],[1,4,28],[1,2,67],[1,5,17],[2,4,24],[2,5,62],[3,5,20],[3,6,37],[4,7,13],[5,6,45],[5,7,73]]))
print(kruskal(4,[[0, 1, 1], [0, 2, 3], [2, 3, 1], [0, 3, 4]]))

// ------------------------------------------------------------------------------------------
// MARK: 순열

// m개의 공을 원하는 만큼 뽑아서 나열할 수 있는 모든 경우
func permutation(_ array: [String]) -> Set<String> {
    if array.count == 0 { return [] } //재귀탈출점

    let answerArray = (0..<array.count).flatMap { i -> [String] in
        var removedArray = array
        let elem = removedArray.remove(at: i)
        return [elem] + permutation(removedArray).map { elem + $0 }
    }
    return Set(answerArray)
}

//print(permutation(["a","b","c"]))

// m개의 공 중 n개를 뽑아서 나열할 수 있는 모든 경우
func permutaion(_ nums: [Int], _ targetNum: Int) -> [[Int]] {
    var result = [[Int]]()
    var visited = [Bool](repeating: false, count: nums.count)
    
    func permute(_ nowPermute: [Int]) {
        if nowPermute.count == targetNum {
            result.append(nowPermute)
            return
        }
        for i in 0..<nums.count {
            if visited[i] == true {
                continue
            }
            else {
                visited[i] = true
                permute(nowPermute + [nums[i]])
                visited[i] = false
            }
        }
    }
    permute([])
    
    return result
}

//print(permutaion([1,2,3], 3))

// ------------------------------------------------------------------------------------------
// MARK: 조합

// m개의 공 중 n개를 뽑아서 나열할 수 있는 모든 경우
func combination(_ nums: [Int], _ targetNum: Int) -> [[Int]] {
    var result = [[Int]]()
    
    func combi(_ index: Int, _ nowCombi: [Int]) {
        if nowCombi.count == targetNum {
            result.append(nowCombi)
            return
        }
        for i in index..<nums.count {
            combi(i + 1, nowCombi + [nums[i]])
        }
    }
    
    combi(0, [])
    
    return result
}

//print(combination([1,2,3,4,5], 3))
