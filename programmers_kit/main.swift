//
//  main.swift
//  programmers_kit
//
//  Created by najin on 2022/12/28.
//

// 프로그래머스 고득점 키트
// https://school.programmers.co.kr/learn/challenges?tab=algorithm_practice_kit

import Foundation

solution([["yellow_hat", "headgear"], ["blue_sunglasses", "eyewear"], ["green_turban", "headgear"]])
// ------------------------------------------------------------------------------------------
// MARK: - 해시
// Key-value 쌍으로 데이터를 빠르게 찾아보세요.

// MARK: 위장 (LV.2)
// 스파이들은 매일 다른 옷을 조합하여 입어 자신을 위장합니다. 예를 들어 스파이가 가진 옷이 아래와 같고 오늘 스파이가 동그란 안경, 긴 코트, 파란색 티셔츠를 입었다면 다음날은 청바지를 추가로 입거나 동그란 안경 대신 검정 선글라스를 착용하거나 해야 합니다. 스파이가 가진 의상들이 담긴 2차원 배열 clothes가 주어질 때 서로 다른 옷의 조합의 수를 return 하도록 solution 함수를 작성해주세요.

func solution(_ clothes:[[String]]) -> Int {
    
    // 옷의 종류만 세트로 만들기
    let types = clothes.compactMap {$0[1]}
    let typeSet = Set(types) // 중복 제거
    let typeArray = Array(typeSet)
    
    typeArray.map { type in clothes.filter { $0[1] == type } }
//    let categories = Array(typeSet)
//    print(categories)
    
    return 0
}

// MARK: 베스트앨범 (LV.3)
