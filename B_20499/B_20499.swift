//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/11/23.
//

let input = readLine()!.split(separator: "/").map{Int($0)!}
print((input[0]+input[2])<input[1] || input[1] == 0 ? "hasu" : "gosu")
