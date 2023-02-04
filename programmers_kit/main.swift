//
//  main.swift
//  programmers_kit
//
//  Created by najin on 2022/12/28.
//

// 프로그래머스 고득점 키트
// https://school.programmers.co.kr/learn/challenges?tab=algorithm_practice_kit

import Foundation

print(solution("1231234", 3))
//print(solution("477252841", 4))

// ------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------
// MARK: - 정렬 (sorted)
// 정렬을 이용해서 문제를 효율적으로 풀어보세요.
// ------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------

// ------------------------------------------------------------------------------------------
// MARK: K번째 수 (Lv.1)
// 배열 array의 i번째 숫자부터 j번째 숫자까지 자르고 정렬했을 때, k번째에 있는 수를 구하려 합니다. 예를 들어 array가 [1, 5, 2, 6, 3, 7, 4], i = 2, j = 5, k = 3이라면 rray의 2번째부터 5번째까지 자르면 [5, 2, 6, 3]입니다. 1에서 나온 배열을 정렬하면 [2, 3, 5, 6]입니다. 2에서 나온 배열의 3번째 숫자는 5입니다. 배열 array, [i, j, k]를 원소로 가진 2차원 배열 commands가 매개변수로 주어질 때, commands의 모든 원소에 대해 앞서 설명한 연산을 적용했을 때 나온 결과를 배열에 담아 return 하도록 solution 함수를 작성해주세요.

//func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
//    return commands.map { array[$0[0]-1..<$0[1]].sorted()[$0[2]-1] }
//}

// ------------------------------------------------------------------------------------------
// MARK: 가장 큰 수 (Lv.2)
// 0 또는 양의 정수가 주어졌을 때, 정수를 이어 붙여 만들 수 있는 가장 큰 수를 알아내 주세요. 예를 들어, 주어진 정수가 [6, 10, 2]라면 [6102, 6210, 1062, 1026, 2610, 2106]를 만들 수 있고, 이중 가장 큰 수는 6210입니다. 0 또는 양의 정수가 담긴 배열 numbers가 매개변수로 주어질 때, 순서를 재배치하여 만들 수 있는 가장 큰 수를 문자열로 바꾸어 return 하도록 solution 함수를 작성해주세요.

//func solution(_ numbers:[Int]) -> String {
//    var num = numbers.map{String($0)}.sorted {
//        return $0+$1 > $1+$0
//    }.joined()
//
//    // 00인 경우 처리하기
//    while num != "0", num.hasPrefix("0") {num.removeFirst()}
//    return num
//}

// ------------------------------------------------------------------------------------------
// MARK: H-Index (Lv.2)
// H-Index는 과학자의 생산성과 영향력을 나타내는 지표입니다. 어느 과학자의 H-Index를 나타내는 값인 h를 구하려고 합니다. 위키백과1에 따르면, H-Index는 다음과 같이 구합니다. 어떤 과학자가 발표한 논문 n편 중, h번 이상 인용된 논문이 h편 이상이고 나머지 논문이 h번 이하 인용되었다면 h의 최댓값이 이 과학자의 H-Index입니다. 어떤 과학자가 발표한 논문의 인용 횟수를 담은 배열 citations가 매개변수로 주어질 때, 이 과학자의 H-Index를 return 하도록 solution 함수를 작성해주세요.

//func solution(_ citations:[Int]) -> Int {
//    var hIndex = -1
//    for (index,citation) in citations.sorted(by: >).enumerated() {
//        if citation == index + 1 {
//            hIndex = citation
//            break
//        } else if citation < index + 1 {
//            hIndex = index
//            break
//        }
//    }
//    return hIndex == -1 ? citations.count : hIndex
//}

// ------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------
// MARK: - 해시 (딕셔너리)
// Key-value쌍으로 데이터를 빠르게 찾아보세요. 딕셔너리를 이용하자.
// ------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------

// ------------------------------------------------------------------------------------------
// MARK: 위장 (Lv.2) (딕셔너리)
// 스파이들은 매일 다른 옷을 조합하여 입어 자신을 위장합니다. 예를 들어 스파이가 가진 옷이 아래와 같고 오늘 스파이가 동그란 안경, 긴 코트, 파란색 티셔츠를 입었다면 다음날은 청바지를 추가로 입거나 동그란 안경 대신 검정 선글라스를 착용하거나 해야 합니다.

