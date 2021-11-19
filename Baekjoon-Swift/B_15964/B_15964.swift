//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/11/19.
//

let input = readLine()!.split(separator: " ").map{Int($0)!}
print((input.reduce(0, +) * (input[0]-input[1])))
