//
//  main.swift
//  programmers_kit
//
//  Created by najin on 2022/12/28.
//

// 프로그래머스 고득점 키트
// https://school.programmers.co.kr/learn/challenges?tab=algorithm_practice_kit

import Foundation

print(solution("hit", "cog", ["hot", "dot", "dog", "lot", "log"]))

// ------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------
// MARK: - 정렬 (sorted)
// 정렬을 이용해서 문제를 효율적으로 풀어보세요.
// ------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------

// MARK: K번째 수 (Lv.1)
// 배열 array의 i번째 숫자부터 j번째 숫자까지 자르고 정렬했을 때, k번째에 있는 수를 구하려 합니다. 예를 들어 array가 [1, 5, 2, 6, 3, 7, 4], i = 2, j = 5, k = 3이라면 rray의 2번째부터 5번째까지 자르면 [5, 2, 6, 3]입니다. 1에서 나온 배열을 정렬하면 [2, 3, 5, 6]입니다. 2에서 나온 배열의 3번째 숫자는 5입니다. 배열 array, [i, j, k]를 원소로 가진 2차원 배열 commands가 매개변수로 주어질 때, commands의 모든 원소에 대해 앞서 설명한 연산을 적용했을 때 나온 결과를 배열에 담아 return 하도록 solution 함수를 작성해주세요.

//func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
//    return commands.map { array[$0[0]-1..<$0[1]].sorted()[$0[2]-1] }
//}

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

// MARK: 위장 (Lv.2)
// 스파이들은 매일 다른 옷을 조합하여 입어 자신을 위장합니다. 예를 들어 스파이가 가진 옷이 아래와 같고 오늘 스파이가 동그란 안경, 긴 코트, 파란색 티셔츠를 입었다면 다음날은 청바지를 추가로 입거나 동그란 안경 대신 검정 선글라스를 착용하거나 해야 합니다.

//func solution(_ clothes:[[String]]) -> Int {
//    var type: [String: Int] = [:]
//    clothes.forEach {type[$0[1], default:1] += 1}
//    return type.values.reduce(1,*) - 1
//}

// MARK: 베스트앨범 (Lv.2)
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
// MARK: - 스택/큐 (removeLast / removeFirst / popLast)
// LIFO, FIFO, push & pop! 스택과 큐를 이용해서 문제를 풀어보세요.
// ------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------

// MARK: 기능개발 (Lv.2)
// 프로그래머스 팀에서는 기능 개선 작업을 수행 중입니다. 각 기능은 진도가 100%일 때 서비스에 반영할 수 있습니다. 또, 각 기능의 개발속도는 모두 다르기 때문에 뒤에 있는 기능이 앞에 있는 기능보다 먼저 개발될 수 있고, 이때 뒤에 있는 기능은 앞에 있는 기능이 배포될 때 함께 배포됩니다. 먼저 배포되어야 하는 순서대로 작업의 진도가 적힌 정수 배열 progresses와 각 작업의 개발 속도가 적힌 정수 배열 speeds가 주어질 때 각 배포마다 몇 개의 기능이 배포되는지를 return 하도록 solution 함수를 완성하세요.

//func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
//    var term = 0
//    var result = [Int]()
//
//    progresses.enumerated().forEach { (index,progress) in
//        let time = Int(ceil(Double(100 - progress) / Double(speeds[index])))
//
//        if time <= term {
//            result[result.count-1] += 1
//        } else {
//            term = time
//            result.append(1)
//        }
//    }
//    return result
//}

// MARK: 올바른괄호 (Lv.2)
// 괄호가 바르게 짝지어졌다는 것은 '(' 문자로 열렸으면 반드시 짝지어서 ')' 문자로 닫혀야 한다는 뜻입니다. 예를 들어 "()()" 또는 "(())()" 는 올바른 괄호입니다. ")()(" 또는 "(()(" 는 올바르지 않은 괄호입니다. '(' 또는 ')' 로만 이루어진 문자열 s가 주어졌을 때, 문자열 s가 올바른 괄호이면 true를 return 하고, 올바르지 않은 괄호이면 false를 return 하는 solution 함수를 완성해 주세요.

