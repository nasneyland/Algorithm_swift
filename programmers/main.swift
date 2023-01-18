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
print(solution("olleh", "hello"))

// ------------------------------------------------------------------------------------------
// MARK:  숫자 비교하기 (삼함연산자)
// 정수 num1과 num2가 매개변수로 주어집니다. 두 수가 같으면 1 다르면 -1을 retrun하도록 solution 함수를 완성해주세요.


//func solution(_ num1:Int, _ num2:Int) -> Int {
//    return num1 == num2 ? 1 : -1
//}

// ------------------------------------------------------------------------------------------
// MARK:  분수의 덧셈 (for문 -> filter 사용)
// 첫 번째 분수의 분자와 분모를 뜻하는 denum1, num1, 두 번째 분수의 분자와 분모를 뜻하는 denum2, num2가 매개변수로 주어집니다. 두 분수를 더한 값을 기약 분수로 나타냈을 때 분자와 분모를 순서대로 담은 배열을 return 하도록 solution 함수를 완성해보세요.

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

// ------------------------------------------------------------------------------------------
// MARK:  배열 두배 만들기 (map 함수)
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
// MARK:  짝수의 합 (filter & reduce-int)
// 정수 n이 주어질 때, n이하의 짝수를 모두 더한 값을 return 하도록 solution 함수를 작성해주세요.

//func solution(_ n:Int) -> Int {
//    return (1...n).filter { $0 % 2 == 0 }.reduce(0,+)
//}

// ------------------------------------------------------------------------------------------
// MARK:  최빈값 구하기 (딕셔너리 정렬)
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
// MARK: 짝수는 싫어요 (filter)
// 정수 n이 매개변수로 주어질 때, n 이하의 홀수가 오름차순으로 담긴 배열을 return하도록 solution 함수를 완성해주세요.

//func solution(_ n:Int) -> [Int] {
////    var answer: [Int] = []
////    (1...n).forEach{ if $0 % 2 != 0 { answer.append($0) } }
//
//    // filter로 배열 바로 필터링하기
//    return (1...n).filter { $0 % 2 != 0 }
//}

// ------------------------------------------------------------------------------------------
// MARK: 피자 나눠 먹기 (2) (filter)
// 머쓱이네 피자가게는 피자를 여섯 조각으로 잘라 줍니다. 피자를 나눠먹을 사람의 수 n이 매개변수로 주어질 때, n명이 주문한 피자를 남기지 않고 모두 같은 수의 피자 조각을 먹어야 한다면 최소 몇 판을 시켜야 하는지를 return 하도록 solution 함수를 완성해보세요.

//func solution(_ n:Int) -> Int {
//    return (1...n).filter{ (6 * $0) % n == 0 }[0]
//}

// ------------------------------------------------------------------------------------------
// MARK: 배열의 평균값 (reduce-int)
// 정수 배열 numbers가 매개변수로 주어집니다. numbers의 원소의 평균값을 return하도록 solution 함수를 완성해주세요.

//func solution(_ numbers:[Int]) -> Double {
//    return Double(numbers.reduce(0,+)) / Double(numbers.count)
//}

// ------------------------------------------------------------------------------------------
// MARK: 문자 반복 출력하기 (String-repeat / map 함수)
// 문자열 my_string과 정수 n이 매개변수로 주어질 때, my_string에 들어있는 각 문자를 n만큼 반복한 문자열을 return 하도록 solution 함수를 완성해보세요.

//func solution(_ my_string:String, _ n:Int) -> String {
//    return my_string.map{String(repeating: $0, count: n)}.joined()
//}

// ------------------------------------------------------------------------------------------
// MARK: 점의 위치 구하기 (switch문)
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
// MARK: 삼각형의 완성조건 (1) (sorted / popLast)
// 선분 세 개로 삼각형을 만들기 위해서는 다음과 같은 조건을 만족해야 합니다. 가장 긴 변의 길이는 다른 두 변의 길이의 합보다 작아야 합니다. 삼각형의 세 변의 길이가 담긴 배열 sides이 매개변수로 주어집니다. 세 변으로 삼각형을 만들 수 있다면 1, 만들 수 없다면 2를 return하도록 solution 함수를 완성해주세요.

