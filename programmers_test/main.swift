//
//  main.swift
//  programmers_test
//
//  Created by najin on 2023/02/15.
//

import Foundation

print(solution([-3, -2, -1, 0, 1, 2, 3]))
// ------------------------------------------------------------------------------------------
// MARK: - Summer/Winter Coding(~2018)

// MARK: 소수 만들기 (조합 + 소수판별)

// 무작위 배열에서 3개 뽑는 조합 (3중 for문) + 소수판별
//func solution(_ nums:[Int]) -> Int {
//    var cnt = 0
//
//    //소수판별함수
//    func isPrime(_ num: Int) -> Bool {
//        if num < 4 { return num == 2 || num == 3 ? true : false }
//
//        for n in (2...Int(sqrt(Double(num)))) {
//            if num % n == 0 { return false }
//        }
//        return true
//    }
//
//    // 3가지 조합
//    for i in 0 ..< nums.count - 2 {
//        for j in i + 1 ..< nums.count - 1 {
//            for k in j + 1 ..< nums.count {
//                if isPrime(nums[i] + nums[j] + nums[k]) { answer += 1 }
//            }
//        }
//    }
//
//    return cnt
//}

// 무작위 배열에서 3개 뽑는 조합 (combination) + 소수판별
//func solution(_ nums:[Int]) -> Int {
//    var cnt = 0
//
//    //소수판별함수
//    func isPrime(_ num: Int) -> Bool {
//        if num < 4 { return num == 2 || num == 3 ? true : false }
//
//        for n in (2...Int(sqrt(Double(num)))) {
//            if num % n == 0 { return false }
//        }
//        return true
//    }
//
//    //조합함수
//    func combi(_ index: Int, _ nowCombi: [Int]) {
//        if nowCombi.count == 3 {
//            if isPrime(nowCombi.reduce(0, +)) { cnt += 1 }
//            return
//        }
//        for i in index..<nums.count {
//            combi(i + 1, nowCombi + [nums[i]])
//        }
//    }
//
//    combi(0, [])
//
//    return cnt
//}

func solution(_ number:[Int]) -> Int {
    var cnt = 0
    
    //조합함수
    func combi(_ index: Int, _ nowCombi: [Int]) {
        if nowCombi.count == 3 {
            if (nowCombi.reduce(0, +) == 0) { cnt += 1 }
            return
        }
        for i in index..<number.count {
            combi(i + 1, nowCombi + [number[i]])
        }
    }
    
    combi(0, [])
    
    return cnt
}
