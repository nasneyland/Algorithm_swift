//
//  main.swift
//  programmers_kit
//
//  Created by najin on 2022/12/28.
//

// 프로그래머스 고득점 키트
// https://school.programmers.co.kr/learn/challenges?tab=algorithm_practice_kit

import Foundation

print(solution(["classic", "pop", "classic", "classic", "pop"], [500, 600, 150, 800, 2500]))

// ------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------
// MARK: - 해시
// Key-value쌍으로 데이터를 빠르게 찾아보세요. 딕셔너리를 이용하자.
// ------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------

// ------------------------------------------------------------------------------------------
// MARK: 위장 (Lv.1) (딕셔너리)
// 스파이들은 매일 다른 옷을 조합하여 입어 자신을 위장합니다. 예를 들어 스파이가 가진 옷이 아래와 같고 오늘 스파이가 동그란 안경, 긴 코트, 파란색 티셔츠를 입었다면 다음날은 청바지를 추가로 입거나 동그란 안경 대신 검정 선글라스를 착용하거나 해야 합니다.

//func solution(_ clothes:[[String]]) -> Int {
//    var type: [String: Int] = [:]
//    clothes.forEach {type[$0[1], default:1] += 1}
//    return type.values.reduce(1,*) - 1
//}

// ------------------------------------------------------------------------------------------
// MARK: 베스트앨범 (Lv.2) (딕셔너리)
// 스트리밍 사이트에서 장르 별로 가장 많이 재생된 노래를 두 개씩 모아 베스트 앨범을 출시하려 합니다. 노래는 고유 번호로 구분하며, 노래를 수록하는 기준은 다음과 같습니다. 1)속한 노래가 많이 재생된 장르를 먼저 수록합니다. 2)장르 내에서 많이 재생된 노래를 먼저 수록합니다. 3)장르 내에서 재생 횟수가 같은 노래 중에서는 고유 번호가 낮은 노래를 먼저 수록합니다. 노래의 장르를 나타내는 문자열 배열 genres와 노래별 재생 횟수를 나타내는 정수 배열 plays가 주어질 때, 베스트 앨범에 들어갈 노래의 고유 번호를 순서대로 return 하도록 solution 함수를 완성하세요.

//func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
//    var playsDic: [Int: (String, Int)] = [:]
//    var genresDic: [String: Int] = [:]
//
//    // 장르와 곡 딕셔너리 선언
//    (0...genres.count-1).forEach {
//        genresDic[genres[$0], default: 0] += plays[$0]
//        playsDic[$0] = (genres[$0], plays[$0])
//    }
//
//    // 장르와 곡 정렬
//    let sortedGenres = genresDic.sorted {$0.1 > $1.1}
//    let sortedPlays = playsDic.sorted {($0.1.1, -$0.0) > ($1.1.1, -$1.0)}
//
//    var result: [Int] = []
//    for (i, genre) in sortedGenres.enumerated() {
//        for song in sortedPlays {
//            if result.count != (i+1) * 2 {
//                if song.value.0 == genre.key {
//                    result.append(song.key)
//                }
//            } else {
//                break
//            }
//        }
//    }
//
//    return result
//}

//func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
//    var dic =  [String: [[Int]]]()
//
//    genres.enumerated().forEach { (index, element) in
//        if dic[element] == nil {
//            dic[element] = [[index, plays[index]]]
//        } else {
//            dic[element]! += [[index, plays[index]]]
//        }
//    }
//
//    return Array(dic.values)
//            .sorted {
//                ($0.reduce(0) { $0 + $1[1] }) > ($1.reduce(0) { $0 + $1[1] })
//            }
//            .flatMap {
//                $0.sorted { $0[1] > $1[1] }.map { $0[0] }.prefix(2)
//            }
//}

// ------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------
// MARK: - 그리디
// 매 순간 최적의 해라고 생각되는 것을 선택해 나가는 방식으로, 최종적인 해답에 도달한다 이때, 탐욕 선택 조건은 앞의 선택이 이후에 선택에 영향을 주면 안 되며, 문제에 대한 최적해가 부분 문제에 대해서도 최적해여야만 최적해를 구할 수 있다
// ------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------


// ------------------------------------------------------------------------------------------
// MARK: 체육복 (Lv.1) (Set - remove, subtracting)
// 점심시간에 도둑이 들어, 일부 학생이 체육복을 도난당했습니다. 다행히 여벌 체육복이 있는 학생이 이들에게 체육복을 빌려주려 합니다. 학생들의 번호는 체격 순으로 매겨져 있어, 바로 앞번호의 학생이나 바로 뒷번호의 학생에게만 체육복을 빌려줄 수 있습니다. 예를 들어, 4번 학생은 3번 학생이나 5번 학생에게만 체육복을 빌려줄 수 있습니다. 체육복이 없으면 수업을 들을 수 없기 때문에 체육복을 적절히 빌려 최대한 많은 학생이 체육수업을 들어야 합니다. 전체 학생의 수 n, 체육복을 도난당한 학생들의 번호가 담긴 배열 lost, 여벌의 체육복을 가져온 학생들의 번호가 담긴 배열 reserve가 매개변수로 주어질 때, 체육수업을 들을 수 있는 학생의 최댓값을 return 하도록 solution 함수를 작성해주세요.

//func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
//
////    // Set을 이용한 풀이
////    var lostSet = Set(lost.sorted(by: <)).subtracting(reserve)
////    let reserveSet = Set(reserve.sorted(by: <)).subtracting(lost)
////
////    for reserve in reserveSet {
////        if lostSet.contains(reserve - 1) {
////            lostSet.remove(reserve - 1)
////            continue
////        } else if lostSet.contains(reserve + 1) {
////            lostSet.remove(reserve + 1)
////        }
////    }
//
////    // 배열을 이용한 풀이 - 내 테스트케이스로는 틀리는데 프로그래머스에서는 이게 맞다고 된다.
////    let newReserve = reserve.filter { !lost.contains($0) }
////    let newLost = lost.filter { !reserve.contains($0) }
////
////    var lostPeople: Int = newLost.count
////
////    newReserve.forEach {
////        let isLend: Bool = newLost.contains($0 - 1) || newLost.contains($0 + 1)
////        if isLend && lostPeople > 0 {
////            lostPeople -= 1
////        }
////    }
//
//    return (n - lostPeople)
//}
