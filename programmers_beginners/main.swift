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
print(solution(976))
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
// MARK:  짝수의 합 (filter & reduce)
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
// MARK: 배열의 평균값 (reduce)
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
// MARK: 제곱수 판별하기 (sqrt - 제곱근 구하는 함수)
// 어떤 자연수를 제곱했을 때 나오는 정수를 제곱수라고 합니다. 정수 n이 매개변수로 주어질 때, n이 제곱수라면 1을 아니라면 2를 return하도록 solution 함수를 완성해주세요.

//func solution(_ n:Int) -> Int {
////    return (2..<n).filter { $0 * $0 == n }.count >= 1 ? 1 : 2
//
//    // sqrt 함수 사용하기 - Double 형만 허용한다.
//    return sqrt(Double(n)) == floor(sqrt(Double(n))) ? 1 : 2
//}
