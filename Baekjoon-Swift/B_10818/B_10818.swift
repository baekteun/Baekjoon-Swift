//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/20.
//


_ = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
print(arr.min()!, arr.max()!)