//func solution(_ clothes:[[String]]) -> Int {
//    var type: [String: Int] = [:]
//    clothes.forEach {type[$0[1], default:1] += 1}
//    return type.values.reduce(1,*) - 1
//}

// ------------------------------------------------------------------------------------------
// MARK: 베스트앨범 (Lv.2) (딕셔너리) (2차원 고차함수 이용하기)
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
//    var dict: [String: [[Int]]] = [:]
//
//    // 딕셔너리로 같은 장르끼리 묶기
//    genres.enumerated().forEach { (index, genre) in
//         dict[genre, default: []] += [[index, plays[index]]]
//    }
//
//    // 1. 속한 노래가 많이 재생된 장르 먼저 수록합니다.
//    // 2. 장르 내에서 많이 재생된 노래를 먼저 수록합니다. (같으면 고유번호 낮은 노래 먼저)
//    // 3. 상위 2개 노래만 인덱스를 출력합니다
//    return dict.values.sorted {
//        $0.reduce(0) {$0 + $1[1]} > $1.reduce(0) {$0 + $1[1]}
//    }.flatMap {
//        $0.sorted {(-$0[0],$0[1]) > (-$0[0],$1[1])}
//        .prefix(2).map{$0[0]}}
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
//    // Set을 이용한 풀이
//    var lostSet = Set(lost.sorted(by: <)).subtracting(reserve)
//    let reserveSet = Set(reserve.sorted(by: <)).subtracting(lost)
//
//    for reserve in reserveSet {
//        if lostSet.contains(reserve - 1) {
//            lostSet.remove(reserve - 1)
//            continue
//        } else if lostSet.contains(reserve + 1) {
//            lostSet.remove(reserve + 1)
//        }
//    }

//    // 배열을 이용한 풀이
//    let newReserve = reserve.filter { !lost.contains($0) }
//    let newLost = lost.filter { !reserve.contains($0) }
//
//    var lostPeople: Int = newLost.count
//
//    newReserve.forEach {
//        let isLend: Bool = newLost.contains($0 - 1) || newLost.contains($0 + 1)
//        if isLend && lostPeople > 0 {
//            lostPeople -= 1
//        }
//    }
//
//    return (n - lostPeople)
//}

//func solution(_ n: Int, _ lost: [Int], _ reserve: [Int]) -> Int {
//    var array = Array(repeating: 1, count: n)
//    lost.forEach { array[$0-1] -= 1 }
//    reserve.forEach { array[$0-1] += 1 }
//    (0...n-1).forEach {
//        if $0 != 0 && array[$0] == 0 && array[$0-1] == 2 {
//            // 앞사람 확인
//            array[$0] = 1
//            array[$0-1] = 1
//        } else if $0 != (n-1) && array[$0] == 0 && array[$0+1] == 2 {
//            // 뒷사람 확인
//            array[$0] = 1
//            array[$0+1] = 1
//        }
//    }
//    return array.filter{$0>0}.count
//}

// ------------------------------------------------------------------------------------------
// MARK: 조이스틱 (Lv.2)
// 조이스틱으로 알파벳 이름을 완성하세요. 맨 처음엔 A로만 이루어져 있습니다. ex) 완성해야 하는 이름이 세 글자면 AAA, 네 글자면 AAAA

//func solution(_ name:String) -> Int {
//    let name = Array(name)
//    let aValue = Int(Character("A").asciiValue!)
//    let zValue = Int(Character("Z").asciiValue!)
//
//    var updown = 0
//    var leftright = name.count-1
//
//    for startIdx in 0..<name.count {
//        updown += min(Int(name[startIdx].asciiValue!) - aValue, zValue - Int(name[startIdx].asciiValue!) + 1)
//
//        var endIdx = startIdx + 1
//        while endIdx < name.count && name[endIdx] == "A" {
//            endIdx += 1
//        }
//
//        let moveFront = startIdx * 2 + (name.count - endIdx)
//        let moveBack = (name.count - endIdx) * 2 + startIdx
//
//        leftright = min(leftright, moveFront)
//        leftright = min(leftright, moveBack)
//    }
//
//    return updown + leftright
//}

