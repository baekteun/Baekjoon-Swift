//
//  B_15726.swift
//  Baekjoon-Swift
//
//  Created by 최형우 on 2021/12/22.
//

import Foundation

let input = readLine()!.split(separator: " ").map{Double($0)!}
let case1 = input[0]*input[1]/input[2]
let case2 = input[0]/input[1]*input[2]
print(max(Int(floor(case1)), Int(floor(case2))))
