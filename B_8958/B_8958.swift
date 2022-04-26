//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/24.
//

import Foundation

let t = Int(readLine()!)!

var res = 0
var plus = 0
for _ in 0..<t{
    res = 0
    plus = 0
    let input = readLine()!
    for i in input.map{String($0)} {
        if i == "O"{
            plus += 1
            res += plus
        }else{
            plus = 0
        }
    }
    print(res)
}
