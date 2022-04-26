//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/11/28.
//

let input = readLine()!.split(separator: " ").map{Int($0)!}
var pack = Int.max
var one = Int.max
(0..<input[1]).forEach{ _ in
    let `in` = readLine()!.split(separator: " ").map{Int($0)!}
    if pack > `in`[0] { pack = `in`[0]}
    if one > `in`[1] { one = `in`[1]}
}
let a = input[0] / 6
let b = input[0] % 6

if b * one >= pack{ print(pack*a + pack)}
else if one*6 < pack{ print(input[0]*one)}
else { print(a*pack + b*one)}
