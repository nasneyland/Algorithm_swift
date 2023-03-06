//
//  main.swift
//  programmers 입문
//
//  Created by najin on 2022/12/22.
//

// 프로그래머스 입문 100문제
// https://school.programmers.co.kr/learn/challenges/beginner?order=acceptance_desc&page=2&languages=swift

import Foundation

//let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
//print(solution("10 Z 20 Z 1"))

// ------------------------------------------------------------------------------------------
// MARK: !!! 숫자 비교하기 (삼함연산자) !!!
// 정수 num1과 num2가 매개변수로 주어집니다. 두 수가 같으면 1 다르면 -1을 retrun하도록 solution 함수를 완성해주세요.


//func solution(_ num1:Int, _ num2:Int) -> Int {
//    return num1 == num2 ? 1 : -1
//}

// ------------------------------------------------------------------------------------------
// MARK: !!! 분수의 덧셈 (for문 -> filter 사용) !!!
// 첫 번째 분수의 분자와 분모를 뜻하는 denum1, num1, 두 번째 분수의 분자와 분모를 뜻하는 denum2, num2가 매개변수로 주어집니다. 두 분수를 더한 값을 기약 분수로 나타냈을 때 분자와 분모를 순서대로 담은 배열을 return 하도록 solution 함수를 완성해보세요.

//// 1차시도
//func solution(_ denum1:Int, _ num1:Int, _ denum2:Int, _ num2:Int) -> [Int] {
//    let num = num1 * num2
//    let denum = (denum1 * num2) + (denum2 * num1)
//    var maximum = 1
//
//    for i in 1...min(num,denum) {
//        if(num%i == 0 && denum%i == 0) {
//            maximum = i
//        }
//    }
//
//    // for문을 간략하게 나타내는 방법 = filter
//    let gcd = (1...min(denum, num)).filter { denum % $0 == 0 && num % $0 == 0 }.max()!
//
//    return [denum/maximum, num/maximum]
//}

//// 2차시도
//func solution(_ numer1:Int, _ denom1:Int, _ numer2:Int, _ denom2:Int) -> [Int] {
//    let number = (numer1*denom2)+(numer2*denom1)
//    let denom = denom1*denom2
//    let max = (1...min(number,denom)).filter {number % $0 == 0 && denom % $0 == 0}.max()!
//    return [number / max, denom / max]
//}

// ------------------------------------------------------------------------------------------
// MARK: !!! 배열 두배 만들기 (map 함수) !!!
// 정수 배열 numbers가 매개변수로 주어집니다. numbers의 각 원소에 두배한 원소를 가진 배열을 return하도록 solution 함수를 완성해주세요.

//func solution(_ numbers:[Int]) -> [Int] {
//    var answer: [Int] = []
//
//    for i in numbers {
//        answer.append(i * 2)
//    }
//
//    // 배열 순회하기
//    // numbers.map { $0 * 2 }
//
//    return answer
//}

// ------------------------------------------------------------------------------------------
// MARK: !!! 짝수의 합 (filter & reduce-int) !!!
// 정수 n이 주어질 때, n이하의 짝수를 모두 더한 값을 return 하도록 solution 함수를 작성해주세요.

//func solution(_ n:Int) -> Int {
//    return (1...n).filter { $0 % 2 == 0 }.reduce(0,+)
//}

// ------------------------------------------------------------------------------------------
// MARK: !!! 최빈값 구하기 (딕셔너리 정렬) !!!
// 정수 n이 주어질 때, n이하의 짝수를 모두 더한 값을 return 하도록 solution 함수를 작성해주세요.

//func solution(_ array:[Int]) -> Int {
//
//    var dic: [Int: Int] = [:]
//    array.forEach { dic[$0] = dic[$0] ?? 0 + 1 }
//
//    let sortedDic = dic.sorted(by: {$0.1 > $1.1})
//    if sortedDic.count == 1 { return sortedDic[0].key}
//
//    return sortedDic[0].value == sortedDic[1].value ? -1 : sortedDic[0].key
//}