//// 효율성테스트 - 시간초과
//func solution(_ s:String) -> Bool {
//    var queue = [Character]()
//
//    for c in s {
//        if queue.isEmpty, c == ")" {
//            return false
//        } else if queue.isEmpty || c == "(" {
//            queue.append(c)
//        } else {
//            if queue.last == "(" {
//                queue.removeLast()
//            } else {
//                queue.append(c)
//            }
//        }
//    }
//    return queue.isEmpty
//}
//
//func solution(_ s:String) -> Bool {
//    var cnt = 0
//
//    for c in s {
//        if cnt == 0, c == ")" {
//            return false
//        } else {
//            if c == "(" {
//                cnt += 1
//            } else {
//                cnt -= 1
//            }
//        }
//    }
//    return cnt == 0
//}

// MARK: 프린터 (Lv.2)
// 일반적인 프린터는 인쇄 요청이 들어온 순서대로 인쇄합니다. 그렇기 때문에 중요한 문서가 나중에 인쇄될 수 있습니다. 이런 문제를 보완하기 위해 중요도가 높은 문서를 먼저 인쇄하는 프린터를 개발했습니다. 이 새롭게 개발한 프린터는 아래와 같은 방식으로 인쇄 작업을 수행합니다.
// 1. 인쇄 대기목록의 가장 앞에 있는 문서(J)를 대기목록에서 꺼냅니다.
// 2. 나머지 인쇄 대기목록에서 J보다 중요도가 높은 문서가 한 개라도 존재하면 J를 대기목록의 가장 마지막에 넣습니다.
// 3. 그렇지 않으면 J를 인쇄합니다.
// 예를 들어, 4개의 문서(A, B, C, D)가 순서대로 인쇄 대기목록에 있고 중요도가 2 1 3 2 라면 C D A B 순으로 인쇄하게 됩니다. 내가 인쇄를 요청한 문서가 몇 번째로 인쇄되는지 알고 싶습니다. 위의 예에서 C는 1번째로, A는 3번째로 인쇄됩니다.현재 대기목록에 있는 문서의 중요도가 순서대로 담긴 배열 priorities와 내가 인쇄를 요청한 문서가 현재 대기목록의 어떤 위치에 있는지를 알려주는 location이 매개변수로 주어질 때, 내가 인쇄를 요청한 문서가 몇 번째로 인쇄되는지 return 하도록 solution 함수를 작성해주세요.

//func solution(_ priorities:[Int], _ location:Int) -> Int {
//    var priorityList = priorities.enumerated().map {(index,priority) in [index, priority]}
//    var result = [[Int]]()
//
//    while result.count != priorities.count {
//        if priorityList[0][1] == priorityList.map{ $0[1] }.max() {
//            result.append(priorityList.removeFirst())
//        } else {
//            priorityList.append(priorityList.removeFirst())
//        }
//    }
//
//    return result.map{ $0[0] }.firstIndex(of: location)! + 1
//}

// MARK: 다리를 지나는 트럭 (Lv.2)
// 트럭 여러 대가 강을 가로지르는 일차선 다리를 정해진 순으로 건너려 합니다. 모든 트럭이 다리를 건너려면 최소 몇 초가 걸리는지 알아내야 합니다. 다리에는 트럭이 최대 bridge_length대 올라갈 수 있으며, 다리는 weight 이하까지의 무게를 견딜 수 있습니다. 단, 다리에 완전히 오르지 않은 트럭의 무게는 무시합니다. 예를 들어, 트럭 2대가 올라갈 수 있고 무게를 10kg까지 견디는 다리가 있습니다. 무게가 [7, 4, 5, 6]kg인 트럭이 순서대로 최단 시간 안에 다리를 건너려면 다음과 같이 건너야 합니다.

