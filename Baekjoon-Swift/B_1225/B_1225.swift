//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/15.
//

import Foundation

let input = readLine()!.split(separator: " ").map{String($0)}


let i = input[0].compactMap{$0.wholeNumberValue}.reduce(0) { $0 + $1}
let k = input[1].compactMap{$0.wholeNumberValue}.reduce(0) { $0 + $1}
print(i*k)