// ------------------------------------------------------------------------------------------
// MARK: !!! 짝수는 싫어요 (filter) !!!
// 정수 n이 매개변수로 주어질 때, n 이하의 홀수가 오름차순으로 담긴 배열을 return하도록 solution 함수를 완성해주세요.

//func solution(_ n:Int) -> [Int] {
//    return (1...n).filter{$0 % 2 != 0}.sorted(by: <)
//}

// ------------------------------------------------------------------------------------------
// MARK: !!! 피자 나눠 먹기 (2) (filter) !!!
// 머쓱이네 피자가게는 피자를 여섯 조각으로 잘라 줍니다. 피자를 나눠먹을 사람의 수 n이 매개변수로 주어질 때, n명이 주문한 피자를 남기지 않고 모두 같은 수의 피자 조각을 먹어야 한다면 최소 몇 판을 시켜야 하는지를 return 하도록 solution 함수를 완성해보세요.

//func solution(_ n:Int) -> Int {
//    return (1...n).filter{ (6 * $0) % n == 0 }[0]
//    return (1...n).filter {($0 * 6) % n == 0}.min()!
//}

// ------------------------------------------------------------------------------------------
// MARK: !!! 배열의 평균값 (reduce-int) !!!
// 정수 배열 numbers가 매개변수로 주어집니다. numbers의 원소의 평균값을 return하도록 solution 함수를 완성해주세요.

//func solution(_ numbers:[Int]) -> Double {
//    return Double(numbers.reduce(0,+)) / Double(numbers.count)
//}

// ------------------------------------------------------------------------------------------
// MARK: !!! 문자 반복 출력하기 (String-repeat / map 함수) !!!
// 문자열 my_string과 정수 n이 매개변수로 주어질 때, my_string에 들어있는 각 문자를 n만큼 반복한 문자열을 return 하도록 solution 함수를 완성해보세요.

//func solution(_ my_string:String, _ n:Int) -> String {
//    return my_string.map{String(repeating: $0, count: n)}.joined()
//}

// ------------------------------------------------------------------------------------------
// MARK: !!! 점의 위치 구하기 (switch문) !!!
// 사분면은 한 평면을 x축과 y축을 기준으로 나눈 네 부분입니다. 사분면은 아래와 같이 1부터 4까지 번호를매깁니다.

//func solution(_ dot:[Int]) -> Int {
//    return dot[0] < 0 ? (dot[1] < 0 ? 3 : 2) : (dot[1] < 0 ? 4 : 1)
//
//    // switch문에 여러개의 조건 변수 넣기
//    switch (dot[0], dot[1]) {
//    case (0..., 0...): return 1
//    case (...0, 0...): return 2
//    case (...0, ...0): return 3
//    case (0..., ...0): return 4
//    default: return 0
//    }
//}

// ------------------------------------------------------------------------------------------
// MARK: !!! 삼각형의 완성조건 (1) (sorted / popLast) !!!
// 선분 세 개로 삼각형을 만들기 위해서는 다음과 같은 조건을 만족해야 합니다. 가장 긴 변의 길이는 다른 두 변의 길이의 합보다 작아야 합니다. 삼각형의 세 변의 길이가 담긴 배열 sides이 매개변수로 주어집니다. 세 변으로 삼각형을 만들 수 있다면 1, 만들 수 없다면 2를 return하도록 solution 함수를 완성해주세요.

//// 첫번째 풀이
//func solution(_ sides:[Int]) -> Int {
//    let sortedSides = sides.sorted(by: >)
//    return sortedSides[0] < sortedSides[1] + sortedSides[2] ? 1 : 2
//
//    var sides = sides.sorted()
//    let maxEdge = sides.popLast() ?? 0
//    let otherEdges = sides.reduce(0, +)
//    return maxEdge < otherEdges ? 1 : 2
//}

//// 두번째 풀이
//func solution(_ sides:[Int]) -> Int {
//    return sides.reduce(0,+) - (2 * sides.max()!) > 0 ? 1 : 2
//}

