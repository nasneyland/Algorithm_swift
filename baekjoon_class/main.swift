//
//  main.swift
//  baekjoon
//
//  Created by najin on 2023/01/20.
//

// ------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------
// MARK: - 클래스 1
// ------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------

// MARK: 단어공부

//let input = readLine()!
//
//var dic = [String: Int]()
//input.forEach {
//    dic[String($0).uppercased(), default: 0] += 1
//}
//
//let sortedDic = dic.sorted{$0.1 > $1.1}
//print(sortedDic.count > 1 && sortedDic[0].1 == sortedDic[1].1 ? "?" : sortedDic[0].0)

// MARK: 아스키코드

//let input = readLine()!
//print(Character(input).asciiValue!)

// ------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------
// MARK: - 클래스 2
// ------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------

// MARK: 직각삼각형

//var inputList = [[Double]]()
//while true {
//    let input = readLine()!.split(separator: " ").map{Double($0)!}.sorted(by: >)
//    if input == [0,0,0] {
//        break
//    } else {
//        inputList.append(input)
//    }
//}
//inputList.forEach { input in
//    print(pow(input[0],2) == pow(input[1],2)+pow(input[2],2) ? "right" : "wrong")
//}

// MARK: ACM 호텔

//let inputCnt = Int(readLine()!)!
//var inputList = [[Int]]()
//
//for _ in (0..<inputCnt) {
//    inputList.append(readLine()!.split(separator: " ").map{Int($0)!})
//}
//
//inputList.forEach { input in
//    print(String(((input[2] - 1) % input[0]) + 1) + String(format: "%02d", ((input[2] - 1) / input[0]) + 1))
//}

// MARK: 벌집

//let input = Int(readLine()!)!
//var num = 1
//var index = 0
//
//while true {
//    num += (index * 6)
//    print(num)
//    if input <= num {
//        print(index + 1)
//        break
//    }
//    
//    index += 1
//}

