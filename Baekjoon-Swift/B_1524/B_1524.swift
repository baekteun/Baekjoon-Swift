//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/11/08.
//

let t = Int(readLine()!)!

for _ in 0..<t{
    readLine()
    readLine()
    let s = readLine()!.split(separator: " ").map{Int($0)!}.max()!
    let b = readLine()!.split(separator: " ").map{Int($0)!}.max()!
    print(s<b ? "B":"S")
}