// ------------------------------------------------------------------------------------------
// MARK: !!! 제곱수 판별하기 (sqrt - 제곱근 구하는 함수) (pow - 제곱) !!!
// 어떤 자연수를 제곱했을 때 나오는 정수를 제곱수라고 합니다. 정수 n이 매개변수로 주어질 때, n이 제곱수라면 1을 아니라면 2를 return하도록 solution 함수를 완성해주세요.

//func solution(_ n:Int) -> Int {
////    return (2..<n).filter { $0 * $0 == n }.count >= 1 ? 1 : 2
//    return sqrt(Double(n)) == floor(sqrt(Double(n))) ? 1 : 2
//}

// ------------------------------------------------------------------------------------------
// MARK: !!! 자릿수 더하기 (character to int) !!!
// 정수 n이 매개변수로 주어질 때 n의 각 자리 숫자의 합을 return하도록 solution 함수를 완성해주세요.

//func solution(_ n:Int) -> Int {
//    var cnt = 0
//    for i in String(n) {
//        if let n = Int(String(i)) {
//            cnt += n
//        }
//    }
//    return cnt
//
//    return String(n).map{ Int(String($0))! }.reduce(0,+)
//}

// ------------------------------------------------------------------------------------------
// MARK: !!! 외계행성의 나이 (string-index) !!!
// 우주여행을 하던 머쓱이는 엔진 고장으로 PROGRAMMERS-962 행성에 불시착하게 됐습니다. 입국심사에서 나이를 말해야 하는데, PROGRAMMERS-962 행성에서는 나이를 알파벳으로 말하고 있습니다. a는 0, b는 1, c는 2, ..., j는 9입니다. 예를 들어 23살은 cd, 51살은 fb로 표현합니다. 나이 age가 매개변수로 주어질 때 PROGRAMMER-962식 나이를 return하도록 solution 함수를 완성해주세요.

//func solution(_ age:Int) -> String {
//    let english = "abcdefghijklmnopqrstuvwxyz"
//    return String(age).map { String(english[english.index(english.startIndex, offsetBy: Int(String($0))!)]) }.joined()
//}

// ------------------------------------------------------------------------------------------
// MARK: !!! 숨어있는 숫자의 덧셈 (1) (compactMap / isNumber) !!!
// 문자열 my_string이 매개변수로 주어집니다. my_string안의 모든 자연수들의 합을 return하도록 solution 함수를 완성해주세요.

//func solution(_ my_string:String) -> Int {
//    var cnt = 0
//    my_string.forEach {
//        if let number = Int(String($0)) {
//            cnt += number
//        }
//    }
//    return cnt
//
//    // filter로 숫자 검증 -> 숫자로 변환 -> 모두 더하기
//    return my_string.filter{$0.isNumber}.map{Int(String($0))!}.reduce(0, +)
//    // compactMap을 사용하여 변환 자체를 검증 -> 모두 더하기
//    return my_string.compactMap{Int(String($0))}.reduce(0,+)
//}

// ------------------------------------------------------------------------------------------
// MARK: !!! 모스부호 (1) (string-index, 배열-index) (딕셔너리) (reduce-string) !!!
// 머쓱이는 친구에게 모스부호를 이용한 편지를 받았습니다. 그냥은 읽을 수 없어 이를 해독하는 프로그램을 만들려고 합니다. 문자열 letter가 매개변수로 주어질 때, letter를 영어 소문자로 바꾼 문자열을 return 하도록 solution 함수를 완성해보세요.

//func solution(_ letter:String) -> String {
//
//    // 배열, string 이용
//    let morse = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
//    let alphabet = "abcdefghijklmnopqrstuvwxyz"
//
//    return letter.components(separatedBy: " ").map {morse.firstIndex(of: $0)!}.map{String(alphabet[alphabet.index(alphabet.startIndex, offsetBy: $0)])}.joined()
//
//    // 딕셔너리 이용
//    let morse = [
//            ".-": "a", "-...": "b", "-.-.": "c", "-..": "d", ".": "e", "..-.": "f",
//            "--.": "g", "....": "h", "..": "i", ".---": "j", "-.-": "k", ".-..": "l",
//            "--": "m", "-.": "n", "---": "o", ".--.": "p", "--.-": "q", ".-.": "r",
//            "...": "s", "-": "t", "..-": "u", "...-": "v", ".--": "w", "-..-": "x",
//            "-.--": "y", "--..": "z"
//        ]
//
//    return letter.components(separatedBy: " ").map { morse[$0] ?? "" }.reduce("", +)
//    return letter.split(separator: " ").map {morses[String($0),default:""]}.joined()
//}

