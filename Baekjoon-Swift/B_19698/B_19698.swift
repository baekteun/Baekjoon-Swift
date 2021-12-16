//
//  main.swift
//  Baekjoon-Swift
//
//  Created by 최형우 on 2021/12/16.
//

let input = readLine()!.split(separator: " ").map {Int(String($0))!}
let o = input[1] / input[3]
let t = input[2] / input[3]
print(min(input[0], o*t))
