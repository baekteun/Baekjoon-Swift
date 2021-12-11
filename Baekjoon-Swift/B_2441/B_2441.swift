//
//  main.swift
//  Baekjoon-Swift
//
//  Created by 최형우 on 2021/12/12.
//

let n = Int(readLine()!)!
for i in stride(from: n, to: 0, by: -1){print("\(String(repeating: " ", count: n-i))\(String(repeating: "*", count: i))")}