// ------------------------------------------------------------------------------------------
// MARK: !!! 구슬을 나누는 경우의 수 (reduce *) = (팩토리얼) !!!
// 머쓱이는 구슬을 친구들에게 나누어주려고 합니다. 구슬은 모두 다르게 생겼습니다. 머쓱이가 갖고 있는 구슬의 개수 balls와 친구들에게 나누어 줄 구슬 개수 share이 매개변수로 주어질 때, balls개의 구슬 중 share개의 구슬을 고르는 가능한 모든 경우의 수를 return 하는 solution 함수를 완성해주세요.

//func solution(_ balls:Int, _ share:Int) -> Int {
//    guard balls != share else { return 1 } // 분모가 0이 되는 경우 방지
//
//    func fac(_ n: Int) -> Double {
//        return Double((1...n).reduce(1.0){ Double($0) * Double($1) })
//    }
//
//    return Int(round(fac(balls) / fac(share) / fac(balls-share)))
//
//    // 이 식이 에러가 나는 이유 -> Double 형변환 때문이다... Double로 변환한 후 나누기 해줘야 된다.
//    return Int(round(((balls - share + 1)...balls).reduce(1,*) / (1...share).reduce(1,*))
//
//    let ball = Double(((balls - share + 1)...balls).reduce(1) { Double($0) * Double($1) })
//    let shares = Double((1...share).reduce(1) { Double($0) * Double($1) })
//    return Int(round( ball / shares ))
//}

// ------------------------------------------------------------------------------------------
// MARK: !!! 합성수 찾기 (filter 안에 filter) !!!
// 약수의 개수가 세 개 이상인 수를 합성수라고 합니다. 자연수 n이 매개변수로 주어질 때 n이하의 합성수의 개수를 return하도록 solution 함수를 완성해주세요.

//func solution(_ n:Int) -> Int {
//    var cnt = 0
//    for i in (1...n) {
//        if ((1...n).filter { i % $0 == 0 }.count > 2) {cnt += 1}
//    }
//    return cnt
//
//    // filter 안에 filter
//    return (1...n).filter { i in (1...i).filter { i % $0 == 0 }.count > 2 }.count
//}

// ------------------------------------------------------------------------------------------
// MARK: !!! 인덱스 바꾸기 (swapAt) (String to Array) !!!
// 문자열 my_string과 정수 num1, num2가 매개변수로 주어질 때, my_string에서 인덱스 num1과 인덱스 num2에 해당하는 문자를 바꾼 문자열을 return 하도록 solution 함수를 완성해보세요.

//func solution(_ my_string:String, _ num1:Int, _ num2:Int) -> String {
//    var array = ArraySlice(my_string)
//    array.swapAt(num1, num2) // 단독으로 써야된다
//    return array.map { String($0) }.joined()
//}

// ------------------------------------------------------------------------------------------
// MARK: !!! 배열 회전시키기 (배열 insert, remove, append) !!!
// 정수가 담긴 배열 numbers와 문자열 direction가 매개변수로 주어집니다. 배열 numbers의 원소를 direction방향으로 한 칸씩 회전시킨 배열을 return하도록 solution 함수를 완성해주세요.

//func solution(_ numbers:[Int], _ direction:String) -> [Int] {
//    var answer = numbers
//
//    if direction == "right" {
//        answer[0] = numbers[numbers.endIndex - 1]
//        (1...(answer.count-1)).forEach { answer[$0] = numbers[$0-1] }
//    } else {
//        answer[answer.endIndex - 1] = numbers[0]
//        (0...(answer.count-2)).forEach { answer[$0] = numbers[$0+1] }
//    }
//
//    // 한줄 풀이
//    direction == "right" ? answer.insert(answer.removeLast(), at: 0) : answer.append(answer.removeFirst())
//
//    return answer
//}

