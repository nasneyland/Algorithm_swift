//
//  main.swift
//  kakao
//
//  Created by najin on 2023/01/04.
//

// 카카오 기출
// https://school.programmers.co.kr/learn/challenges?tab=algorithm_practice_kit

import Foundation

print(solution(["AN", "CF", "MJ", "RT", "NA"], [5, 3, 2, 7, 5]))

// MARK: - 2022 카카오 테크 인턴십

// ------------------------------------------------------------------------------------------
// MARK: !!! 성격 유형 검사하기 (LV.1) (딕셔너리) !!!

//// 1회차 시도
//func solution(_ survey:[String], _ choices:[Int]) -> String {
//
//    var answer: [Character: Int] = ["R":0,"T":0,"C":0,"F":0,"J":0,"M":0,"A":0,"N":0]
//
//    (0..<survey.count).forEach {
//        let type: [Character] = Array(survey[$0])
//
//        if choices[$0] > 4 {
//            answer[type[1]]! += abs(choices[$0] - 4)
//        } else if choices[$0] < 4 {
//            answer[type[0]]! += abs(choices[$0] - 4)
//        }
//    }
//
//    let RT = answer["R"]! >= answer["T"]! ? "R" : "T"
//    let CF = answer["C"]! >= answer["F"]! ? "C" : "F"
//    let JM = answer["J"]! >= answer["M"]! ? "J" : "M"
//    let AN = answer["A"]! >= answer["N"]! ? "A" : "N"
//
//    return RT + CF + JM + AN
//}

////// 2회차 시도
//func solution(_ survey:[String], _ choices:[Int]) -> String {
//    var types: [String: Int] = [:]
//
//    for (index,choice) in choices.enumerated() {
//        let key = String(survey[index].prefix(1))
//        types[key] = types[key, default: 0] + (4 - choice)
//    }
//
//    let RT = types["R", default: 0] >= types["T", default: 0] ? "R" : "T"
//    let CF = types["C", default: 0] >= types["F", default: 0] ? "C" : "F"
//    let JM = types["J", default: 0] >= types["M", default: 0] ? "J" : "M"
//    let AN = types["A", default: 0] >= types["N", default: 0] ? "A" : "N"
//
//    return RT+CF+JM+AN
//}
