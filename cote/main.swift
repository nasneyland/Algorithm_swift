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


// ------------------------------------------------------------------------------------------
// MARK: 순열

// m개의 공을 원하는 만큼 뽑아서 나열할 수 있는 모든 경우
func permutation(_ array: [String]) -> Set<String> {
    if array.count == 0 { return [] }

    let answerArray = (0..<array.count).flatMap { i -> [String] in
        var removedArray = array
        let elem = removedArray.remove(at: i)
        return [elem] + permutation(removedArray).map { elem + $0 }
    }

    return Set(answerArray)
}

print(permutation(["a","b","c"]))