// ------------------------------------------------------------------------------------------
// MARK: !!! 옹알이 (replacingOccurrences) !!!
// 머쓱이는 태어난 지 6개월 된 조카를 돌보고 있습니다. 조카는 아직 "aya", "ye", "woo", "ma" 네 가지 발음을 최대 한 번씩 사용해 조합한(이어 붙인) 발음밖에 하지 못합니다. 문자열 배열 babbling이 매개변수로 주어질 때, 머쓱이의 조카가 발음할 수 있는 단어의 개수를 return하도록 solution 함수를 완성해주세요.

//func solution(_ babbling:[String]) -> Int {
//
//    let wordList = ["aya", "ye", "woo", "ma"]
//
//    return babbling.compactMap { word -> String in
//        var replacedWord = word
//
//        wordList.forEach {
//            replacedWord = replacedWord.replacingOccurrences(of: $0, with: "9")
//        }
//
//        return replacedWord
//    }.compactMap {Int($0)}.count
//}

// ------------------------------------------------------------------------------------------
// MARK: !!! 평행 (배열의 조합 - 모든 경우의 수) !!!
// 점 네 개의 좌표를 담은 이차원 배열  dots가 다음과 같이 매개변수로 주어집니다. [[x1, y1], [x2, y2], [x3, y3], [x4, y4]] 주어진 네 개의 점을 두 개씩 이었을 때, 두 직선이 평행이 되는 경우가 있으면 1을 없으면 0을 return 하도록 solution 함수를 완성해보세요.

//func solution(_ dots:[[Int]]) -> Int {
//    var aList: [Double] = []
//
//    for (index,dot) in dots.enumerated() {
//        for i in (index+1..<dots.count) {
//            let x = Double(dot.first! - dots[i].first!)
//            let y = Double(dot.last! - dots[i].last!)
//            aList.append(x/y)
//        }
//    }
//    return aList.count == Set(aList).count ? 0 : 1
//}

// ------------------------------------------------------------------------------------------
// MARK: !!! 겹치는 선분의 길이 (딕셔너리) !!!
// 선분 3개가 평행하게 놓여 있습니다. 세 선분의 시작과 끝 좌표가 [[start, end], [start, end], [start, end]] 형태로 들어있는 2차원 배열 lines가 매개변수로 주어질 때, 두 개 이상의 선분이 겹치는 부분의 길이를 return 하도록 solution 함수를 완성해보세요.

//func solution(_ lines:[[Int]]) -> Int {
//    // 중복도 모두 카운트하는 경우이다 !!
//    var cnt = 0
//    for (index, line) in lines.enumerated() {
//        for i in (index+1..<lines.count) {
//            var dots: [Int] = line + lines[i]
//            dots = dots.sorted(by: <)
//            let total = dots.last! - dots.first!
//            let alone = abs(line.first! - lines[i].first!) + abs(line.last! - lines[i].last!)
//            cnt += total - alone
//        }
//    }
//    return cnt
    
//    // 고차함수로 푼 풀이
//    var dictionary: [Int: Int] = [:]
//
//    lines.map { ($0[0]..<$0[1]).map { $0 } }.forEach { i in
//        i.forEach { dictionary.keys.contains($0) ? dictionary.updateValue(dictionary[$0]! + 1, forKey: $0) : dictionary.updateValue(1, forKey: $0) }
//    }
//    return dictionary.filter { $0.value > 1 }.count
//}

// ------------------------------------------------------------------------------------------
// MARK: !!! 안전지대 (2차원 배열) !!!
// 지뢰는 2차원 배열 board에 1로 표시되어 있고 board에는 지뢰가 매설 된 지역 1과, 지뢰가 없는 지역 0만 존재합니다. 지뢰가 매설된 지역의 지도 board가 매개변수로 주어질 때, 안전한 지역의 칸 수를 return하도록 solution 함수를 완성해주세요.

