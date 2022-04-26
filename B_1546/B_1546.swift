//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/23.
//

readLine()
let input = readLine()!.split(separator: " ").map{Int($0)!}
let max = Double(input.max()!)
let convert = input.map{Double($0) / max * 100}
print(convert.reduce(0, +)/Double(convert.count))
