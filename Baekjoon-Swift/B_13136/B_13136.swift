//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/10.
//

import Foundation
let input = readLine()!.split(separator: " ")
let c1 = Int(ceil(Double(input[0])!/Double(input[2])!))
let c2 = Int(ceil(Double(input[1])!/Double(input[2])!))
print(c1*c2)