//func solution(_ board:[[Int]]) -> Int {
//    var score = board
//
//    for (rIndex,row) in board.enumerated() {
//        for (cIndex,column) in row.enumerated() {
//            if column == 1 {
//                (rIndex-1...rIndex+1).forEach { r in
//                    (cIndex-1...cIndex+1).forEach { c in
//                        if r >= 0 && c >= 0 && r < board.count && c < board.count {
//                            score[r][c] += 1
//                        }
//                    }
//                }
//            }
//        }
//    }
//    return score.flatMap {$0}.filter {$0 == 0}.count
//}

// ------------------------------------------------------------------------------------------
// MARK: !!! 유한소수 판별하기 (분수, 소인수분해, 약수) !!!
// 소수점 아래 숫자가 계속되지 않고 유한개인 소수를 유한소수라고 합니다. 분수를 소수로 고칠 때 유한소수로 나타낼 수 있는 분수인지 판별하려고 합니다. 유한소수가 되기 위한 분수의 조건은 다음과 같습니다. 기약분수로 나타내었을 때, 분모의 소인수가 2와 5만 존재해야 합니다. 두 정수 a와 b가 매개변수로 주어질 때, a/b가 유한소수이면 1을, 무한소수라면 2를 return하도록 solution 함수를 완성해주세요.

//func solution(_ a:Int, _ b:Int) -> Int {
//    // 1. 기약분수 나타내기
//    let fraction = b / (1...a).filter{a % $0 == 0 && b % $0 == 0}.max()!
//    // 2. 분모의 소인수 구하기
//    let divisionList = (1...fraction).filter {fraction % $0 == 0}
//    let canDivisionList = divisionList.filter {$0 % 2 == 0 || $0 % 5 == 0}
//
//    return divisionList.count - 1 == canDivisionList.count ? 1 : 2
//}

// ------------------------------------------------------------------------------------------
// MARK: !!! 특이한 정렬 (2차원 배열의 정렬, 우선순위정렬, 다중정렬, 튜플) !!!
// 정수 n을 기준으로 n과 가까운 수부터 정렬하려고 합니다. 이때 n으로부터의 거리가 같다면 더 큰 수를 앞에 오도록 배치합니다. 정수가 담긴 배열 numlist와 정수 n이 주어질 때 numlist의 원소를 n으로부터 가까운 순서대로 정렬한 배열을 return하도록 solution 함수를 완성해주세요.

//func solution(_ numlist:[Int], _ n:Int) -> [Int] {
//    return numlist.map {[abs(n-$0),$0]}.sorted{$0[1] > $1[1]}.sorted{$0[0] < $1[0]}.map{$0[1]}
//
//    // 간단풀이
//    return numlist.sorted(by: { (abs($0 - n), -$0) < (abs($1 - n), -$1) })
//}

// ------------------------------------------------------------------------------------------
// MARK: !!! 소인수분해 !!!
// 소인수분해란 어떤 수를 소수들의 곱으로 표현하는 것입니다. 예를 들어 12를 소인수 분해하면 2 * 2 * 3 으로 나타낼 수 있습니다. 따라서 12의 소인수는 2와 3입니다. 자연수 n이 매개변수로 주어질 때 n의 소인수를 오름차순으로 담은 배열을 return하도록 solution 함수를 완성해주세요.

//func solution(_ n:Int) -> [Int] {
//    var number = n
//    var division = 2
//    var numList: [Int] = []
//
//    while number != 1 {
//        if number % division == 0 {
//            numList.append(division)
//
//            while number % division == 0 {
//                number = number / division
//            }
//        }
//        division += 1
//    }
//
//    return numList
//}

// ------------------------------------------------------------------------------------------
// MARK: !!! 문자열 계산하기 !!!
// my_string은 "3 + 5"처럼 문자열로 된 수식입니다. 문자열 my_string이 매개변수로 주어질 때, 수식을 계산한 값을 return 하는 solution 함수를 완성해주세요.

