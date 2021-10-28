//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/28.
//


let input = readLine()!.split(separator: " ").map{Int($0)!}
var a = input[0]
var res = 0.0
for _ in 0..<input[2]{
    a %= input[1]
    a *= 10
    res = Double(a) / Double(input[1])
}
print("\(Int(res))")
