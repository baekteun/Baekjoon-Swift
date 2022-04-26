//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/26.
//

import Foundation
let input = readLine()!.split(separator: " ").map{Int($0)!}
var arr = [Int]()
for _ in 0..<input[1]{
    arr.append(Int(readLine()!)!)
}
arr.sort()
var (price, sum) = (0,0)
for i in 0..<input[1]{
    let m = Swift.min(input[1]-i, input[0])
    if sum < arr[i]*m{
        price = arr[i]
        sum = arr[i] * m
    }
}
print("\(price) \(sum)")
