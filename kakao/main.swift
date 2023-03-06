//
//  main.swift
//  kakao
//
//  Created by najin on 2023/01/04.
//

// 카카오 기출
// https://school.programmers.co.kr/learn/challenges?tab=algorithm_practice_kit

import Foundation

print(solution([180, 5000, 10, 600], ["05:34 5961 IN", "06:00 0000 IN", "06:34 0000 OUT", "07:59 5961 OUT", "07:59 0148 IN", "18:59 0000 IN", "19:09 0148 OUT", "22:59 5961 IN", "23:00 5961 OUT"]))

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
//            $0 + (reportedMemberDic[$1, default: 0] >= k ? 1 : 0)
//        }
//    }
//}

// MARK: 2. k진수에서 소수 개수 구하기

//// 첫번째 풀이 : 실행은 되는데 2개에서 시간초과 뜸 (모든 수를 순회하는 것은 너무 비효율적 -> 소수 구하는 로직을 새로 생각해보자)
//func solution(_ n:Int, _ k:Int) -> Int {
//    return String(n, radix: k).split(separator: "0").filter { number in
//        return (2...Int(number)!).filter { Int(number)! % $0 == 0 }.count == 2 ? true : false
//    }.count
//}

////두번째 풀이 : 소수를 구할 때 전체를 순회하지 않고 루트값까지만 순회해서 단계를 줄여준다!
//func solution(_ n:Int, _ k:Int) -> Int {
//
//    func isPrime(_ num: Int) -> Bool {
//        if(num<4) {
//            return num == 1 || num == 0 ? false : true
//        }
//        for i in 2...Int(sqrt(Double(num))) {
//            print(i)
//            if (num % i == 0) { return false }
//        }
//        return true
//    }
//
//    return String(n, radix: k).split(separator: "0").filter {
//        return isPrime(Int($0)!)
//    }.count
//}

//// 마지막 풀이 : 내 풀이에 제곱근 형태 병합하기
//func solution(_ n:Int, _ k:Int) -> Int {
//    return String(n, radix: k).split(separator: "0").filter { number in
//        let num = Int(number)!
//        if num < 4 {
//            return num == 1 || num == 0 ? false : true
//        }
//        return (2...Int(sqrt(Double(num)))).filter { num % $0 == 0 }.count == 0
//    }.count
//}

// MARK: 3. 주차 요금 계산

//func solution(_ fees:[Int], _ records:[String]) -> [Int] {
//    var carDic = [String: [[String]]]()
//
//    // 차량 별 입출차 정보 딕셔너리에 담기
//    records.forEach { record in
//        let car = record.components(separatedBy: " ")
//        if car[2] == "OUT" {
//            carDic[car[1]]![carDic[car[1]]!.count-1].append(car[0])
//        } else if carDic[car[1]] == nil {
//            carDic[car[1]] = [[car[0]]]
//        } else {
//            carDic[car[1]]!.append([car[0]])
//        }
//    }
//
//     // 시각 사이의 시간을 구해주는 함수
//     func timeInterval(_ start: String, _ end: String) -> Int {
//         let s = start.split(separator: ":").map{Int($0)!}
//         let e = end.split(separator: ":").map{Int($0)!}
//         return ((e[1] + e[0] * 60)-(s[1] + s[0] * 60))
//     }
//
//     // 시간 별 요금
//     func timeFee(_ time: Int) -> Int {
//         if time <= fees[0] {
//             return fees[1]
//         } else {
//             return fees[1] + (Int(ceil(Double(time - fees[0]) / Double(fees[2]))) * fees[3])
//         }
//     }
//
//    return carDic.sorted{$0.0 < $1.0}.map { onoff in
//         return timeFee(onoff.1.reduce(0) {$0 + timeInterval($1[0], $1.count == 1 ? "23:59" : $1[1])})
//     }
//}

// ------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------
// MARK: - 2022 카카오 테크 인턴십
// ------------------------------------------------------------------------------------------
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