//func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
//    var time = 0
//    var readyTruck = truck_weights
//    var ongoingTruck = [[Int]]()
//
//    while !(readyTruck.isEmpty && ongoingTruck.isEmpty) {
//        time += 1 // 시간경과
//
//        // 빼는 작업
//        if !ongoingTruck.isEmpty, ongoingTruck[0][1] == bridge_length {
//            ongoingTruck.removeFirst()
//        }
//        // 다리에 올리기
//        if !readyTruck.isEmpty, ongoingTruck.reduce(0) {$0 + $1[0]} + readyTruck[0] <= weight {
//            ongoingTruck.append([readyTruck.removeFirst(), 0])
//        }
//        // 진행작업
//        ongoingTruck = ongoingTruck.map {[$0[0], $0[1] + 1]}
//    }
//
//    return time
//}

// ------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------
// MARK: - 힙
// 힙은 특정한 규칙을 가지는 트리로, 힙을 이용해서 우선순위 큐를 구현할 수 있습니다. 많은 언어에서 이미 구현된 우선순위 큐 라이브러리를 제공합니다. 이를 활용하면 효율적으로 문제를 풀 수 있습니다. 우선순위 큐를 이용해서 해결하기에 적합한 문제들을 만나보세요.
// ------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------

// MARK: 디스크 컨트롤러 (Lv.3)
// 하드디스크는 한 번에 하나의 작업만 수행할 수 있습니다. 디스크 컨트롤러를 구현하는 방법은 여러 가지가 있습니다. 가장 일반적인 방법은 요청이 들어온 순서대로 처리하는 것입니다.

//func solution(_ jobs:[[Int]]) -> Int {
//    var jobList = jobs.sorted {($0[1],$0[0]) < ($1[1],$1[0])}
//    var currentTime = 0
//    var sumTime = 0
//
//    while !jobList.isEmpty {
//        for (index,job) in jobList.enumerated() {
//            if job[0] <= currentTime {
//                jobList.remove(at: index)
//                currentTime += job[1]
//                sumTime += (currentTime-job[0])
//                currentTime -= 1
//                break
//            }
//        }
//        currentTime += 1
//    }
//
//    return Int(floor(Double(sumTime) / Double(jobs.count)))
//}

// MARK: 이중우선순위큐 (Lv.3)
// 이중 우선순위 큐가 할 연산 operations가 매개변수로 주어질 때, 모든 연산을 처리한 후 큐가 비어있으면 [0,0] 비어있지 않으면 [최댓값, 최솟값]을 return 하도록 solution 함수를 구현해주세요.

//func solution(_ operations:[String]) -> [Int] {
//    var queue = [Int]()
//
//    operations.forEach {
//        if $0.hasPrefix("I") {
//            queue.append(Int($0.suffix($0.count - 2))!)
//        } else if !queue.isEmpty {
//            queue.sort()
//            if $0.hasSuffix("-1") {
//                queue.removeFirst()
//            } else {
//                queue.removeLast()
//            }
//
//        }
//    }
//    return [queue.max() ?? 0, queue.min() ?? 0]
//}

// ------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------
// MARK: - 완전탐색 (순열/조합/경우의수)
// 무식해 보여도 사실은 최고의 방법일 때가 있지요. 가능한 모든 상황을 조사해 문제를 풀어보세요.
// ------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------

// MARK: 최소직사각형 (Lv.1)
// 명함 지갑을 만드는 회사에서 지갑의 크기를 정하려고 합니다. 다양한 모양과 크기의 명함들을 모두 수납할 수 있으면서, 작아서 들고 다니기 편한 지갑을 만들어야 합니다. 이러한 요건을 만족하는 지갑을 만들기 위해 디자인팀은 모든 명함의 가로 길이와 세로 길이를 조사했습니다.