//func solution(_ sides:[Int]) -> Int {
//    let sortedSides = sides.sorted(by: >)
//    return sortedSides[0] < sortedSides[1] + sortedSides[2] ? 1 : 2
//
//    var sides = sides.sorted()
//    let maxEdge = sides.popLast() ?? 0
//    let otherEdges = sides.reduce(0, +)
//    return maxEdge < otherEdges ? 1 : 2
//}

// ------------------------------------------------------------------------------------------
// MARK: 제곱수 판별하기 (sqrt - 제곱근 구하는 함수) (pow - 제곱)
// 어떤 자연수를 제곱했을 때 나오는 정수를 제곱수라고 합니다. 정수 n이 매개변수로 주어질 때, n이 제곱수라면 1을 아니라면 2를 return하도록 solution 함수를 완성해주세요.

//func solution(_ n:Int) -> Int {
////    return (2..<n).filter { $0 * $0 == n }.count >= 1 ? 1 : 2
//
//    // sqrt 함수 사용하기 - Double 형만 허용한다.
//    return sqrt(Double(n)) == floor(sqrt(Double(n))) ? 1 : 2
//}

// ------------------------------------------------------------------------------------------
// MARK: 자릿수 더하기 (character to int)
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
// MARK: 외계행성의 나이 (string-index)
// 우주여행을 하던 머쓱이는 엔진 고장으로 PROGRAMMERS-962 행성에 불시착하게 됐습니다. 입국심사에서 나이를 말해야 하는데, PROGRAMMERS-962 행성에서는 나이를 알파벳으로 말하고 있습니다. a는 0, b는 1, c는 2, ..., j는 9입니다. 예를 들어 23살은 cd, 51살은 fb로 표현합니다. 나이 age가 매개변수로 주어질 때 PROGRAMMER-962식 나이를 return하도록 solution 함수를 완성해주세요.

//func solution(_ age:Int) -> String {
//    let english = "abcdefghijklmnopqrstuvwxyz"
//    return String(age).map { String(english[english.index(english.startIndex, offsetBy: Int(String($0))!)]) }.joined()
//}

// ------------------------------------------------------------------------------------------
// MARK: 숨어있는 숫자의 덧셈 (1) (compactMap / isNumber)
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
// MARK: 모스부호 (1) (string-index, 배열-index) (딕셔너리) (reduce-string)
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
//}

// ------------------------------------------------------------------------------------------
// MARK: 구슬을 나누는 경우의 수 (reduce *) = (팩토리얼)
// 머쓱이는 구슬을 친구들에게 나누어주려고 합니다. 구슬은 모두 다르게 생겼습니다. 머쓱이가 갖고 있는 구슬의 개수 balls와 친구들에게 나누어 줄 구슬 개수 share이 매개변수로 주어질 때, balls개의 구슬 중 share개의 구슬을 고르는 가능한 모든 경우의 수를 return 하는 solution 함수를 완성해주세요.

//func solution(_ balls:Int, _ share:Int) -> Int {
//    guard balls != share else { return 1 } // 분모가 0이 되는 경우 방지
//
//    func fac(_ n: Int) -> Double {
//        return Double((1...n).reduce(1.0){ Double($0) * Double($1) })
//    }
//
//    return Int(round(fac(balls) / fac(share) / fac(balls-share)))
//}

// ------------------------------------------------------------------------------------------
// MARK: 합성수 찾기 (filter 안에 filter)
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
// MARK: 인덱스 바꾸기 (swapAt) (String to Array)
// 문자열 my_string과 정수 num1, num2가 매개변수로 주어질 때, my_string에서 인덱스 num1과 인덱스 num2에 해당하는 문자를 바꾼 문자열을 return 하도록 solution 함수를 완성해보세요.

//func solution(_ my_string:String, _ num1:Int, _ num2:Int) -> String {
//    var array = ArraySlice(my_string) // String To Array
//    array.swapAt(num1, num2)
//    return array.map { String($0) }.joined()
//}

// ------------------------------------------------------------------------------------------
// MARK: 배열 회전시키기 (배열 insert, remove, append)
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
// MARK: !!! 평행 !!!
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
