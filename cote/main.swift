//
//  main.swift
//  cote
//
//  Created by najin on 2022/12/22.
//

import Foundation

// ------------------------------------------------------------------------------------------
// MARK: String

let str = "abcdefghijklmnopqrstuvwxyz"

print(str.firstIndex(of: "e")!.utf16Offset(in: str))
print(str[str.index(str.startIndex, offsetBy: 8)])
let start = str.index(str.startIndex, offsetBy: 4)
let end = str.index(str.startIndex, offsetBy: 8)
print(str[start...end])
print(str[str.startIndex])
print(str[str.startIndex])
print(str[str.index(after: str.startIndex)])
print(str[str.index(str.startIndex, offsetBy: str.count - 1)])
print(str[str.index(before: str.endIndex)])
print(str.contains("efg"))
let arr = str.map{String($0)}
print(arr)
print(arr.reduce("", +))
print(arr.joined())