//func solution(_ sizes:[[Int]]) -> Int {
//    var square = [0, 0]
//    sizes.forEach {
//        let size = $0.sorted(by: >)
//        square[0] = max(square[0], size[0])
//        square[1] = max(square[1], size[1])
//    }
//    return square[0] * square[1]
//}

// MARK: 모의고사 (Lv.1)
// 수포자는 수학을 포기한 사람의 준말입니다. 수포자 삼인방은 모의고사에 수학 문제를 전부 찍으려 합니다. 수포자는 1번 문제부터 마지막 문제까지 다음과 같이 찍습니다.
// 1번 수포자가 찍는 방식: 1, 2, 3, 4, 5, 1, 2, 3, 4, 5, ...
// 2번 수포자가 찍는 방식: 2, 1, 2, 3, 2, 4, 2, 5, 2, 1, 2, 3, 2, 4, 2, 5, ...
// 3번 수포자가 찍는 방식: 3, 3, 1, 1, 2, 2, 4, 4, 5, 5, 3, 3, 1, 1, 2, 2, 4, 4, 5, 5, ...
// 1번 문제부터 마지막 문제까지의 정답이 순서대로 들은 배열 answers가 주어졌을 때, 가장 많은 문제를 맞힌 사람이 누구인지 배열에 담아 return 하도록 solution 함수를 작성해주세요.

//func solution(_ answers:[Int]) -> [Int] {
//
//    let mathArray = [[1,2,3,4,5], [2,1,2,3,2,4,2,5], [3,3,1,1,2,2,4,4,5,5]]
//    var scoreArray = [1:0,2:0,3:0]
//
//    answers.enumerated().forEach { (index,answer) in
//        (0...2).forEach {
//            scoreArray[$0+1]! += mathArray[$0][index % mathArray[$0].count] == answers[index] ? 1 : 0
//        }
//    }
//
//    return scoreArray.filter { $0.1 == scoreArray.values.max() }.map {$0.key}.sorted()
//}

// MARK: 소수찾기 (Lv.2)
// 한자리 숫자가 적힌 종이 조각이 흩어져있습니다. 흩어진 종이 조각을 붙여 소수를 몇 개 만들 수 있는지 알아내려 합니다. 각 종이 조각에 적힌 숫자가 적힌 문자열 numbers가 주어졌을 때, 종이 조각으로 만들 수 있는 소수가 몇 개인지 return 하도록 solution 함수를 완성해주세요.

//func solution(_ numbers:String) -> Int {
//
//    // 순열
//    func permutation(_ array: [String]) -> [String] {
//        if array.count == 0 { return [] }
//
//        let answerArray = (0..<array.count).flatMap { i -> [String] in
//            var removedArray = array
//            let elem = removedArray.remove(at: i)
//            return [elem] + permutation(removedArray).map { elem + $0 }
//        }
//
//        return answerArray
//    }
//
//    // 소수판별
//    func isPrime(_ num: Int) -> Bool {
//        print(num)
//        if(num<4) {
//            return num == 1 || num == 0 ? false : true
//        }
//        for i in 2...Int(sqrt(Double(num))) {
//            if (num % i == 0) { return false }
//        }
//        return true
//    }
//
//    return Set(permutation(numbers.map {String($0)}).map{Int($0)!}).filter {isPrime($0)}.count
//}

// MARK: 카펫 (Lv.2)
// Leo는 카펫을 사러 갔다가 아래 그림과 같이 중앙에는 노란색으로 칠해져 있고 테두리 1줄은 갈색으로 칠해져 있는 격자 모양 카펫을 봤습니다. Leo는 집으로 돌아와서 아까 본 카펫의 노란색과 갈색으로 색칠된 격자의 개수는 기억했지만, 전체 카펫의 크기는 기억하지 못했습니다. Leo가 본 카펫에서 갈색 격자의 수 brown, 노란색 격자의 수 yellow가 매개변수로 주어질 때 카펫의 가로, 세로 크기를 순서대로 배열에 담아 return 하도록 solution 함수를 작성해주세요.

