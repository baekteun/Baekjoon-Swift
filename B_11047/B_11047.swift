//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/11.
//

import Foundation
let input = readLine()!.split(separator: " ").map{Int($0)!}
var k = input[0]
var n = input[1]
var arr: [Int] = []
for i in 0..<k{
    arr.append(Int(readLine()!)!)
}
var count = 0
arr.reverse()
for i in arr{
    if i <= n{
        count += (n/i)
        n %= i
    }
}
print(count)
