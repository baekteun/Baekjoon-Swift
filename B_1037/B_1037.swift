//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/19.
//

import Foundation

let t = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{Int($0)!}
arr.sort()
print(arr[0]*arr[t-1])