//func solution(_ brown:Int, _ yellow:Int) -> [Int] {
//    let line = ((brown-4)/2)
//    var top = 0
//    (1...Int(ceil(Double(line)/2))).forEach {
//        print($0)
//        if $0 * (line - $0) == yellow {
//            top = $0
//        }
//    }
//    return [top + 2, line - top + 2].sorted(by: >)
//}

// MARK: 피로도 (Lv.2)
// XX게임에는 피로도 시스템(0 이상의 정수로 표현합니다)이 있으며, 일정 피로도를 사용해서 던전을 탐험할 수 있습니다. 이때, 각 던전마다 탐험을 시작하기 위해 필요한 "최소 필요 피로도"와 던전 탐험을 마쳤을 때 소모되는 "소모 피로도"가 있습니다. "최소 필요 피로도"는 해당 던전을 탐험하기 위해 가지고 있어야 하는 최소한의 피로도를 나타내며, "소모 피로도"는 던전을 탐험한 후 소모되는 피로도를 나타냅니다. 예를 들어 "최소 필요 피로도"가 80, "소모 피로도"가 20인 던전을 탐험하기 위해서는 유저의 현재 남은 피로도는 80 이상 이어야 하며, 던전을 탐험한 후에는 피로도 20이 소모됩니다. 이 게임에는 하루에 한 번씩 탐험할 수 있는 던전이 여러개 있는데, 한 유저가 오늘 이 던전들을 최대한 많이 탐험하려 합니다. 유저의 현재 피로도 k와 각 던전별 "최소 필요 피로도", "소모 피로도"가 담긴 2차원 배열 dungeons 가 매개변수로 주어질 때, 유저가 탐험할수 있는 최대 던전 수를 return 하도록 solution 함수를 완성해주세요.

//func solution(_ k: Int, _ dungeons: [[Int]]) -> Int {
//    return explore(k, dungeons, 0)
//}
//
//private func explore(_ k: Int, _ dungeons: [[Int]], _ depth: Int) -> Int {
//    return dungeons.enumerated().map { (i,dungeon) in
//        return k >= dungeon[0] ? explore(k - dungeon[1], dungeons.filter { elem in dungeon != elem }, depth + 1) : depth
//    }.max() ?? depth
//}

// ------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------
// MARK: - 그리디
// 매 순간 최적의 해라고 생각되는 것을 선택해 나가는 방식으로, 최종적인 해답에 도달한다 이때, 탐욕 선택 조건은 앞의 선택이 이후에 선택에 영향을 주면 안 되며, 문제에 대한 최적해가 부분 문제에 대해서도 최적해여야만 최적해를 구할 수 있다
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
//
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
//        leftright = min(leftright, moveFront, moveBack)
//
//        print("\(startIdx)...\(endIdx)      \(leftright)...\(moveFront)...\(moveBack)")
//    }
//
//    return updown + leftright
//}

//// 스스로 푼 코드
//func solution(_ name:String) -> Int {
//    let zValue = Character("Z").asciiValue!
//    let aValue = Character("A").asciiValue!
//
//    var updown = 0
//    var leftright = name.count - 1
//
//    var nameList = name.map {String($0)}
//    var startIdx = 0
//    var endIdx = 0
//
//    name.forEach {
//        let nameValue = $0.asciiValue!
//        updown += min(Int(zValue - nameValue + 1), Int(nameValue - aValue))
//    }
//
//    while startIdx < nameList.count {
//        if nameList[startIdx] == "A" {
//            endIdx = startIdx
//            while endIdx < nameList.count - 1, nameList[endIdx + 1] == "A" {
//                endIdx += 1
//            }
//
//            if startIdx <= 1 && endIdx == name.count - 1 {
//                leftright = 0
//            } else {
//                let turnLeft = (startIdx <= 1 ? 0 : (startIdx - 1) * 2) + (name.count - endIdx - 1)
//                let turnRight = (startIdx) + ((name.count - endIdx - 1) * 2 - 1)
//                leftright = min(leftright, turnLeft, turnRight)
//            }
//            startIdx = endIdx + 1
//        } else {
//            startIdx += 1
//        }
//    }
//
//    return updown + leftright
//}

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

