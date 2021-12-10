//
//  main.swift
//  Baekjoon-Swift
//
//  Created by 최형우 on 2021/12/11.
//

var N = Int(readLine()!)!
var count = 1
var res = 0
while N != 0{
    if N < count{
        count = 1
    }
    N -= count
    res += 1
    count += 1
}
print(res)
