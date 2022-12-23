//
//  main.swift
//  programmers 오답노트
//
//  Created by najin on 2022/12/22.
//

import Foundation

//MARK: - 입출력

print(solution([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]))

//MARK: - 초급

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
//정수 n이 매개변수로 주어질 때, n 이하의 홀수가 오름차순으로 담긴 배열을 return하도록 solution 함수를 완성해주세요.

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
//정수 배열 numbers가 매개변수로 주어집니다. numbers의 원소의 평균값을 return하도록 solution 함수를 완성해주세요.

func solution(_ numbers:[Int]) -> Double {
    return Double(numbers.reduce(0,+)) / Double(numbers.count)
}

//MARK: - 중급


//MARK: - 고급
