//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/11/27.
//

let input = readLine()!.split(separator: " ").map{Int($0)!}
print((((input[0]-1)/input[1])*input[2])*input[3])