//// 시간 초과
//func solution(_ number: String, _ k: Int) -> String {
//    var numList = number.map{ String($0) }
//    var result = ""
//
//    while result.count != number.count - k {
//        let preList = numList[0...numList.count - (number.count - k - result.count)]
//        let preMax = preList.max()!
//        for pre in preList {
//            if (pre < preMax) {
//                numList.removeFirst()
//            } else {
//                result.append(numList.removeFirst())
//                break
//            }
//        }
//    }
//    return result
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

//// 스스로 푼 코드 (스택으로)
//func solution(_ number: String, _ k: Int) -> String {
//    var numList = number.map{ Int(String($0))! }
//    var result = [numList.removeFirst()]
//    var removeCnt = k
//
//    for (index,num) in numList.enumerated() {
//        while removeCnt != 0, !result.isEmpty, result.last! < num {
//            result.removeLast()
//            removeCnt -= 1
//        }
//        // print("\(index + 1 - (k - removeCnt))...\(number.count - k)")
//        // if index + 1 - (k - removeCnt) == number.count - k {
//        //     break
//        // }
//        result.append(num)
//    }
//
//    return result.count != number.count - k ? result[0..<number.count - k].map{String($0)}.joined() : result.map{String($0)}.joined()
//}

// MARK: 섬 연결하기 (Lv.3) (크루스칼 알고리즘)
// n개의 섬 사이에 다리를 건설하는 비용(costs)이 주어질 때, 최소의 비용으로 모든 섬이 서로 통행 가능하도록 만들 때 필요한 최소 비용을 return 하도록 solution을 완성하세요. 다리를 여러 번 건너더라도, 도달할 수만 있으면 통행 가능하다고 봅니다. 예를 들어 A 섬과 B 섬 사이에 다리가 있고, B 섬과 C 섬 사이에 다리가 있으면 A 섬과 C 섬은 서로 통행 가능합니다.

//func solution(_ n:Int, _ costs:[[Int]]) -> Int {
//    var cnt = 0
//    var parent = (0..<n).map{$0}
//
//    func findParent(_ node: Int) -> Int {
//        if parent[node] == node {
//            return node
//        } else {
//            return findParent(parent[node])
//        }
//    }
//
//    func union(_ a: Int, _ b: Int) {
//
//        let parentA = findParent(a)
//        let parentB = findParent(b)
//
//        if parentA < parentB {
//            parent[parentB] = parentA
//        } else {
//            parent[parentA] = parentB
//        }
//    }
//
//    costs.sorted {$0[2] < $1[2]}.forEach {
//        let a = $0[0]
//        let b = $0[1]
//        let cost = $0[2]
//
//        if findParent(a) != findParent(b) {
//            union(a,b)
//            cnt += cost
//        }
//    }
//
//    return cnt
//}

// ------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------
// MARK: - 깊이/너비 우선 탐색 (DFS/BFS)
// 깊이/너비 우선 탐색을 사용해 원하는 답을 찾아보세요.
// ------------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------------