//func solution(_ my_string:String) -> Int {
//
//    return my_string.components(separatedBy: " + ").map { number -> Int in
//            if number.count == 1 {
//                return Int(number)!
//            } else {
//                var numList = number.components(separatedBy: " - ").map{Int($0)!}
//                return numList[0] + numList[1...].reduce(0,-)
//            }
//        }.reduce(0,+)
//
//    return my_string.replacingOccurrences(of: "- ", with: "-")
//            .replacingOccurrences(of: "+", with: "")
//            .split(separator: " ")
//            .map { Int($0)! }
//            .reduce(0, +))
//
//    let changedForm = my_string.replacingOccurrences(of: " - ", with: " + -")
//    return changedForm.components(separatedBy: " + ").reduce(0) { $0 + Int($1)! }
//    return 0
//}

// ------------------------------------------------------------------------------------------
// MARK: !!! 컨트롤 제트 !!!
// 숫자와 "Z"가 공백으로 구분되어 담긴 문자열이 주어집니다. 문자열에 있는 숫자를 차례대로 더하려고 합니다. 이 때 "Z"가 나오면 바로 전에 더했던 숫자를 뺀다는 뜻입니다. 숫자와 "Z"로 이루어진 문자열 s가 주어질 때, 머쓱이가 구한 값을 return 하도록 solution 함수를 완성해보세요.

//func solution(_ s:String) -> Int {
//    var strArray = s.split(separator: " ")
//    while strArray.contains("Z") {
//        let zIndex = strArray.firstIndex(of: "Z")!
//        strArray.remove(at: zIndex)
//        strArray.remove(at: strArray.index(before: zIndex))
//    }
//    return strArray.map{Int($0)!}.reduce(0,+)
//
//    // 스택으로 풀기
//    var stack = [Int]()
//    for w in s.components(separatedBy: [" "]) {
//        if w == "Z" {
//            stack.popLast()
//        } else {
//            stack.append(Int(w)!)
//        }
//    }
//    return stack.reduce(0, +)
//}

// ------------------------------------------------------------------------------------------
// MARK: 숫자 짝꿍 (Set-intersection)
// 두 정수 X, Y의 임의의 자리에서 공통으로 나타나는 정수 k(0 ≤ k ≤ 9)들을 이용하여 만들 수 있는 가장 큰 정수를 두 수의 짝꿍이라 합니다(단, 공통으로 나타나는 정수 중 서로 짝지을 수 있는 숫자만 사용합니다). X, Y의 짝꿍이 존재하지 않으면, 짝꿍은 -1입니다. X, Y의 짝꿍이 0으로만 구성되어 있다면, 짝꿍은 0입니다.

//func solution(_ X:String, _ Y:String) -> String {
//    var xDic = [Character: Int]()
//    var yDic = [Character: Int]()
//    var resultDic = [Character: Int]()
//
//    X.forEach {xDic[$0, default: 0] += 1}
//    Y.forEach {yDic[$0, default: 0] += 1}
//
//    xDic.forEach {
//        let minValue = min(yDic[$0.0, default: 0], $0.1)
//        if minValue != 0 {resultDic[$0.0, default: 0] = min(yDic[$0.0, default: 0], $0.1)}
//    }
//    if (resultDic.isEmpty) {return "-1"}
//    else if (resultDic.count == 1 && resultDic.filter{$0.0 != "0"}.isEmpty) {return "0"}
//    else {
//        return resultDic.sorted {$0.0 > $1.0}.map{String(repeating: $0.0, count: $0.1)}.joined()
//    }
//}

//func solution(_ X:String, _ Y:String) -> String {
//    let arr1 = Array(X)
//    let arr2 = Array(Y)
//    let uniqueKey = Set(arr1).intersection(Set(arr2))
//
//    var answer = ""
//    for key in uniqueKey.sorted(by: >) {
//        answer += String(repeating: key, count: min(arr1.filter{$0 == key}.count, arr2.filter{$0 == key}.count))
//    }
//    return answer == "" ? "-1" : ((uniqueKey.count == 1 && uniqueKey.contains("0")) ? "0" : answer)
//}
