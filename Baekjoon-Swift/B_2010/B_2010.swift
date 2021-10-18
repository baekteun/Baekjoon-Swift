//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/18.
//

import Foundation
let t = Int(readLine()!)!
var res = 0
for _ in 0..<t{
    res += Int(readLine()!)!
}
print(res-(t-1))
