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

// ------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------
// MARK: - 2023 신입 공채 (6문제)
// https://tech.kakao.com/2022/01/14/2022-kakao-recruitment-round-1/
// ------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------

// MARK: 1. 신고 결과 받기

//// 첫번째 풀이 : 실행은 되는데 시간초과 뜸
//func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
//    var reportList = [[String]]()
//    var reportedMemberCnt = [String: Int]()
//
//    // 신고당한 회원
//    Set(report).forEach {
//        let reported = $0.components(separatedBy: " ")
//        reportedMemberCnt[reported[1], default: 0] += 1
//        reportList.append(reported)
//    }
//
//    // 신고된 회원 중 특정 수 이상 신고된 회원
//    let reportedMember = reportedMemberCnt.filter {$0.1 >= k}.map {$0.0}
//
//    // 정지당한 회원을 신고한 회원
//    let mailedMember = reportList.filter {
//        reportedMember.contains(String($0[1]))
//    }
//
//    return id_list.map { id in
//        return mailedMember.filter { id == $0[0] }.count
//    }
//}

//// 두번째 풀이 : 코드 많이 단축 -> 18번에서 계속 런타임에러 뜨는데 이유 모르겠음
//func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
//
//    var reportDic = [String: [String]]()
//    var reportedMemberDic = [String: Int]()
//
//    // 신고당한 회원
//    Set(report).forEach {
//        let reported = $0.components(separatedBy: " ")
//        reportDic[reported[0], default: []].append(reported[1])
//        reportedMemberDic[reported[1], default: 0] += 1
//    }
//
//    let reportedMember = reportedMemberDic.filter { $0.1 >= k }.keys
//
//    return id_list.map { id in
//        reportDic[id, default: []].filter { reportedMember.contains($0) }.count
//    }
//}

////다른 풀이 참고한 마지막 코드
//func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
//
//    var reportDic = [String: [String]]()
//    var reportedMemberDic = [String: Int]()
//
//    // 신고당한 회원
//    Set(report).forEach {
//        let reported = $0.components(separatedBy: " ")
//        reportDic[reported[0], default: []].append(reported[1])
//        reportedMemberDic[reported[1], default: 0] += 1
//    }
//
//    return id_list.map { id in
//        return reportDic[id, default: []].reduce(0) {
//            $0 + (reported[$1, default: 0] >= k ? 1 : 0)
//        }
//    }
//}
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
