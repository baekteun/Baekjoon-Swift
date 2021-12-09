//
//  main.swift
//  Baekjoon-Swift
//
//  Created by 최형우 on 2021/12/09.
//

var input = Int(readLine()!)!
var count = 0
if input != 0{
    while input > 0{
        input /= 5
        count += input
    }
    print(count)
}else { print (0) }