// ------------------------------------------------------------------------------------------
// MARK: 큰 수 만들기 (Lv.2)
// 어떤 숫자에서 k개의 수를 제거했을 때 얻을 수 있는 가장 큰 숫자를 구하려 합니다. 예를 들어, 숫자 1924에서 수 두 개를 제거하면 [19, 12, 14, 92, 94, 24] 를 만들 수 있습니다. 이 중 가장 큰 숫자는 94 입니다. 문자열 형식으로 숫자 number와 제거할 수의 개수 k가 solution 함수의 매개변수로 주어집니다. number에서 k 개의 수를 제거했을 때 만들 수 있는 수 중 가장 큰 숫자를 문자열 형태로 return 하도록 solution 함수를 완성하세요.

//// 내가 처음 푼 함수 - 시간 초과 뜬 함수
//func solution(_ number:String, _ k:Int) -> String {
//    var numbers = number.map{String($0)}
//    var result = ""
//    var removeCnt = 0
//
//    while removeCnt != k {
//        let max = numbers[0...(k-removeCnt)].max()!
//        let index = numbers.firstIndex(of: max)!
//
//        numbers.removeSubrange(0...index)
//        result += max
//        removeCnt += index
//    }
//    return result + numbers.joined()
//}

//// 스택을 이용한 함수
//func solution(_ number: String, _ k: Int) -> String {
//    var result: [Int] = []
//    var count: Int = 0
//
//    Array(number).compactMap { Int(String($0)) }.forEach { item in
//        while count < k {
//            if let last = result.last, last < item {
//                result.removeLast()
//                count += 1
//            } else {
//                break
//            }
//        }
//        result.append(item)
//    }
//
//    return result[0..<(result.count - k + count)].map { "\($0)" }.joined()
//}

// ------------------------------------------------------------------------------------------
// MARK: 섬 연결하기 (Lv.3)
// n개의 섬 사이에 다리를 건설하는 비용(costs)이 주어질 때, 최소의 비용으로 모든 섬이 서로 통행 가능하도록 만들 때 필요한 최소 비용을 return 하도록 solution을 완성하세요. 다리를 여러 번 건너더라도, 도달할 수만 있으면 통행 가능하다고 봅니다. 예를 들어 A 섬과 B 섬 사이에 다리가 있고, B 섬과 C 섬 사이에 다리가 있으면 A 섬과 C 섬은 서로 통행 가능합니다.

//func solution(_ n:Int, _ costs:[[Int]]) -> Int {
//  func findParent(_ node: Int) -> Int {
//    if parent[node] != node {
//      return findParent(parent[node])
//    } else {
//      return node
//    }
//  }
//  
//  func union(_ a: Int, _ b: Int) {
//    let a = findParent(a)
//    let b = findParent(b)
//    
//    if a < b {
//      parent[b] = a
//    } else {
//      parent[a] = b
//    }
//  }
//  
//  var totalCost = 0
//  var parent = Array(repeating: 0, count: n+1)
//  (1...n).forEach { parent[$0] = $0 }
//  
//  for cost in costs.sorted(by: { $0[2] < $1[2] }) {
//    let (a, b, dist) = (cost[0], cost[1], cost[2])
//    
//    if findParent(a) != findParent(b) {
//      union(a, b)
//      totalCost += dist
//    }
//  }
//  
//  return totalCost
//}
//
//func solution(_ n:Int, _ costs:[[Int]]) -> Int {
//    var sortedCosts = costs.sorted(by: {$0[2] < $1[2]})
//    var connect: [Int] = [sortedCosts[0][0], sortedCosts[0][1]]
//    var answer: Int = sortedCosts[0][2]
//
//    while(connect.count < n) {
//        for i in 0 ..< sortedCosts.count {
//            let cost = sortedCosts[i]
//            if connect.contains(cost[0]) && !connect.contains(cost[1]) {
//                connect.append(cost[1])
//                answer += cost[2]
//                sortedCosts.remove(at: i)
//                break
//            } else if !connect.contains(cost[0]) && connect.contains(cost[1]) {
//                connect.append(cost[0])
//                answer += cost[2]
//                sortedCosts.remove(at: i)
//                break
//            }
//        }
//    }
//
//    return answer
//}
