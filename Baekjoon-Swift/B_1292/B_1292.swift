//
//  main.swift
//  Baekjoon-Swift
//
//  Created by baegteun on 2021/10/22.
//

import Foundation

var arr = Array(repeating: 0, count: 1002)
var count = 1
for i in 1...1000{
    for _ in 0..<i{
        if count == 1001{
            break
        }
        arr[count] = i
        count += 1
    }
   
}

var res = 0
let input = readLine()!.split(separator: " ").map{Int($0)!}
for i in input[0]...input[1]{
    res += arr[i]
}
print(res)
