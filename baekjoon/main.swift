//
//  main.swift
//  baekjoon
//
//  Created by najin on 2023/01/20.
//

import Foundation

solution()

// ------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------
// MARK: - 클래스 1
// ------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------

// MARK: 단어공부

//func solution(){
//    let input = readLine()!
//
//    var dic = [String: Int]()
//    input.forEach {
//        dic[String($0).uppercased(), default: 0] += 1
//    }
//
//    let sortedDic = dic.sorted{$0.1 > $1.1}
//    print(sortedDic.count > 1 && sortedDic[0].1 == sortedDic[1].1 ? "?" : sortedDic[0].0)
//}

// MARK: 아스키코드

//func solution() {
//    let input = readLine()!
//    print(Character(input).asciiValue!)
//}

// MARK: 음계

func solution() {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    input.enumerated().forEach { (i, num) in
        
    }
}