// MARK: 타겟넘버 (Lv.2) (DFS)
// n개의 음이 아닌 정수들이 있습니다. 이 정수들을 순서를 바꾸지 않고 적절히 더하거나 빼서 타겟 넘버를 만들려고 합니다. 예를 들어 [1, 1, 1, 1, 1]로 숫자 3을 만들려면 다음 다섯 방법을 쓸 수 있습니다. 사용할 수 있는 숫자가 담긴 배열 numbers, 타겟 넘버 target이 매개변수로 주어질 때 숫자를 적절히 더하고 빼서 타겟 넘버를 만드는 방법의 수를 return 하도록 solution 함수를 작성해주세요.
//-1+1+1+1+1 = 3
//+1-1+1+1+1 = 3
//+1+1-1+1+1 = 3
//+1+1+1-1+1 = 3
//+1+1+1+1-1 = 3

//func solution(_ numbers:[Int], _ target:Int) -> Int {
//    var cnt = 0
//
//    func DFS(index: Int, sum: Int) {
//        if index == numbers.count {
//            if sum == target { cnt += 1 }
//            return
//        } else {
//            DFS(index: index + 1, sum: sum + numbers[index])
//            DFS(index: index + 1, sum: sum - numbers[index])
//        }
//    }
//
//    DFS(index:0, sum:0)
//
//    return cnt
//}

// MARK: 네트워크 (Lv.3) (DFS)
// 네트워크란 컴퓨터 상호 간에 정보를 교환할 수 있도록 연결된 형태를 의미합니다. 예를 들어, 컴퓨터 A와 컴퓨터 B가 직접적으로 연결되어있고, 컴퓨터 B와 컴퓨터 C가 직접적으로 연결되어 있을 때 컴퓨터 A와 컴퓨터 C도 간접적으로 연결되어 정보를 교환할 수 있습니다. 따라서 컴퓨터 A, B, C는 모두 같은 네트워크 상에 있다고 할 수 있습니다. 컴퓨터의 개수 n, 연결에 대한 정보가 담긴 2차원 배열 computers가 매개변수로 주어질 때, 네트워크의 개수를 return 하도록 solution 함수를 작성하시오.

//func solution(_ n:Int, _ computers:[[Int]]) -> Int {
//    
//    var visited = Array(repeating: false, count: n)
//    var cnt = 0
//    
//    func dfs(_ index: Int) {
//        visited[index] = true
//        
//        for (i, computer) in computers[index].enumerated() {
//            if !visited[i] && computer == 1 {
//                dfs(i)
//            }
//        }
//    }
//    
//    (0..<n).forEach { index in
//        if !visited[index] {
//            dfs(index)
//            cnt += 1
//        }
//    }
//    return cnt
//}

//재도전
//func solution(_ n:Int, _ computers:[[Int]]) -> Int {
//
//    var connected = Array(repeating: false, count: n)
//    var cnt = 0
//
//    func dfs(_ index: Int) {
//        if connected[index] { return }
//        connected[index] = true
//
//        for (i,c) in computers[index].enumerated() {
//            if c == 1 {
//                dfs(i)
//            }
//        }
//    }
//
//    for i in (0..<computers.count) {
//        if !connected[i] {
//            cnt += 1
//            dfs(i)
//        }
//    }
//
//    return cnt
//}

// MARK: 단어 변환 (Lv.3) (BFS)
//두 개의 단어 begin, target과 단어의 집합 words가 있습니다. 아래와 같은 규칙을 이용하여 begin에서 target으로 변환하는 가장 짧은 변환 과정을 찾으려고 합니다. 1. 한 번에 한 개의 알파벳만 바꿀 수 있습니다. 2. words에 있는 단어로만 변환할 수 있습니다. 예를 들어 begin이 "hit", target가 "cog", words가 ["hot","dot","dog","lot","log","cog"]라면 "hit" -> "hot" -> "dot" -> "dog" -> "cog"와 같이 4단계를 거쳐 변환할 수 있습니다. 두 개의 단어 begin, target과 단어의 집합 words가 매개변수로 주어질 때, 최소 몇 단계의 과정을 거쳐 begin을 target으로 변환할 수 있는지 return 하도록 solution 함수를 작성해주세요.

