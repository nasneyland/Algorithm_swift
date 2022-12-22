//
//  main.swift
//  programmers 오답노트
//
//  Created by najin on 2022/12/22.
//

import Foundation

//MARK: - 입출력

print(solution(4))

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

func solution(_ n:Int) -> Int {
    return (1...n).filter { $0 % 2 == 0 }.reduce(0,+)
}

//MARK: - 중급


//MARK: - 고급
