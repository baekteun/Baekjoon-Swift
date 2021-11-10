//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/11/10.
//


readLine()
var A = readLine()!.split(separator: " ").map{Int($0)!}.sorted(by: >)
var B = readLine()!.split(separator: " ").map{Int($0)!}.sorted(by: <)
var res = 0
while !A.isEmpty{res += A.removeFirst() * B.removeFirst()}
print(res)
