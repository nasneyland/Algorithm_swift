//
//  main.swift
//  programmers_kit
//
//  Created by najin on 2022/12/28.
//

// 프로그래머스 고득점 키트
// https://school.programmers.co.kr/learn/challenges?tab=algorithm_practice_kit

import Foundation

print(solution(5, [2], [1,3,5]))

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