//func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
//    var depthList = [Int]()
//
//    // 바꿀 수 있는 글자인지 확인하는 함수
//    func similar(_ a: String, _ b: String) -> Bool {
//        var cnt = 0
//        for i in (0..<a.count) {
//            if a[a.index(a.startIndex, offsetBy: i)] != b[b.index(b.startIndex, offsetBy: i)] {
//                cnt += 1
//            }
//        }
//        return cnt == 1 ? true : false
//    }
//
//    // 탐색 함수
//    func bfs(_ word: String, _ depth: Int, _ wordList: [String]) {
//        if word == target {
//            depthList.append(depth)
//            return
//        }
//
//        for w in words {
//            if !wordList.contains(w) && depth < words.count && similar(word, w) {
//                bfs(w, depth + 1, wordList + [w])
//            }
//        }
//    }
//
//    bfs(begin, 0, [])
//
//    return depthList.min() ?? 0
//}

func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
    
    var visited = [String]()
    var result = [Int]()
    
    func bfs(_ word: String, _ depth: Int) {
        print("----")
        print("...\(word)")
        print(depth)
        print(visited)
        print("----")
        if visited.contains(word) { return }
        visited.append(word)
        
        if word == target {
            result.append(depth)
        }
        
        for w in words {
            var cnt = 0
            let word1 = w.map{$0}
            let word2 = word.map{$0}
            for i in (0..<w.count) {
                if word1[i] != word2[i] { cnt += 1 }
            }
            if cnt == 1 { bfs(w, depth + 1) }
        }
    }
    
    bfs(begin, 0)
    
    return result.isEmpty ? 0 : result.min()! - 1
}

// MARK: 여행 경로 (Lv.3) (DFS + back)
// 주어진 항공권을 모두 이용하여 여행경로를 짜려고 합니다. 항상 "ICN" 공항에서 출발합니다. 항공권 정보가 담긴 2차원 배열 tickets가 매개변수로 주어질 때, 방문하는 공항 경로를 배열에 담아 return 하도록 solution 함수를 작성해주세요.

//func solution(_ tickets:[[String]]) -> [String] {
//
//    let tickets = tickets.sorted { $0[1] < $1[1] }
//    var visited = [Bool](repeating: false, count: tickets.count)
//    var result: [String] = []
//
//    func dfs(city: String) {
//        // 마지막 탐색인 경우 마지막 종착지 추가하고 종료
//        if result.count == tickets.count {
//            result.append(city)
//            return
//        }
//        // 마지막 탐색이 아닌 경우 탐색 시작
//        for i in 0..<tickets.count {
//            // 본인이 출발지인 경우, 아직 방문 안했으면 방문하기
//            if tickets[i][0] == city && !visited[i] {
//                visited[i] = true
//                result.append(city)
//                dfs(city: tickets[i][1])
//                // 다 탐색하고 왔을 때 개수가 맞으면 종료
//                if result.count == tickets.count + 1 {
//                    return
//                } else {
//                    // 아니면 해당 루트 취소하고 다시하기
//                    result.removeLast()
//                    visited[i] = false
//                }
//            }
//        }
//    }
//
//    dfs(city: "ICN")
//
//    return result
//}

// MARK: 퍼즐 조각 채우기 (Lv.3)
// 테이블 위에 놓인 퍼즐 조각을 게임 보드의 빈 공간에 적절히 올려놓으려 합니다. 게임 보드와 테이블은 모두 각 칸이 1x1 크기인 정사각 격자 모양입니다. 이때, 다음 규칙에 따라 테이블 위에 놓인 퍼즐 조각을 게임 보드의 빈칸에 채우면 됩니다. 조각은 한 번에 하나씩 채워 넣습니다. 조각을 회전시킬 수 있습니다. 조각을 뒤집을 수는 없습니다. 게임 보드에 새로 채워 넣은 퍼즐 조각과 인접한 칸이 비어있으면 안 됩니다. 다음은 퍼즐 조각을 채우는 예시입니다.
